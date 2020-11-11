#include "myMath.h"

double Exponent(int x){
    double e = 2.7182818285;
    double res =1;
    int i;
    for (i = 0; i<x; i++)
    {
       res = res*e;
    }
    return res;
    
}


double Power(double x , int y)
{
    double res = 1;
    int i;
    for (i = 0; i<y; i++)
    {
        res = res*x;
    }
    return res; 
}
