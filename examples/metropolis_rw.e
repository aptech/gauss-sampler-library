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
** Standard deviation for the 
** RW M-H algorithm
*/
sd_rw = 4;

// Set initial theta
theta_init = 1;

// Set random seed for repeatable random numbers
rndseed 10385;

struct metropolisOut mOut;
mOut = metropolisHastingsRW(keep_draws, burn_in, sd_rw, theta_init);

