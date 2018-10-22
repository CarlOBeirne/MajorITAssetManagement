using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings ["MITAMconnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Tickets (TicketID,TicketTitle,TicketDetails,UrgencyID,UserID) values (@TicketID,@TicketTitle,@TicketDetails,@UrgencyID,@UserID)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@TicketID", newGUID.ToString());
                object TicketTitle = null;
                com.Parameters.AddWithValue("@TicketTitle", TicketTitle.Text);
                object TicketDetails = null;
                com.Parameters.AddWithValue("@TicketDetails", TicketDetails.Text);
                object UrgencyID = null;
                com.Parameters.AddWithValue("@UrgencyID", UrgencyID.SelectedItem.Text);
                object UserID = null;
                com.Parameters.AddWithValue("@UserID", UserID.SelectedItem.Text);
                

                com.ExecuteNonQuery();
                Response.Write("Registration successful");


                conn.Close();
            }
    }
}