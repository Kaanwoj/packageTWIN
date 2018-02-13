\name{estimate}
\alias{estimate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Estimate parameter values for the TWIN model.
}
\description{
Calculates observed mean and standard deviation for given data. Calls
\code{optim} for parameter optimization with start values from a call to
\code{draw_start} and hard coded parameter bounds, \code{objective.function} as
function to be optimized and L-BFGS-B method.
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
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
