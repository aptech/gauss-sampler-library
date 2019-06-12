new;
library samplerlib;

/*
** Set up Metropolis Hastings chain
** Discard r0 burnin replications
*/
burn_in = 100;
 
// Specify the total number of replications
keep_draws = 10000;
 
/*
** Standard deviation for the increment 
** in the independent chain M-H algorithm
*/
sd_ic = 6;
 
// Set initial theta
theta_init = 1;

// Set random seed for repeatable random numbers
rndseed 97980;

struct metropolisOut mOut;
mOut = metropolisHastingsIC(keep_draws, burn_in, sd_ic, theta_init);

plotScatter(seqa(1,1, rows(mOut.theta_draw_mh)), mOut.theta_draw_mh);

