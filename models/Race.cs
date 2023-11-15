public class Race{
    public int RaceID {get; set;}
    public string Name {get; set;}
    public Track RaceTrack {get; set;}
    public int Laps {get; set;}

    public Race(int id, string name, Track track, int laps){
        this.RaceID = id;
        this.Name = name;
        this.RaceTrack = track;
        this.Laps = laps;
    }

}