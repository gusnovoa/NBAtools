\name{grandpa}
\alias{grandpa}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{This is the description for the grandpa function from the NBAtools package
%%  ~~function to do ... ~~
}
\description{
Returns oldest player in year given
}
\usage{
grandpa(year)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{year}{
2019
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
Gustavo Novoa
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
function (year)
{
    yearData <- dplyr::filter(NBAdata, Year == year)
    ages <- dplyr::select(yearData, Player, Age)
    ages <- dplyr::arrange(ages, desc(Age))
    as.data.frame(ages)
    return(ages[1, ])
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
