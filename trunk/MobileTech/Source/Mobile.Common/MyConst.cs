using System;
using System.Collections.Generic;
using System.Text;

namespace Mobile.Common
{
    public class MyConst
    {
        public const string Session_Login_Status = "LoginStatus";

        public const string Technician_Role = "Technician";
    }

    public enum ProductRepairStatus
    {
         Pending = 1, InProcessing = 2, Repaired = 3
    }
}
