\name{objective.function}
\alias{objective.function}
\title{
    Least squares function to be optimized
}
\description{

    Calculate the \eqn{\chi^2} statistic
    \deqn{\chi^2 = \sum_{all conditions}
        \left[\frac{{mean}[RT_{obs}]-[RT_{pred}]}{SE[RT_{obs}]}\right]^2}
        where \eqn{RT_{obs}} and \eqn{RT_{pred}} are the observed and predicted
        reaction times, respectively, and SE is the standard error.
    Predicted reaction times are obtained by a call to
   \code{\link{predict.rt}}.

   \code{objective.function} is called by \code{\link{estimate}}.
}
\usage{
    objective.function(par, obs.m, obs.se, column.names, paradigm)
}
\arguments{
  \item{par}{
    Vector of TWIN parameter values.
}
  \item{obs.m}{
    Mean of observed reaction times.
}
  \item{obs.se}{
    Standard error of observed reaction times.
}
  \item{column.names}{
    Column names of \code{data.frame} of reaction time data. Names are SOA, see
    details.
}
  \item{paradigm}{
    \code{"fap"} for Focused Attention Parameters, and
    \code{"rtp"} for Redundant Target Paradigm.
}
}
\details{
    \code{column.names} is a vector of strings in the form of \code{"SOA.100"} for
    Focused Attention Paradigm (\code{paradigm = "fap"}), and \code{"audSOA.0"} for
    Redundant Target Paradigm (\code{paradigm = "rtp"}).
}
\value{
    Value of Least square statistic
}
\references{
    Kandil, F. I., Diederich, A., & Colonius, H. (2014). Parameter recovery for
    the time-window-of-integration (twin) model of multisensory integration in
    focused attention. \emph{Journal of vision, 14}, \bold{11}, 14-14.
    \doi{10.1167/14.11.14}
}

\seealso{
    \code{\link{estimate}}, \code{\link{predict.rt}}
}
%\examples{
%}
