<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Today.aspx.cs" Inherits="AsthmaApp.Today" %>
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

            <div class="WizardDiv">
                <br />
                <asp:Wizard ID="wzd" runat="server" DisplaySideBar="false" StepPreviousButtonStyle-CssClass="WizStepPrevBtn">

                 <HeaderTemplate>
                        <table style="width: 100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="wizardTitle">
                                    <%--<%= wzd.ActiveStep.Title%>--%>
                                </td>
                                <td>
                                    <table style="width: 100%; border-collapse: collapse;">
                                        <tr>
                                            <td style="text-align: right">
                                                <span class="wizardProgress">Steps:</span>
                                            </td>
                                            <asp:Repeater ID="SideBarList" runat="server">
                                                <ItemTemplate>
                                                    <td class="stepBreak">&nbsp;</td>
                                                    <td class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%# DataBinder.Eval(Container, "DataItem.Name")%>">
                                                        <%# wzd.WizardSteps.IndexOf(Container.DataItem as WizardStep) + 1 %>
                                                    </td>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <SideBarTemplate></SideBarTemplate> 
                
            <%-- WIZARD STEPS --%>
             <WizardSteps>
                        <%-- 1st wizard step --%>
                        <asp:WizardStep ID="Wiz1" runat="server" title="Step 1">
                            <asp:Label ID="Label1" runat="server" Text="Today is: "></asp:Label>
                            <%=DateTime.Now.ToString() %>
                           
                            <br />

                            <asp:Label ID="Label2" runat="server" Text="Asthma attack time: " ></asp:Label>
                            <%--<asp:TextBox ID="tbOtherDateTime" runat="server" placeholder="ex: 3:30"></asp:TextBox>--%>
                            <asp:DropDownList ID="DdlTime" runat="server">
                                <asp:ListItem Enabled="true" Text="Select Time" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="6:00 AM" Value="1"></asp:ListItem>
                                <asp:ListItem Text="8:00 AM" Value="2"></asp:ListItem>
                                <asp:ListItem Text="10:00 AM" Value="3"></asp:ListItem>
                                <asp:ListItem Text="12:00 AM" Value="4"></asp:ListItem>
                                <asp:ListItem Text="2:00 PM" Value="5"></asp:ListItem>
                                <asp:ListItem Text="4:00 PM" Value="6"></asp:ListItem>
                                <asp:ListItem Text="6:00 PM" Value="7"></asp:ListItem>
                                <asp:ListItem Text="8:00 PM" Value="3"></asp:ListItem>
                                <asp:ListItem Text="10:00 PM" Value="3"></asp:ListItem>
                                <asp:ListItem Text="12:00 AM" Value="3"></asp:ListItem>
                                <asp:ListItem Text="2:00 AM" Value="3"></asp:ListItem>
                                <asp:ListItem Text="4:00 AM" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                             <br />
                            <br />
                        </asp:WizardStep>

                        <%-- 2nd wizard step --%>
                        <asp:WizardStep ID="Wiz2" runat="server" title="Step 2">

                            <asp:Label ID="Label3" runat="server" Text="Where does the Asthma happens?"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Put in your post code please ~ "></asp:Label>
                            <%--<asp:Label ID="Label6" runat="server" Text="Put in your post code please ~ " AssociatedControlID="tbOtherDateTime"></asp:Label>--%>
                            <br />
                            <asp:TextBox ID="tbPostcode" runat="server" placeholder="ex: 3082"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="tbPostcode"
                                ErrorMessage="Only numeric allowed." ForeColor="Red"
                                ValidationExpression="^[0-9]*$" ValidationGroup="NumericValidate">*
                            </asp:RegularExpressionValidator>
                             <br />
                            <br />
                        </asp:WizardStep>

                        <%-- 3rd wizard step --%>
                        <asp:WizardStep ID="Wiz3" runat="server" title="Step 3">

                            <asp:Label ID="Label5" runat="server" Text="Were you doing any activity?"></asp:Label>
                          
                            <br />
                            <asp:DropDownList ID="DropDownActivity" runat="server">
                                <asp:ListItem Selected="True">None</asp:ListItem>
                                <asp:ListItem>Running</asp:ListItem>
                                <asp:ListItem>Swimming</asp:ListItem>
                                <asp:ListItem>Tennis</asp:ListItem>
                                <asp:ListItem>Badminton</asp:ListItem>
                                <asp:ListItem>Basketball</asp:ListItem>
                                <asp:ListItem>Golf</asp:ListItem>
                                <asp:ListItem>Boxing</asp:ListItem>
                                <asp:ListItem>Football</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>

                            <br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Were you having any food?"></asp:Label>
                            
                            <br />
                            <asp:DropDownList ID="DropDownFood" runat="server">
                                <asp:ListItem Selected="True">None</asp:ListItem>
                                <asp:ListItem>Eggs</asp:ListItem>
                                <asp:ListItem>Cow's milk</asp:ListItem>
                                <asp:ListItem>Peanuts</asp:ListItem>
                                <asp:ListItem>Tree nuts</asp:ListItem>
                                <asp:ListItem>Soy</asp:ListItem>
                                <asp:ListItem>Wheat</asp:ListItem>
                                <asp:ListItem>Fish</asp:ListItem>
                                <asp:ListItem>Shripm & other shell fish</asp:ListItem>
                                <asp:ListItem>Salads</asp:ListItem>
                                <asp:ListItem>Fruits</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>

                            <br />
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Were there any animals nearby?"></asp:Label>
                           
                            <br />
                            <asp:DropDownList ID="DropDownAnimal" runat="server">
                                <asp:ListItem Selected="True">None</asp:ListItem>
                                <asp:ListItem>Birds</asp:ListItem>
                                <asp:ListItem>Cats</asp:ListItem>
                                <asp:ListItem>Dogs</asp:ListItem>
                                <asp:ListItem>Goats</asp:ListItem>
                                <asp:ListItem>Horses</asp:ListItem>
                                <asp:ListItem>Bugs</asp:ListItem>
                                <asp:ListItem>Rats</asp:ListItem>
                                <asp:ListItem>Pigs</asp:ListItem>
                                <asp:ListItem>Snakes</asp:ListItem>
                                <asp:ListItem>Insects</asp:ListItem>
                                <asp:ListItem>Ducks</asp:ListItem>
                                <asp:ListItem>Fish</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                             <br />
                            <br />
                        </asp:WizardStep>

                    <%-- Last wizard step --%>
                        <asp:WizardStep runat="server"  >

                            <asp:Label ID="Lab1" runat="server" Text="Well Done!" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Labe2" runat="server" Text="Now you can check your analysis!"></asp:Label>
                             <br />
                            <br />
                        </asp:WizardStep>

                    </WizardSteps>

                    <StartNextButtonStyle CssClass="buttonAlignCentre" BorderColor="Black"/>
                    <StepPreviousButtonStyle CssClass="buttonAlignCentre" BorderColor="Black" />
                    <StepNextButtonStyle CssClass="buttonAlignCentre" BorderColor="Black" />
                    <FinishPreviousButtonStyle CssClass="buttonAlignCentre" BorderColor="Black"/>
                    <FinishCompleteButtonStyle CssClass="buttonAlignCentre" BorderColor="Black" /> 
                    
                    <FinishNavigationTemplate>

                        <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" BackColor="#ff9933" Text="Go Results"  OnClick="WizardStep_Activate" PostBackUrl="~/Locked/Results.aspx" />
                    </FinishNavigationTemplate>        
                    
                </asp:Wizard>

            </div>

            
        </div>
        </div>

    </div>

</asp:Content>
