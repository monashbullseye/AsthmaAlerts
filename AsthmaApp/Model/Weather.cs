using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsthmaApp.Model
{
    public class Weather
    {
        private string description;
        private string icon;

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        public string Icon
        {
            get { return icon; }
            set { icon = value; }
        }

    }
}