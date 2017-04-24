<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AsthmaApp.Login" %>

<script runat="server">


    private void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
    {

        if (e.AffectedRows > 0)
        {

            FormsAuthentication.RedirectFromLoginPage(LoginBtn.UserName, false);

        }
        else
        {
            //Changes for alignmen Pratham (23/04/2017)
            LoginBtn.FailureText = "Invalid username or password";
            //Changes for alignment ends
        }

    }
</script>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Animate.css -->
    <link rel="stylesheet" href="myTemplate/css/animate.css" />
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="myTemplate/css/icomoon.css" />
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="myTemplate/css/bootstrap.css" />

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="myTemplate/css/magnific-popup.css" />

    <!-- Flexslider  -->
    <link rel="stylesheet" href="myTemplate/css/flexslider.css" />

    <!-- Theme style  -->
    <link rel="stylesheet" href="myTemplate/css/style.css" />

    <!-- Modernizr JS -->
    <script src="myTemplate/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->

        <!-- jQuery -->
    <script src="myTemplate/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="myTemplate/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="myTemplate/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="myTemplate/js/jquery.waypoints.min.js"></script>
    <!-- Flexslider -->
    <script src="myTemplate/js/jquery.flexslider-min.js"></script>
    <!-- Magnific Popup -->
    <script src="myTemplate/js/jquery.magnific-popup.min.js"></script>
    <script src="myTemplate/js/magnific-popup-options.js"></script>
    <!-- Counters -->
    <script src="myTemplate/js/jquery.countTo.js"></script>
    <!-- Main -->
    <script src="myTemplate/js/main.js"></script>
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
                                <li  class="active"><a href="Locked/DailyLogging.aspx">Daily Logging</a></li>
                                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </nav>
        </div>
    <%-- ***MENU FINISH*** --%>



    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/AsthmaKidsDB.accdb"
     SelectCommand="SELECT * FROM [Login]" OnSelected="CheckLogin"> 
      <%-- changes for alignment Pratham (23/04/2017)--%>
</asp:AccessDataSource>
    <div class="LoginContainer">
        <div class="row animate-box fadeInUp animated-fast">
        <br />
        <div class="Heading1">Sign in
        </div>
        <br />
        <div class="temp"><p>Please enter user name and password.</p></div>
        <p></p>
        <asp:Login ID="LoginBtn" runat="server" CssClass="LoginControl" OnAuthenticate="LoginBtn_Authenticate"
             TitleText="" LoginButtonText="Login" Width="359px">
           
            
            <TitleTextStyle  Font-Italic="true" Font-Size="Larger" Font-Bold="true" ForeColor="#3399ff"  />
            
            <TextBoxStyle CssClass="loginTextBox" />
            <LoginButtonStyle ForeColor="#000000" Font-Italic="true" Font-Bold="true" BackColor="#33ccff" />
        </asp:Login> 
        <br />  
            </div>
    </div>              
   <%-- Changes for alignment ends--%>

</asp:Content>
