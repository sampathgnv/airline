using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DataHandlerClass;

public partial class login : DataHandlerClass.DataHandlerClass
{
    DataHandlerClass.DataHandlerClass db = new DataHandlerClass.DataHandlerClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void login_Click(object sender, EventArgs e)
    {
        if(username.Text=="admin" & password.Text=="admin")
        {
            Response.Redirect("~/admin.aspx");
        }
        db.select(username.Text,password.Text);
        db.dr = db.cmd.ExecuteReader();
        if (db.dr.Read())
        {
            Session["username"] = username.Text;
            Response.Redirect("~/mainclass.aspx");
        }
        else
        {
            username.Text = "";
            password.Text = "";
            warning.Text = "Invalid User / Password";
        }
    }
}