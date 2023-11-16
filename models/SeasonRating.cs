public class SeasonRating{
    public int SeasonRatingID {get;set;}
    public int DriverID {get;set;}
    public int SeasonID {get;set;}
    public int WinFactor {get;set;}
    public int StandingsFactor {get;set;}
    public int Factor {get;set;}

    public SeasonRating(int id, int did, int sid, int wf, int sf){
        this.SeasonRatingID = id;
        this.DriverID = did;
        this.SeasonID = sid;
        this.WinFactor = wf;
        this.StandingsFactor = sf;
        this.Factor = wf+sf;
    }
}