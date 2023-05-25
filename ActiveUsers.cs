using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABCSAMPLE
{
    public class ActiveUsers
    {
        private string farmer;

        public ActiveUsers(string farmerID)
        {
            FarmerID = farmerID;
        }

        public string FarmerID { get; set; }
        public string Farmer { get => farmer; set => farmer = value; }

        public override string ToString()
        {
            return "" + FarmerID;
        }


    }
}