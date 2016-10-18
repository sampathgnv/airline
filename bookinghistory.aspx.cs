using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DataHandlerClass;

public partial class bookinghistory : DataHandlerClass.DataHandlerClass
{
    DataHandlerClass.DataHandlerClass db = new DataHandlerClass.DataHandlerClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string username = (string)(Session["username"]);
        db.select(username);
        db.dr = db.cmd.ExecuteReader();
        if(db.dr.Read())
        {
            db.dr.Close();
            bookhistory.SelectCommand = "SELECT * FROM "+ username +";";
            bookhistory.DeleteCommand = "DELETE FROM " + username + " WHERE [booking_id] = @booking_id ;";
        }
        else
        {
            empty.Text = "NO BOOKING HISTORY FOUND! GO BACK TO BOOK A TICKET!";
        }
        
    }

    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mainclass.aspx");
    }
}