/*
 *  File ergm/src/SAN.h
 *  Part of the statnet package, http://statnetproject.org
 *
 *  This software is distributed under the GPL-3 license.  It is free,
 *  open source, and has the attribution requirements (GPL Section 7) in
 *    http://statnetproject.org/attribution
 *
 *  Copyright 2010 the statnet development team
 */
#ifndef SAN_H
#define SAN_H

#include "wtedgetree.h"
#include "changestats.h"
#include "model.h"

void SAN_wrapper (int *dnumnets, int *nedges,
		  int *heads, int *tails,
		  int *maxpossibleedges,
		  int *dn, int *dflag, int *bipartite, 
		  int *nterms, char **funnames,
		  char **sonames, 
		  char **MHproposaltype, char **MHproposalpackage,
		  double *inputs, double *theta0, double *tau, int *samplesize, 
		  double *sample, int *burnin, int *interval,  
		  int *newnetworkheads, 
		  int *newnetworktails, 
		  double *invcov,
		  int *fVerbose, 
		  int *attribs, int *maxout, int *maxin, int *minout,
		  int *minin, int *condAllDegExact, int *attriblength, 
		  int *maxedges);

void SANSample (char *MHproposaltype, char *MHproposalpackage,
		double *theta, double *invcov, double *tau, double *networkstatistics, 
		long int samplesize, long int burnin, 
		long int interval, int hammingterm, int fVerbose,
		Network *nwp, Model *m, DegreeBound *bd);
void SANMetropolisHastings (MHproposal *MHp,
			 double *theta, double *invcov, double *tau, double *statistics, 
			 long int nsteps, long int *staken,
			 int hammingterm, int fVerbose,
			 Network *nwp, Model *m, DegreeBound *bd);
#endif
