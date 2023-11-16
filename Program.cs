using System;

void Main(){
    Console.WriteLine("Welcome to Racing Sim!");
    ThickBar();
    while(true){
        Console.Write("% ");
        string input = Console.ReadLine();
        switch(input){
            case "LIST ALL DRIVERS":
                Console.WriteLine("All Drivers:");
                ThinBar();
                break;
            case "QUIT":
            case "KILL":
            case "EXIT":
                Environment.Exit(0);
                break;
            case "HELP":
                HelpScreen();
                break;
            case "ADD DRIVERS":
                AddDriversMenu();
                break;
            default:
                Console.WriteLine("ERROR: - Command Not Found.");
                break;
        }
    }
}

void ThinBar(){
    Console.WriteLine("------------------------------------------------------------------------------");
}
void ThickBar(){
    Console.WriteLine("==============================================================================");
}

void HelpScreen(){
    ThickBar();
    Console.WriteLine("Useful Commands:");
    ThinBar();
    Console.WriteLine("LIST ALL DRIVERS             ;Lists all drivers in the database.");
    Console.WriteLine("LIST ALL TRACKS              ;Lists all tracks in database");
    Console.WriteLine("SCHEDULE [series] [year]     ;Lists the schedule for the series and year.");
    Console.WriteLine("STANDINGS [series] [year]    ;Lists the standings for the series and year.");
    Console.WriteLine("RACE [series] [year]         ;Runs The Next Race of the Series and Year.");
    Console.WriteLine("SIM SEASON [series] [year]   ;Simulates the entire season.");
    Console.WriteLine("ADD DRIVERS                  ;Add drivers.");
    Console.WriteLine("ADD TRACK                    ;Add a track.");
    Console.WriteLine("ADD EVENT                    ;Add an event.");
    Console.WriteLine("ADD SERIES                   ;Add a series.");
    Console.WriteLine("POINTS SYSTEM                ;Explains the points systems of various series.");
    Console.WriteLine("EXIT                         ;Exits the application.");
    Console.WriteLine("HELP                         ;Displays this Help Screen.");
    ThinBar();
    Console.WriteLine("");
}

void AddDriversMenu(){
    ThickBar();
    Console.Write("Number of Drivers You Wish to Create: ");
    string input;
    int number = 0;
    DriverAccessor da = new DriverAccessor();
    try{
        input = Console.ReadLine();
        number = Int32.Parse(input);
        for(int i=0; i<number; i++){
            Console.Write("Driver Name: ");
            input = Console.ReadLine();
            da.AddDriver(input);
            Console.WriteLine("Driver added successfully!");
        }
        ThinBar();
    }catch(Exception e){
        Console.WriteLine(e.Message);
    }
}

Main();