<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AsthmaApp.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-wrap">
        <aside id="fh5co-hero">
            <div class="row"> 
                <div class="col-md-9 col-md-push-0.9">
            <div class="flexslider">
                <ul class="slides">
                    <li style="background-image: url(myTemplate/images/MMFrontpage1.jpg);">
                        <div class="overlay-gradient"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 slider-text">
                                    <div class="slider-text-inner">
                                        <h1>"1 out of 9 children in Australia suffer from Asthma"</h1>
                                        <%--<h2>Most of them are kids</h2>
                                        <p><a class="btn btn-primary btn-demo" href="#"></i> View Asthma Kids</a> <a class="btn btn-primary btn-learn">Learn More</a></p>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li style="background-image: url(myTemplate/images/MMFrontpage0.jpg);">
                        <div class="overlay-gradient"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 col-md-push-3 slider-text">
                                    <div class="slider-text-inner">
                                        <h1>"34% of people report that asthma interferes with their daily living"</h1>
                                        <%--<h2>Free html5 templates Made by</h2>
                                        <p><a class="btn btn-primary btn-demo" href="#"></i> View Demo</a> <a class="btn btn-primary btn-learn">Learn More</a></p>*@--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
                    </div>


                <div class="col-md-3 col-md-pull-0.1">
                <div id="fh5co-work" class="fh5co-light-grey">
            <div class="row animate-box">
                <div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
                    <h2>Asthma Alerts</h2>
                    <p>Please enter your postal code to check Asthma details!</p>
                    <p>
                        <asp:TextBox ID="txtCity" runat="server" Text="" width="100%" Height="40%" />
                        <h2></h2>
                        <asp:Button ID="btn_getWeather" Text="Check Asthma Severity" runat="server" OnClick="btn_getWeather_Click"  />
                    </p>
                </div>
            </div>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <%--<div class="row">--%>
                        <div class="bgFirstWidget">

                        <asp:Label ID="lblException" runat="server" />

                        <table id="tblWeather" class="weather" runat="server" border="0" cellpadding="0" cellspacing="0" color="blue" visible="false" style ="align-content">
                            <tr>
                                <th class="wtitle" colspan="0" >  <%=DateTime.Now.ToString() %>
                                </th>
                            </tr>
                            <tr>
                                <td class="wplace">
                                    <asp:Label ID="lblCity_Country" runat="server" />
                                    <asp:Image ID="imgCountryFlag" Visible="true" runat="server" />
                                    <asp:Label ID="lblDescription" runat="server" />
                                    Humidity:
                        <asp:Label ID="lblHumidity" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="wimage">
                                    <asp:Image ID="imgWeatherIcon" align="center" runat="server" />
                                </td>
                                <td class="walert">Severity: <br />
                                    <asp:Label ID="lblDayTempAlert" runat="server" /> <br />
                                    <asp:Label ID="lblNightTempAlert" runat="server" />
                                </td>
                            </tr>
<%--                             <%-- Adding alert things --%>
                            <tr>

                            </tr>

                            <tr>
                                <td class="wtemp">Temperature:
                        (Min:
                            <asp:Label ID="lblTempMin" runat="server" />
                                    Max:
                            <asp:Label ID="lblTempMax" runat="server" />) <br />
                                    (Day:
                            <asp:Label ID="lblTempDay" runat="server" />
                                    Night:
                            <asp:Label ID="lblTempNight" runat="server" />)
                                </td>
                            </tr>

                            <tr>
                                <td class="wlink">
                               
                                <a class="one" href="WeatherAnalysis.aspx" >Click to findout more on severity</a>
                                </td>
                            </tr>
                           
                        </table>
                            </div>

                    <%--</div>--%>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btn_getWeather" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
 </div>


        </aside>


        <%--The section for keeping weather alert --%>

        
        
    </div>
</asp:Content>
