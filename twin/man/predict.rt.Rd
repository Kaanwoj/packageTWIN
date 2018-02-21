\name{predict.rt}
\alias{predict.rt.fap}
\alias{predict.rt.rtp}
\title{
    Calculate predicted reaction times under the TWIN model for given parameter
    values.
}
\description{
    Under the TWIN model, the total reaction time in the crossmodal condition
    \eqn{RT_{VA}} is the sum of the processing times in stage 1 and stage 2.
    Let \eqn{M1} and \eqn{M2} denote two random variables that refer to the
    first and second stage processing times, so that the overall reaction time
    becomes \eqn{RT_{VA} = M_1 + M_2}.
    \deqn{E[RT_{VA}] = E[M_1] + E[M_2|\neg I] - P(I) \cdot \Delta$$}, with

        \code{I}{is the event that multisensory integration occurs, with
          probability \eqn{P(I)}}
        \code{\eqn{E[M_2|\neg I]}}{is the expected stage 2 processing time
                conditioned on multisensory integration not occuring}
        \code{\eqn{Delta}}{is the size of the crossmodal interaction
                effect}

}
\usage{
predict.rt.fap(par, column.names)
}
\arguments{
  \item{par}{
    Vector of TWIN parameter values.
}
  \item{column.names}{
    Column names of \code{data.frame} of reaction time data. Names are SOA, see
    details.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    Numeric vector of reaction times with length of \code{column.names}
}
\references{
    Colonius, H., & Diederich, A. (2004). Multisensory interaction in saccadic
    reaction time: a time-window-of-integration model. \emph{Journal of
        cognitive neuroscience, 16}, \bold{6}, 1000--1009.
    \doi{10.1162/0898929041502733}

    Diederich, A., & Colonius, H. (2015). The time window of multisensory
    integration: Relating reaction times and judgments of temporal order.
    \emph{Psychological review, 122}, \bold{2}, 232.
    \doi{10.1037/a0038696}
}

\seealso{
    \code{\link{estimate}}, \code{\link{plotPredObs}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
}
