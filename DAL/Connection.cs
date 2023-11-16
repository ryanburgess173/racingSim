using System.Text.Json;
using Npgsql;

public class Secrets{
    public string ConnectionString {get;set;}
}

public class Connection{

    public string ConnectionString {get;set;}
    public NpgsqlConnection DBConnection {get;set;}
    public Secrets DBSecrets {get;set;}

    public Connection(){
        try{
            this.DBSecrets = JsonSerializer.Deserialize<Secrets>(File.ReadAllText("secrets.json"));
            this.ConnectionString = this.DBSecrets.ConnectionString;
            this.DBConnection = new NpgsqlConnection(this.ConnectionString);
        }catch(Exception e){
            Console.WriteLine(e.Message);
        }
    }
}