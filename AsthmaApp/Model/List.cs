using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsthmaApp.Model
{
    public class List
    {
        private Temp temp; 
        private int humidity; 
        private List<Weather> weather;

        public Temp Temp
        {
            get { return temp; }
            set { temp = value; }
        }

        public int Humidity
        {
            get { return humidity; }
            set { humidity = value; }
        }

        public List<Weather> Weather
        {
            get { return weather; }
            set { weather = value; }
        }
    }
}