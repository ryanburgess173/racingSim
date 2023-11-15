public class Season{
    public int SeasonID {get;set;}
    public int Year {get;set;}
    public Series SeasonSeries {get;set;}

    public Season(int id, int year, Series series){
        this.SeasonID = id;
        this.Year = year;
        this.SeasonSeries = series;
    }
}