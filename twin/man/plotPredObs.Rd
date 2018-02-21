\name{plotPredObs.fap}
\alias{plotPredObs.fap}
\alias{plotPredObs.rtp}
\title{
    Plot predicted and observes reaction times for the Focused Attention
    Paradigm or Redundant Target Paradigm
}
\description{
    Wrapper for \code{plot}. Read SOA from \code{data} \code{colnames}, and
    calculate mean observed reaction times (and standard deviation). Call
    \code{\link{predict.rt.fap}} or \code{\link{predict.rt.rtp}} for predicted
    reaction times under TWIN model with parameters \code{est}.

    \code{plotPredObs.fap} creats one plot, \code{plotPredObs.rtp} two plots,
    one for each modality.
}
\usage{
plotPredObs.fap(data, est)
}
\arguments{
  \item{data}{
    Data frame of reaction times with SOA in column names.
}
  \item{est}{
    Result from \code{\link{estimate}}, that is a \code{list} with components:
    \code{est} (Return value of \code{\link{optim}}, that is a list containing
        i.\ a. the best set of parameters found and a code for convergence
        (\code{0} indicates successful completion).)
    \code{param.start} (Start values drawn by \code{\link{draw_start}} and used
        by \code{\link{optim}}.)
}
}
\value{
    A \code{plot}.
}
\seealso{
    \code{\link{estimate}}, \code{\link{predict.rt}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
}
