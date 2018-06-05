\name{predict.rt}
\alias{predict.rt}
\alias{predict.rt.fap}
\alias{predict.rt.rtp}
\title{Prediction function for reaction times under TWIN model}
\description{
    Calculate mean predicted reaction times under the TWIN model for given
    parameter values.
}
\usage{
predict.rt.fap(par, column.names)
predict.rt.rtp(par, column.names)
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
    Under the TWIN model (Colonius & Diederich, 2004), the total reaction time
    in the crossmodal condition \eqn{RT_{VA}} is the sum of the processing
    times in stage 1 and stage 2. Let \eqn{M1} and \eqn{M2} denote two random
    variables that refer to the first and second stage processing times, so
    that the overall reaction time becomes \eqn{RT_{VA} = M_1 + M_2}.
    \deqn{E[RT_{VA}] = E[M_1] + E[M_2|\neg I] - P(I) \cdot \Delta,} where
        \eqn{I} is the event that multisensory integration occurs with
          probability \eqn{P(I)},
        \eqn{E[M_2|\neg I]} is the expected stage 2 processing time
                conditioned on multisensory integration not occuring, and
        \eqn{\Delta} is the size of the crossmodal interaction
                effect.

}
\value{
    Numeric vector of reaction times with length of \code{column.names}
}
\references{
    Colonius, H., & Diederich, A. (2004). Multisensory interaction in saccadic
    reaction time: a time-window-of-integration model. \emph{Journal of
        cognitive neuroscience, 16}, \bold{6}, 1000--1009.
    \doi{10.1162/0898929041502733}
}

\seealso{
    \code{\link{estimate}}, \code{\link{plotPredObs}}
}
\examples{
### Focused Attention Paradigm
#data <- simulate.fap(soa = c(-200, -100, -50, 0, 50, 100, 200), , N = 500)
#
#pred <- predict.rt.fap(c(proc.A=150, proc.V=100, mu=200, omega=200, delta=50),
#                       colnames(data))
#
## Redundant Target Paradigm
#data <- simulate.rtp(soa = c(0, 50, 100, 200), proc.A = 150, proc.V = 100, mu =
#                     200, sigma = 25, omega = 200, delta = 50, N = 500)
#
#pred <- predict.rt.rtp(c(proc.A=150, proc.V=100, mu=200, omega=200, delta=50),
#                       colnames(data))
}
