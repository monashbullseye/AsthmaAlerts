using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsthmaApp.Model
{
    public class WeatherInfo
    {
        private City city;
        private List<List> list;

        public City City
        {
            get { return city; }
            set { city = value; }
        }

        public List<List> List
        {
            get { return list; }
            set { list = value; }
        }
    }
}