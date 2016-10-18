using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using DataHandlerClass;

public partial class listdata : DataHandlerClass.DataHandlerClass
{
    DataHandlerClass.DataHandlerClass db = new DataHandlerClass.DataHandlerClass();
    SqlDataAdapter adapter = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        string source = Convert.ToString((Session["src"]));
        string destination = Convert.ToString((Session["dest"]));
        db.select(source, destination, "1");
        adapter.SelectCommand = db.select(source,destination,"1");
        adapter.Fill(ds);
        adapter.Dispose();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        double price = Convert.ToInt32(GridView1.SelectedRow.Cells[7].Text);
        db.select((string)(Session["username"]));
        db.dr = db.cmd.ExecuteReader();
        if(db.dr.Read())
        {
            price = price - (price * 0.1);
        }
        else
        {
            
        }
        Session["planeid"] = (GridView1.SelectedRow.Cells[1].Text);
        Session["company"] = Convert.ToString(GridView1.SelectedRow.Cells[2].Text);
        Session["source"] = Convert.ToString(GridView1.SelectedRow.Cells[3].Text);
        Session["destination"]  = Convert.ToString(GridView1.SelectedRow.Cells[4].Text);
        Session["arrival"] = Convert.ToString(GridView1.SelectedRow.Cells[5].Text);
        Session["departure"] = Convert.ToString(GridView1.SelectedRow.Cells[6].Text);
        Session["price"] = (int)price;
    }

    protected void book_Click(object sender, EventArgs e)
    {
        Random rand = new Random();
        int bid = rand.Next(10000000, 19999999);
        int price = (int)(Session["price"]);
        string username = (string)(Session["username"]);
        int np ;
        string nop;
        nop = (string)(Session["nop"]);
        np = Convert.ToInt32(nop);
        string doj = (string)(Session["doj"]);
        db.insert(username,bid,(string)(Session["planeid"]), (string)(Session["company"]), (string)(Session["source"]), (string)(Session["destination"]), doj, (string)(Session["arrival"]), np, price);
        db.cmd.ExecuteNonQuery();
        Response.Redirect("~/display.aspx");
    }
}