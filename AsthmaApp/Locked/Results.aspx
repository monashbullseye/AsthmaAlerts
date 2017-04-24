<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="AsthmaApp.Results" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Animate.css -->
    <link rel="stylesheet" href="../myTemplate/css/animate.css" />
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="../myTemplate/css/icomoon.css" />
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="../myTemplate/css/bootstrap.css" />

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="../myTemplate/css/magnific-popup.css" />

    <!-- Flexslider  -->
    <link rel="stylesheet" href="../myTemplate/css/flexslider.css" />

    <!-- Theme style  -->
    <link rel="stylesheet" href="../myTemplate/css/style.css" />

    <!-- Modernizr JS -->
    <script src="../myTemplate/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->
 
    <!-- jQuery -->
    <script src="../myTemplate/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="../myTemplate/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="../myTemplate/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="../myTemplate/js/jquery.waypoints.min.js"></script>
    <!-- Flexslider -->
    <script src="../myTemplate/js/jquery.flexslider-min.js"></script>
    <!-- Magnific Popup -->
    <script src="../myTemplate/js/jquery.magnific-popup.min.js"></script>
    <script src="../myTemplate/js/magnific-popup-options.js"></script>
    <!-- Counters -->
    <script src="../myTemplate/js/jquery.countTo.js"></script>
    <!-- Main -->
    <script src="../myTemplate/js/main.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <%--*** MENU START*** --%>
    <div id="page">
        <nav class="fh5co-nav" role="navigation">
            <div class="container-wrap">
                <div class="top-menu">
                    <div class="row">
                        <div class="col-xs-2">
                            <div id="fh5co-logo"><a href="Home.aspx">Asthma Alerts</a></div>
                        </div>
                        <div class="col-xs-10 text-right menu-1">
                            <ul>
                                <li><a href="../Home.aspx">Home</a></li>
                                <li><a href="../WeatherAnalysis.aspx">Forecast Analysis</a></li>
                                <li class="active"><a href="DailyLogging.aspx">Daily Logging</a></li>
                                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </nav>
        </div>
    <%-- ***MENU FINISH*** --%>




     <div class="container-wrap">
          <div class="row animate-box fadeInUp animated-fast">
        <div class="LoggingTime">
            <br />

            <div >
                <h2>Your Asthma Trends</h2>
                    </div>
            
            <%-- Line Graph section time versus number of accidents --%>
            <asp:Chart ID="GraphTime" runat="server" DataSourceID="SqlDataSource2">
                <Series>
                    <asp:Series Name="Series1" ChartType="Line" XValueMember="Day" YValueMembers="Accident" ></asp:Series>                     
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">

                        <AxisX Title="Days in month" LabelAutoFitStyle="None">
                                <LabelStyle interval="5"  />
                            <MajorGrid Enabled="false" />
                            </AxisX>
                            <AxisY Title="Number of attacks" Interval="1"> 
                                <MajorGrid Enabled="false" />                               
                            </AxisY>

                    </asp:ChartArea>
                </ChartAreas>

            </asp:Chart>


            <%-- Column chart for activity versus time --%>
            <asp:Chart ID="ColumnActivity" runat="server" DataSourceID="SqlDataSource2">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Activity" YValueMembers="Accident"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">

                        <AxisX Title="Activities" LabelAutoFitStyle="None" >

                            <MajorGrid Enabled="false" />  
                            </AxisX>
                            <AxisY Title="Number of attacks" Interval="5"> 
                                <MajorGrid Enabled="false" />                               
                            </AxisY>

                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>


            <%-- Column chart for food analysis --%>
            <asp:Chart ID="ColumnFood" runat="server" DataSourceID="SqlDataSource2">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Food" YValueMembers="Accident"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX Title="Food" LabelAutoFitStyle="None" >

                            <MajorGrid Enabled="false" />  
                            </AxisX>
                            <AxisY Title="Number of attacks" Interval="5"> 
                                <MajorGrid Enabled="false" />                               
                            </AxisY>

                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />

            
            <%-- Column chart for animal analysis --%>
            <asp:Chart ID="ColumnAnimal" runat="server" DataSourceID="SqlDataSource2">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Animal" YValueMembers="Accident"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">

                        <AxisX Title="Animal" LabelAutoFitStyle="None" >

                            <MajorGrid Enabled="false" />  
                            </AxisX>
                            <AxisY Title="Number of attacks" Interval="5"> 
                                <MajorGrid Enabled="false" />                               
                            </AxisY>

                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [PersonalRecords]"></asp:SqlDataSource>


            </div>
              </div>
    </div>

</asp:Content>
