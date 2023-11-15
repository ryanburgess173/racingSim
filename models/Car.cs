public class Car{
    public int CarID {get;set;}
    public Team RaceTeam {get;set;}
    public Series RacingSeries {get;set;}
    public int ChassisNumber {get;set;}
    public int SuperSpeedwayRating {get;set;}
    public int IntermediateRating {get;set;}
    public int ShortTrackRating {get;set;}
    public int StreetCourseRating {get;set;}
    public int RoadCourseRating {get;set;}

    public Car(int id, Team rt, Series rs, int chassis){
        this.CarID = id;
        this.RaceTeam = rt;
        this.RacingSeries = rs;
        this.ChassisNumber = chassis;
    }
}