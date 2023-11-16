using Npgsql;

public class Connection(){

    public string ConnectionString {get;set;}
    public NpgsqlConnection DBConnection {get;set;}

    public Connection(){
        
        this.DBConnection = new NpgsqlConnection(this.ConnectionString);
    }
}