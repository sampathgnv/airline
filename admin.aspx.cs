using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin : DataHandlerClass.DataHandlerClass
{
    DataHandlerClass.DataHandlerClass db = new DataHandlerClass.DataHandlerClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Clear_Click(object sender, EventArgs e)
    {
        plane_id.Text = "";
        company.Text = "";
        source.Text = "";
        destination.Text = "";
        arrival.Text = "";
        departure.Text = "";
        price.Text = "";
    }

    protected void Insert_Click(object sender, EventArgs e)
    {
        int p = Convert.ToInt32(price.Text);
        db.insert(plane_id.Text,company.Text,source.Text,destination.Text,arrival.Text,departure.Text,p);
        db.cmd.ExecuteNonQuery();
        Response.Redirect("~/admin.aspx");
    }
}