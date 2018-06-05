\name{simulate}
\alias{simulate.fap}
\alias{simulate.rtp}
\title{Simulation function for reaction times}
\description{
    Simulate reaction time data under the TWIN model for given parameter
    values.
}
\usage{
simulate.fap(soa, proc.A, proc.V, mu, sigma, omega, delta, N)
simulate.rtp(soa, proc.A, proc.V, mu, sigma, omega, delta, N)
}
\arguments{
  \item{soa}{
      Numeric vector of stimulus onset asynchrony (SOA) times.
}
  \item{proc.A}{
      Numeric value of mean processing time of auditory stimulus on stage 1.
}
  \item{proc.V}{
      Numeric value of mean processing time of visual stimulus on stage 1.
}
  \item{mu}{
      Numeric value of mean processing time on stage 1.
}
  \item{sigma}{
      Numeric value of standard deviation of processing time on stage 1.
}
  \item{omega}{
      Numeric value of Time Window of Integration width.
}
  \item{delta}{
      Numeric value of size of cross-modal interaction effect.
}
  \item{N}{
      Number of observations for each SOA.
}
}
\details{
    Reaction times are simulated by sampling from exponential distributions for
    the first stage processing times and from normal distribution for second
    stage processing times. Calculation is based on the TWIN model (Colonius &
    Diederich, 2004).
}
\value{
    Matrix of \code{N} rows and as many columns as different SOAs
    (\code{length(soa)}) containing sampled processing times.
    For simulate.fap, column names are in the form of, e.g. "SOA.neg200",
    meaning the auditory stimulus precedes the visual by 200 ms (-200).
    For simulate.rtp, column names are in the form of, e.g. "audSOA.50",
    meaning the auditory stimulus precedes the visual by 50 ms.
}
\references{
    See \code{\link{twin-package}}.
}

\seealso{
    \code{\link{estimate}}, \code{\link{predict.rt}}
}
\examples{
#data <- simulate.fap(soa = c(-200, -100, -50, 0, 50, 100, 200),
#                     proc.A = 150, proc.V = 100,
#                     mu = 200, sigma = 25,
#                     omega = 200, delta = 50,
#                     N = 500)
#
## Redundant Target Paradigm
#data <- simulate.rtp(soa = c(0, 50, 100, 200),
#                     proc.A = 150, proc.V = 100,
#                     mu = 200, sigma = 25,
#                     omega = 200, delta = 50,
#                     N = 500)
}
