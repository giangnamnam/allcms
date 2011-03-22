using System;
using System.Collections.Generic;
using System.Text;

namespace Mobile.Common
{
    public class MyConst
    {
        public const string Session_Login_Status = "LoginStatus";

        public const string Technician_Role = "Technician";
        public const string Admin_Role = "Admin";
        public string[] PartsFixed = new string[] { "LCD", "Ribbon", "Connector", "Resistors", "Light Emitting Diodes", "Capacitors", 
                "Mic", "Speaker", "Buzz", "Vibration", "Circuit Board Repair","Circuit Board Cleaning","Software","Toggle","Keypad",
                "Multimedia","Reseption","Volume","Antenna","Background Light", "On-off Button","Charger Connector","Housing","Camera","BGAIC"};
    }

    public enum ProductRepairStatus
    {
        Pending = 1, In_Processing = 2, Repaired = 3, Paid = 4, Paid_and_Delivered = 5
    }
}
