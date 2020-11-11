#include <stdio.h>
#include "power.c"

int main(){
  double var;
  printf("please enter a number\n");
  scanf("%lf",&var );
  
  float eToThex = Exponent(var);
  float xToThe3 = Power(var, 3);
  float fx1 = eToThex + xToThe3 - 2;

  float x3 = 3*var;
  float x2ToThe2 = 2*(Power(var, 2));
  float fx2 = x3 + x2ToThe2;

  float x4ToThe3Div5 = (4*(Power(var,3)))/5;
  float x2 = 2*var;
  float fx3 = x4ToThe3Div5 - x2;

  printf("The value of f(x) = e^x + x^3 − 2 at x = %f is %f\n", var, fx1);
  printf("The value of f(x) = 3x + 2X^2 at x = %f is %f\n", var, fx2);
  printf("The value of f(x) = (4x^3)/5 -2x at x = %f is %f\n", var, fx3);
  return 0;
}