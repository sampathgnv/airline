using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        title.Text = "Booking Confirmation";
        planeid.Text = (string)(Session["planeid"]); ;
        company.Text = (string)(Session["company"]);
        source.Text = (string)(Session["source"]);
        destination.Text = (string)(Session["destination"]);
        arrival.Text = (string)(Session["arrival"]);
        departure.Text = (string)(Session["departure"]);
        price.Text = Convert.ToString((Int32)(Session["price"]));
    }

    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mainclass.aspx");
    }
}