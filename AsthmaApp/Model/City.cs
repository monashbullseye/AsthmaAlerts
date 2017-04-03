using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsthmaApp.Model
{
    public class City
    {
        private string name;
        private string country;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        
        public string Country
        {
            get { return country; }
            set { country = value; }
        }
    }
}