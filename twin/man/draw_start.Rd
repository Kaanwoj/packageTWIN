\name{draw_start}
\alias{draw_start}
\title{
    Draw a start value for a parameter for the optimizer.
}
\description{
    Draws a value from a distribution. Which distribution is used, depends on
    the parameter (\code{par}) of the TWIN model. That is exponential
    distribution for \code{proc.A} and \code{proc.V} and normal distribution
    for \code{mu}, \code{omega}, and \code{delta}. If a value is outside the
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
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    A numeric value.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (par, bounds) 
{
    low <- bounds$lower[par]
    up <- bounds$upper[par]
    value <- switch(par, proc.A = rexp(1, 1/100), proc.V = rexp(1, 
        1/100), mu = rnorm(1, 100, 25), omega = rnorm(1, 200, 
        25), delta = rnorm(1, 50, 25))
    if (value < low || value > up) {
        value <- draw_start(par, bounds)
    }
    value
  }
}
\keyword{start values}
