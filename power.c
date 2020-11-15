#include "myMath.h"
#define e 2.7182818285;
double Exponent(int x){
    double res =1;

    if(x<0)
    {
      for (int i = 0; i < -x; i++)
      {
        res = res*e;
      }
      return 1/res;
    }

    for (int i = 0; i<x; i++)
    {
       res = res*e;
    }
    return res;
}


double Power(double x , int y){
    double res = 1;
    if(y<0){
      for (int i = 0; i < -y; i++)
      {
          res = res*x;
      }
      res = 1/res;
      return res;
    }

    for (int i = 0; i < y; i++)
    {
        res = res*x;
    }
    return res;
}