// #include <stdio.h> // ONLY for my debugging

// one dimensional Gradient Descent
float GD(float (*f)(float), float theta, int iters, float alpha, float delta){
  // f is the function to optimize on
  // theta is the inital theta point to try
  // iters is the number of iterations to run
  // alpha is the "learning rate"
  // delta is the pseudo infinitesimal as used in gradient estimation
  // NOTE there are substantial issues with this algorithm practicaly.
  // DO NOT USE generally.

  float lower;
  float upper;
  float grad;
  float diff;
  // go through iterations
  for (int i=0; i<iters; i++){
    // estimate gradient using pseudo infintesimal
    upper = (1.0F + delta) * theta;
    lower = (1.0F - delta) * theta;
    diff = upper - lower;
    upper = f(upper);
    lower = f(lower);
    grad = (upper - lower); // this line is problematic, but useful?
    // printf("%f\n", grad);
    // calculate new theta
    theta -= alpha*grad;
  }
  return theta;
}

// minimal power function
float pow(float x, int a){
  float res = 1;
  for (int i=0; i<a; i++){
    res *= x;
  }
  return res;
}

// function, f(x) = (x-5)^2+7
float f(float x){
  return pow(x-5.0F, 2.0F)+7.0F;
}

int main(){
  float theta = GD(f, 1.0F, 10000000, 0.5F, 0.01F);
   // printf("%f\n", theta);
  return 0;
}
