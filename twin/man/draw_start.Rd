\name{draw_start}
\alias{draw_start}
\title{
    Draw a start value for a parameter for the optimizer.
}
\description{
    Draws a value from a distribution. Which distribution is used, depends on
    the parameter (\code{par}) of the TWIN model, see details. If a value is outside the
    parameter bounds, a new value is drawn.
}
\usage{
draw_start(par, bounds)
}
\arguments{
  \item{par}{
    One of these labels of the TWIN model parameters: \code{proc.A},
    \code{proc.V}, \code{mu}, \code{omega}, and \code{delta}.
}
  \item{bounds}{
    A list of two labeled vectors, \code{upper} and \code{lower}, each
    containing the upper or lower bounds for parameter values and their
    respective label.
}
}
\details{
    For \code{proc.A} and \code{proc.V} values are sampled from an exponential
    distribution, and for \code{mu}, \code{omega}, and \code{delta} from a
    normal distribution.
}
\value{
    A numeric value.
}
\seealso{
    \code{\link{estimate}}
}
