#include importance_sampler.src

rndseed 34532;

// Number of iterations 
keep_draws = 10000;
 
// Call the function
struct importanceOut iOut;
iOut = importanceSamplerTdist(keep_draws);
 
 
