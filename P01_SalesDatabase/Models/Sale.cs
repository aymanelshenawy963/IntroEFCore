using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace P01_SalesDatabase.Models
{
    internal class Sale
    {
        public int Id { get; set; }
        public DateTime Data { get;set; }
        public string Products { get;set;}
        public string Customers { get; set; }
        public string Stores { get;set; }
    }
}
