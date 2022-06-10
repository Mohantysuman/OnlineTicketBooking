using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineTicketBokkingSystem
{
    public partial class Home : System.Web.UI.Page
    {
        string UserName;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName = Session["UserName"].ToString();
            if (!this.IsPostBack)
            {
                if (UserName != null)
                {
                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    string query = "SELECT TOP 10 MovieName FROM Movies;";

                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmd.Connection = con;
                                sda.SelectCommand = cmd;
                                using (DataSet ds = new DataSet())
                                {
                                    sda.Fill(ds);
                                    gbMovies.DataSource = ds.Tables[0];
                                    gbMovies.DataBind();
                                }
                            }
                        }
                    }
                }
                else
                {
                    Response.Redirect("startup.aspx");
                }
            }
        }
        protected void btnCreateBooking_Click(object sender, EventArgs e)
        {
            Session["UserName"] = UserName;
            Response.Redirect("SeatBooking.aspx");    
        }
    }
}