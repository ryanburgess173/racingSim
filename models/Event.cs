public class Event{
    public int EventID {get;set;}
    public string EventName {get;set;}
    public Series RacingSeries {get;set;}
    public Track RaceTrack {get;set;}
    public int EventNumber {get;set;}
    public Event(int id, string name, Series series, Track track, int eN){
        this.EventID = id;
        this.EventName = name;
        this.RacingSeries = series;
        this.RaceTrack = track;
        this.EventNumber = eN;
    }
}