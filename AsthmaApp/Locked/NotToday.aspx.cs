using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsthmaApp
{
    public partial class NotToday : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            wzd.PreRender += new EventHandler(wzd_PreRender);
        }


        protected void wzd_PreRender(object sender, EventArgs e)
        {
            Repeater SideBarList = wzd.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;

            SideBarList.DataSource = wzd.WizardSteps;
            SideBarList.DataBind();

        }

        public string GetClassForWizardStep(object wizardStep)
        {
            WizardStep step = wizardStep as WizardStep;

            if (step == null)
            {
                return "";
            }

            int stepIndex = wzd.WizardSteps.IndexOf(step);

            if (stepIndex < wzd.ActiveStepIndex)
            {
                return "stepCompleted";
            }
            else if (stepIndex > wzd.ActiveStepIndex)
            {
                return "stepNotCompleted";
            }
            else
            {
                return "stepCurrent";
            }
        }



        protected void WizardStep_Activate(object sender, EventArgs e)
        {
            System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            conn.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;" +
                @"Data source= F:\UNIVERSITY FILES\MONASH\4th Semester\FIT5120(Industrial Experience)\FinalProject\AsthmaAppV1.2\AsthmaAppV1.1\AsthmaApp\AsthmaApp\AsthmaKidsDB.accdb";

            try
            {
                conn.Open();
                String activity_val = DropDownActivity.SelectedValue.ToString();
                String my_query = "INSERT INTO PersonalRecords(Activity)VALUES('" + activity_val + "')";

                OleDbCommand cmd = new OleDbCommand(my_query, conn);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data inserted successfully!')", true);


            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Failed to insert data into database!')", true);

            }
            finally
            {
                conn.Close();
            }
        }


        //Future Date disable
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}