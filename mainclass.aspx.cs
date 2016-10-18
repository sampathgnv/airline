using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DataHandlerClass;

public partial class mainclass : DataHandlerClass.DataHandlerClass
{
    DataHandlerClass.DataHandlerClass db = new DataHandlerClass.DataHandlerClass();
    SqlCommand command = new SqlCommand();
    string date;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string username = (string)(Session["username"]);
            header.Text = "Welcome " + username + "!";
            db.create(username);
            int x = Convert.ToInt32(db.cmd.ExecuteNonQuery());
            if (x < 0)
            {
                db.create(username);
            }
        }
        catch
        {
        }
    }
    protected void ow_CheckedChanged(object sender, EventArgs e)
    {
        if(rt.Checked)
        {
            ow.Checked = false;
        }
        else
        {
            ow.Checked = true;
        }
    }

    protected void rt_CheckedChanged(object sender, EventArgs e)
    {
        if (ow.Checked)
        {
            rt.Checked = false;
        }
        else
        {
            rt.Checked = true;
        }
    }

    protected void doj_SelectionChanged(object sender, EventArgs e)
    {
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        Session["src"] = source.SelectedItem.Text;
        Session["dest"] = destination.SelectedItem.Text;
        date = doj.Text;
        Session["doj"] = date;
        Session["nop"] = nop.SelectedItem.Text;
        Response.Redirect("~/listdata.aspx");
    }

}