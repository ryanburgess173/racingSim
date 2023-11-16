public class Track{
    public int TrackID {get;set;}
    public string TrackName {get;set;}
    public Track(int id, string name){
        this.TrackID = id;
        this.TrackName = name;
    }
}