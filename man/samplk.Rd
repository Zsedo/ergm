%  File man/samplk.Rd in package ergm, part of the Statnet suite
%  of packages for network analysis, http://statnet.org .
%
%  This software is distributed under the GPL-3 license.  It is free,
%  open source, and has the attribution requirements (GPL Section 7) at
%  http://statnet.org/attribution
%
%  Copyright 2003-2015 Statnet Commons
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\name{samplk}
\alias{samplk}
\alias{samplk1}
\alias{samplk2}
\alias{samplk3}
\title{Longitudinal networks of positive affection within a monastery as a ``network'' object}
\description{

\bold{NOTE:} It appears that as of \code{ergm} 3.6.0, the vertex labels
are been permutted. This will be fixed in the next release.

  %Sampson (1968) collected data on a variety of
%interpersonal relations among 18 monks. 
Sampson (1969) recorded
the social interactions among a group of monks
while resident as an experimenter on vision, and collected
numerous sociometric rankings.  
During his stay, a political
``crisis in the cloister'' resulted in the expulsion of four monks
(Nos. 2, 3, 17, and 18) and the voluntary departure of several
others - most immediately, Nos. 1, 7, 14, 15, and 16. (In the
end, only 5, 6, 9, and 11 remained).
Of particular interest
is the data on positive affect relations (``liking''), in which each
monk was asked if they had positive relations to each of the
other monks.

%The data are a measure reflecting
%changes in group sentiment over time called ``liking''. It is 
%gathered at three times: \code{samplk1} to \code{samplk3}.
The data were gathered at three times to capture changes in group sentiment
over time: \code{samplk1}, \code{samplk2}, and \code{samplk3}.
They represent three time points in the period during which a
new cohort entered the monastery near the end of the study but
before the major conflict began. 
%Information about the senior monks was not included.
Each member ranked only his top three choices on ``liking.''
%A ranking of 3 indicates the highest or first choice and 1 the last choice.
(Some subjects offered tied ranks for their top four choices).
A tie from monk A to monk B exists if A
nominated B as one of his three best friends at that that time point.
%A tie is present in the data if the receiver was one of
%his top three most liked monks at that point in time. 

\code{samplk3} is a data set of Hoff, Raftery and Handcock (2002).

See also the data set \code{\link{sampson}} containing the time-aggregated
graph \code{samplike}.
%A tie exists in this.network if the receiver was nominated at 
%one or more of the three time points.
It is the cumulative tie for ``liking'' over the three
periods.  For this, a tie from monk A to monk B exists if A
nominated B as one of his three best friends at any of the
three time points.

All graphs are stored as \code{\link[network]{network}} objects.
They have three vertex attributes:

\describe{
\item{group}{Groups of novices as classified by Sampson: 
``Loyal'', ``Outcasts'', and ``Young Turks''. There is also an 
interstitial group not represented here.}
\item{cloisterville}{An indicator if attendance the minor seminary of ``Cloisterville'' before coming to the monastery.}
\item{vertex.names}{The given names of the novices.}
}
This data set is standard in the social network analysis
literature, having been modeled by Holland and Leinhardt
(1981), Reitz (1982), Holland, Laskey and Leinhardt (1983),
and Fienberg, Meyer, and Wasserman (1981), Hoff, Raftery, and Handcock
(2002), etc.
This is only a small piece of the data collected by Sampson.


This dataset was updated for version 2.5 (March 2012) to add the
\code{cloisterville} variable and refine the names. This information is from
de Nooy, Mrvar, and Batagelj (2005).
The original vertex names were:
Romul_10, Bonaven_5, Ambrose_9, Berth_6, Peter_4, Louis_11, Victor_8,
Winf_12, John_1, Greg_2, Hugh_14, Boni_15, Mark_7, Albert_16, Amand_13,
Basil_3, Elias_17, Simp_18.

} \usage{
 data(samplk)
}
\source{
 Sampson, S.~F. (1968), \emph{A novitiate in a period of change: An
 experimental and case study of relationships,} 
 Unpublished Ph.D. dissertation, Department of Sociology, Cornell University.

 \url{http://vlado.fmf.uni-lj.si/pub/networks/data/esna/sampson.htm}
}
\seealso{sampson, florentine, network, plot.network, ergm}
\references{
 White, H.C., Boorman, S.A. and Breiger, R.L. (1976).
 \emph{Social structure from multiple networks. I. Blockmodels of roles and
 positions.}
 American Journal of Sociology, 81(4), 730-780.

 Wouter de Nooy, Andrej Mrvar, Vladimir Batagelj (2005) \emph{Exploratory
 Social Network Analysis with Pajek},
 Cambridge: Cambridge University Press
}
%Wasserman, S. and Faust, K. (1994) \emph{Social Network
%Analysis: Methods and Applications}, Cambridge University Press,
%Cambridge, England.  }
\keyword{datasets}
