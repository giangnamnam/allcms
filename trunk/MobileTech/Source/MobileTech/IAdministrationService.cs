using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace MobileTech
{
    // NOTE: If you change the interface name "IAdministrationService" here, you must also update the reference to "IAdministrationService" in Web.config.
    public interface IAdministrationService
    {
        void DoWork();
    }
}
