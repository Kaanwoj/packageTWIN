\name{estimate}
\alias{estimate}
\title{Least squares estimation of the TWIN model}
\description{
    Fits the Time-Window of Integration (TWIN) model (Colonius & Diederich,
    2004) for data of the Focused Attention or the Redundant Target
    Paradigm (FAP, RTP).
}
\usage{
estimate(dat, paradigm)
}
\arguments{
  \item{dat}{
    Data frame of reaction times with SOA in column names.
}
  \item{paradigm}{
    Either \code{fap} or \code{rtp}.
}
}
\details{
    \code{estimate} calculates observed mean and standard deviation for given
    data (Kandil et al., 2014). It calls \code{optim} for parameter
    optimization with start values from a call to \code{\link{draw_start}} and
    hard coded parameter bounds, \code{\link{objective.function}} as function
    to be optimized and L-BFGS-B method.
}
\value{
    A \code{list} with components:
    \item{est}{Return value of \code{\link{optim}}, that is a list containing
        i.\ a. the best set of parameters found and a code for convergence
        (\code{0} indicates successful completion).}
    \item{param.start}{Start values drawn by \code{\link{draw_start}} and used
        by \code{\link{optim}}.}
}
\references{
    Colonius, H., & Diederich, A. (2004). Multisensory interaction in saccadic
    reaction time: a time-window-of-integration model. \emph{Journal of
        cognitive neuroscience, 16}, \bold{6}, 1000--1009.
    \doi{10.1162/0898929041502733}

    Kandil, F. I., Diederich, A., & Colonius, H. (2014). Parameter recovery for
    the time-window-of-integration (twin) model of multisensory integration in
    focused attention. \emph{Journal of vision, 14}, \bold{11}, 14-14.
    \doi{10.1167/14.11.14}
}
\seealso{
    \code{\link{draw_start}}, \code{\link{optim}}
}
\examples{
# Focused Attention Paradigm
#data <- simulate.fap(soa = c(-200, -100, -50, 0, 50, 100, 200), proc.A = 150,
#                     proc.V = 100, mu = 200, sigma = 25, omega = 200, delta =
#                         50, N = 500)
#
#est <- estimate(data, paradigm = "fap")
#
## Redundant Target Paradigm
#data <- simulate.rtp(soa = c(0, 50, 100, 200), proc.A = 150, proc.V = 100, mu =
#                     200, sigma = 25, omega = 200, delta = 50, N = 500)
#
#est <- estimate(data, paradigm = "rtp")
}
