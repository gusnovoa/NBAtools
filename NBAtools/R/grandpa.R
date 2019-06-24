#` A function to find the oldest player
#` This function returns the oldest player (first alphabetically if tied) for a given year
#` @param Pass a year, return points
#` @keywords old age nba
#` @export 
#` @examples 
#` grandpa()
NBAdata<-readr::read_csv("Seasons_Stats.csv")



grandpa<-function(year){
  
  yearData<-dplyr::filter(NBAdata, Year==year)
  
  ages<-dplyr::select(yearData, Player, Age)
  
  ages<-dplyr::arrange(ages, desc(Age))
  
  as.data.frame(ages)
  
  return(ages[1,])
  
 
  
}