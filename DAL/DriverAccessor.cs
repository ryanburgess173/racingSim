using Npgsql;

public class DriverAccessor{
    public Connection connection {get;set;}

    public DriverAccessor(){
        this.connection = new Connection();
        this.connection.DBConnection.Open();
    }

    public async void AddDriver(string DriverName){
        NpgsqlCommand command = new NpgsqlCommand();
        command.Connection  = this.connection.DBConnection;
        command.CommandText = "SELECT COUNT(*) FROM main.\"Drivers\";";
        Int64 count = (Int64)command.ExecuteScalar();
        command.CommandText = string.Format("INSERT INTO main.\"Drivers\" (\"DriverID\", \"DriverName\") VALUES ({0}, {1});", count+1, DriverName);
        await command.ExecuteNonQueryAsync();
    }
}