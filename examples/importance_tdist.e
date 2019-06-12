new;
library samplerlib;

rndseed 34532;

// Number of iterations 
keep_draws = 50000;
 
// Call the function
struct importanceOut iOut;
iOut = importanceSamplerTdist(keep_draws);
 
 plotScatter(seqa(1, 1, rows(iOut.w)),iOut.w.*iOut.theta_draw_is);
 

