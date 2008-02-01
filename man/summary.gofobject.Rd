%  File ergm/man/summary.gofobject.Rd
%  Part of the statnet package, http://statnetproject.org
%  This software is distributed under the GPL-3 license.  It is free,
%  open source, and has the attribution requirements (GPL Section 7) in
%    http://statnetproject.org/attribution
%
% Copyright 2003 Mark S. Handcock, University of Washington
%                David R. Hunter, Penn State University
%                Carter T. Butts, University of California - Irvine
%                Steven M. Goodreau, University of Washington
%                Martina Morris, University of Washington
% Copyright 2007 The statnet Development Team
\name{summary.gofobject}
\alias{summary.gofobject}
\alias{print.gofobject}
\title{Summaries the Goodness-of-Fit Diagnostics on a Exponential Family Random Graph Model}
\description{
  \code{\link{summary.gofobject}} summaries the diagnostics such as the 
  degree distribution, geodesic distances, shared partner distributions,
  and reachability for the goodness-of-fit of exponential family random graph
  models.  See \code{\link{ergm}} for more information on these models.
}
\usage{
\method{summary}{gofobject}(object, \dots)
}
\arguments{
  \item{object}{an object of class \code{gofobject}, 
       typically produced by the
       \code{\link{gof.ergm}} or \code{\link{gof.formula}} functions.
       See the documentation for these.}
  \item{\dots}{Additional arguments, to be passed to the plot function.}
}

\details{
  \code{\link{gof.ergm}} produces a sample of networks randomly drawn from the specified model.
  This function produces a print out the summary measures.
}
\value{none}

\seealso{gof.ergm, gof.formula, ergm, network, simulate.ergm}
\examples{
#
data(florentine)
#
# test the gof.ergm function
#
gest <- ergm(flomarriage ~ edges + kstar(2))
gest
summary(gest)

#
# Plot the probabilities first
#
gofflo <- gof(gest)
gofflo
summary(gofflo)
}
\keyword{graphs}