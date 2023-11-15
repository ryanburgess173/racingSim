public class Series{
    public int SeriesID{get;set;}
    public string Name{get;set;}
    public Series(int ID, string name){
        this.SeriesID = ID;
        this.Name = name;
    }
}