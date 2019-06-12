new;
library samplerlib;

rndseed 34532;

// Number of iterations 
keep_draws = 50000;
 
// Call the function
struct importanceOut iOut;
iOut = importanceSamplerTdist(keep_draws);

 

