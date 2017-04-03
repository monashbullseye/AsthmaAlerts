using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsthmaApp.Model
{
    public class Temp
    {
        private double day;
        private double min;
        private double max;
        private double night;

        public double Day
        {
            get { return day; }
            set { day = value; }
        }

        public double Min
        {
            get { return min; }
            set { min = value; }
        }

        public double Max
        {
            get { return max; }
            set { max = value; }
        }

        public double Night
        {
            get { return night; }
            set { night = value; }
        }

    }
}