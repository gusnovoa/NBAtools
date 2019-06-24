#` A function to build a visual correlational matrix
#` Passed a given year, this function will create a cor matrix
#` @param Pass a year, return matrix and visual
#` @keywords matrix nba
#` @export
#` @examples
#` keanu()

NBAdata<-readr::read_csv("Seasons_Stats.csv")



keanu<-function(year){


NBAdata<-dplyr::filter(NBAdata, Year==year)


lapply(NBAdata,class)


numdata<-NBAdata[,sapply(NBAdata, is.numeric)]


cormat<-cor(numdata)


print(cormat)


nbacor<-cor(numdata)

cp<-corrplot::corrplot(nbacor, method="color" )

return(cp)

}
