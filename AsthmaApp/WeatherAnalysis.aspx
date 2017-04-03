<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WeatherAnalysis.aspx.cs" Inherits="AsthmaApp.WeatherAnalysis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container-wrap"> 

            <div class="alertInfo">

                <br />
                 <h4>Environment Asthma Alert Information</h4>

                <p>
                    Extends of environment alerts are calculated according to Australia Asthma studies. There are two basic justifications of extends to which temperature is likely to 
                    cause asthma in Australia, one is whether the temperature is over or below 21°C based on different month, and the other is the difference between maximum and minimum
                     temperature throughout a day.  

                </p>
                <p>
                    In general sense, referring to E. H. Derrick and S. Szymansk12’s research, there are high possibility for kids to get Asthma when the temperature is under 21°C; meanwhile
                     E. H. Derrick also found the number of asthma cases hit a peak during the months of April and May, declining to lower level in months of January, February, March, September,
                     and staying in average in other months. Moreover, the paper “Diurnal temperature range and childhood asthma: a time-series study” also suggests the difference between maximum
                     and minimum temperature in a day can influence the possibility of causing asthma. In other words, there is a low possibility of getting asthma if the difference between the
                     maximum and minimum temperature during a day is between 5°C and 10°C; while the possibility increases from 10°C to 15°C and any difference higher than 15°C can cause serious
                     increase in asthma attacks.  
                </p>
                <p>
                      Based on these researches, we came up with a Severity Index that ranges from 1 to 7 to show the level of environment threats for Asthma patients, according to the index a
                     value of 1 indicates a low severity while a value of 7 refers the highest threats of asthma environment trigger (temperature). The following diagram represent the calculations
                     in a logical form, where S is extends of asthma trigger (temperature):
                </p>
             </div>

                <div class="alertImage">
                    
                        <img src="myTemplate/images/alertInfo.jpg" alt="AlertInfo" style="width:700px;height:900px;"/>

                    
                </div>
           

        </div>

</asp:Content>
