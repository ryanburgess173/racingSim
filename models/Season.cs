public class Season{
    public int SeasonID {get;set;}
    public int Year {get;set;}
    public Series SeasonSeries {get;set;}
    public List<Event> Events {get;set;}

    public Season(int id, int year, Series series, List<Event> events){
        this.SeasonID = id;
        this.Year = year;
        this.SeasonSeries = series;
        this.Events = events;
    }

    public void AddEvent(Event e){
        this.Events.Add(e);
    }
}