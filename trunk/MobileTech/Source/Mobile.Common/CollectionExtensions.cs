using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Mobile.Common.Utils
{
    public static class CollectionExtensions
    {
        public static IEnumerable<T> Do<T>(this IEnumerable<T> collection, Action<T> action)
        {
            foreach (T item in collection)
            {
                action(item);
            }
            return collection;
        }
    }
}
