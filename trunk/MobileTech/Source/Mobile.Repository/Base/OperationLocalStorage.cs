using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Runtime.Remoting.Messaging;

namespace Mobile.Repository
{
    static class OperationLocalStorage
    {
        private static bool IsInWebContext()
        {
            return HttpContext.Current != null;
        }

        public static object GetItem(string key)
        {
            if (IsInWebContext())
            {
                return HttpContext.Current.Items[key];
            }
            else
            {
                return CallContext.GetData(key);
            }
        }

        public static void SetItem(string key, object value)
        {
            if (IsInWebContext())
            {
                HttpContext.Current.Items[key] = value;
            }
            else
            {
                CallContext.SetData(key, value);
            }
        }
    }
}
