#` A function to check MJ's ponts
#` This function allows you to check MJ's points in a given yeaer
#` @param Pass a year, return points
#` @keywords mj points nba
#` @export
#` @examples
#` mjPoints()


NBAdata<-readr::read_csv("Seasons_Stats.csv")






mjPoints<-function(year){


  dataYear<-dplyr::filter(NBAdata,Year==year)

  MJ<-dplyr::filter(dataYear, Player=="Michael Jordan*")

  return((dplyr::select(MJ, PTS)))

}
