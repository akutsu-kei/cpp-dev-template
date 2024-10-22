#include <iostream>
#include <opencv2/opencv.hpp>
#include "src/add.h"

int main()
{
    std::cout << "Hello, World!" << std::endl;

    std::cout << "1 + 2 = " << add(1, 2) << std::endl;

    std::cout << "OpenCV version: " << CV_VERSION << std::endl;

    return 0;
}