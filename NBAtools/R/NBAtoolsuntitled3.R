rm(list=ls())
ls()



NBAdata<-readr::read_csv("Seasons_Stats.csv")



keanu<-function(year){


  NBAdata<-dplyr::filter(NBAdata, NBAtools$Year==year)


  lapply(NBAdata,class)

  print(cormat)


  nbacor<-cor(numdata)

  cp<-corrplot::corrplot(nbacor, method="color" )

  return(cp)

}


mjPoints<-function(year){


  dataYear<-dplyr::filter(NBAdata,Year==year)

  MJ<-dplyr::filter(dataYear, Player=="Michael Jordan*")

  return((select(MJ, PTS)))

}


grandpa<-function(year){

  yearData<-dplyr::filter(NBAdata, Year==year)

  ages<-dplyr::select(yearData, Player, Age)

  ages<-dplyr::arrange(ages, desc(Age))

  as.data.frame(ages)

  return(ages[1,])



}
