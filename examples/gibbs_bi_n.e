#include gibbs_sampler.src
#include sampler.sdf

/*
** Gibbs Sampler Specifications
** Known correlation parameter
*/
rho = 0.6;      
 
// Burn-in for the Gibbs sampler
burn_in = 1000;        
 
// Draws to keep from sampler
keep_draws = 10000;  

// Set random seed for repeatable random numbers
rndseed 45352;

struct gibbsBiNOut gOut;
gOut = gibbsSamplerBiN(keep_draws, rho, burn_in);

