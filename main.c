#include <stdio.h>
#include "power.c"
#include "basicMath.c"

int main(){
  double var;
  printf("please enter a number\n");
  scanf("%lf",&var );
  
  double eToThex = Exponent(var);
  double xToThe3 = Power(var, 3);
  float fx1Add = add(eToThex, xToThe3);
  float fx1 = sub(fx1Add, 2);

  double x3 = mul(3, var);
  double x2ToThe2 = mul(2, (int)(Power(var, 2)));
  float fx2 = add(x3, x2ToThe2);

  double tmp = (Power(var, 3));
  double x4ToThe3 = mul(4, tmp);
  double mulDiv5 = div(x4ToThe3, 5); 
  double x2 = mul(2, var);
  float fx3 = sub(mulDiv5, x2);

  printf("The value of f(x) = e^x + x^3 − 2 at x = %f is %0.4f\n", var, fx1);
  printf("The value of f(x) = 3x + 2X^2 at x = %f is %0.4f\n", var, fx2);
  printf("The value of f(x) = (4x^3)/5 -2x at x = %f is %0.4f\n", var, fx3);
  return 0;
}