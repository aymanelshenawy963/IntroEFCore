using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P01_SalesDatabase.Models
{
    internal class Product
    {
        public int Id { get; set; }
        public string Product_Name { get; set; }
        public double Quantity { get; set; }
        public float Price { get; set; }
        public string Product_Sales { get; set; }
    }
}
