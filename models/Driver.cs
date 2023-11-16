public class Driver{
    public int DriverID {get;set;}
    public string Name {get; set;}
    
    public Driver(int id, string name, int age){
        this.DriverID = id;
        this.Name = name;
    }
}