#include <algorithm>
#include <iostream>
#include <fstream>
#include <vector>
#include "png.h"
#include "rgbapixel.h"
#include <queue>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
using namespace std;
void printColor(std::vector<RGBAPixel> colors)
{
  printf("total color : %d", int(colors.size()));
  for (size_t i = 0; i < colors.size(); i++)
  {
    printf("Color %d is (%d,%d,%d)\n", int((i+1)), colors[i].red, colors[i].green, colors[i].blue);
  }
}

void getColors(PNG input, std::vector <RGBAPixel> colors)
{
  size_t w = input.width();
  size_t h = input.height();
  // Read colors
  bool exist = false;
  for (size_t x = 0; x < w; x++)
  {
    for(size_t y = 0; y < h; y++)
    {
      RGBAPixel * temp = input(x, y);
      if (exist)
      {
        for (size_t i = 0; i < colors.size(); i++)
        {
          if ((temp->red == colors[i].red) && (temp->blue == colors[i].blue) && (temp->green == colors[i].green))
          {
            exist = true;
            break;
          }
          else
            exist = false;
        }
      }
      if (exist == false)
      {
        colors.push_back(*temp);
      }
      exist = true;
    }
  }
  printColor(colors);
}
void generateTable(std::queue <std::string> &bitmap, std::string &row, PNG input, std::vector<RGBAPixel> colors)
{
  size_t w = input.width();
  size_t h = input.height();
    for (size_t y = 0; y < h; y++)
  {
    if(!row.empty())
      row.clear();
    for (size_t x = 0; x < w; x++)
    {
      for (size_t i = 0; i < colors.size(); i++)
      {
        printf("%d", int(i));
        if (input(x,y)->red == colors[i].red && input(x,y)->blue == colors[i].blue && input(x,y)->green == colors[i].green)
        {
          row.append(to_string(int(i)));
          break;
        }
        
      }
    }
    row.push_back('\n');
    bitmap.push(row);
  }
}

std::string dec2hex(int dec)
{
  switch (dec){
    case (10):
      return "a";
    case (11):
      return "b";
    case (12):
      return "c";
    case (13):
      return "d";
    case (14):
      return "e";
    case (15):
      return "f";
    default:
      return to_string(dec);
  }

}

int main()
{
  int k = 20; //trimming
  int check = 1;
    while (check == 1){
    std::string loc;
    cout << "PNG name:";
    cin >> loc;
    PNG input = PNG (loc + ".png");
    std::vector<RGBAPixel> colors;
    size_t w = input.width();
    size_t h = input.height();
    int data_width = 4 * w;
    //int addr_width = int(log2(int(h))) + 1;
    // Read colors
    bool exist = false;
    for (size_t x = 0; x < w; x++)
    {
      for(size_t y = 0; y < h; y++)
      {
        RGBAPixel * temp = input(x, y);
        if (exist)
        {
          for (size_t i = 0; i < colors.size(); i++)
          {
            if (abs(temp->red - colors[i].red) <= k && abs(temp->blue - colors[i].blue) <= k && abs(temp->green - colors[i].green) <= k)
            {
              exist = true;
              break;
            }
            else
              exist = false;
          }
        }
        if (exist == false)
        {
          colors.push_back(*temp);
        }
        exist = true;
      }
    }
    printColor(colors);
    // Transform PNG into text file of sprites
    std::queue <std::string> bitmap;
    std::string row;
    for (size_t y = 0; y < input.height(); y++)
    {
      if(!row.empty())
        row.clear();
      for (size_t x = 0; x < input.width(); x++)
      {
        for (size_t i = 0; i < colors.size(); i++)
        {
          if (input(x,y)->red == colors[i].red && input(x,y)->blue == colors[i].blue && input(x,y)->green == colors[i].green)
          {
            row.append(dec2hex(int(i)));
            break;
          }
        }
          
      }
      row.append(",\n");
      bitmap.push(row);
    }

   
    ofstream fo;
    fo.open(loc+".txt");

    fo << ("Width: " + to_string(input.width()) + "\n" + "Height: " + to_string(input.height()) + "\n");
    fo << ("Total colors: " + to_string(int(colors.size())) + "\n");
    fo << ("Index and RGB values are: \n");
    for (size_t i = 0; i < colors.size(); i++)
    {
      fo << (to_string(int(i)) + ":" + to_string(colors[i].red) + " " + to_string(colors[i].green) + " " + to_string(colors[i].blue) + "\n");
    }
   
    while(!bitmap.empty())
    {
      //std::cout<< ' ' << bitmap.front() << '\n';
      fo << ("    " + to_string(data_width) + "\'" + "h" + bitmap.front());
      bitmap.pop();
    }
    fo.close();
    cout << "Do you have another file? 1/0\n";
    cin >> check;
  }
}
  
  
