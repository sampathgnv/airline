using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DataHandlerClass
/// </summary>
namespace DataHandlerClass
{
    public class DataHandlerClass : System.Web.UI.Page
    {
        public SqlCommand cmd;
        public SqlDataReader dr;
        public SqlConnection con;
        public DataHandlerClass()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
        }
        public void select(string username, string password)
        {
            cmd = new SqlCommand("select * from login where username='" + username + "' and password='" + password + "'", con);
        }
        public void insert(string username,int booking_id, string plane_id, string company, string source, string destination, string date, string time,int nop, int price)
        {
            price = price * nop;
            Session["price"] = price;
            cmd = new SqlCommand("INSERT INTO " + username + " VALUES('" + booking_id + "','" + plane_id + "','" + company + "','" + source + "','" + destination + "','" + date + "','" + time + "','" + nop + "','" + price + "');", con);
        }
        public void insert(string plane_id, string company, string source, string destination, string arrival, string departure, int price)
        {
            cmd = new SqlCommand("INSERT INTO flight_data VALUES('" + plane_id + "','" + company + "','" + source + "','" + destination + "','" + arrival + "','" + departure + "','" + price + "');", con);
        }
        public void create(string username)
        {
            cmd = new SqlCommand("CREATE TABLE " + username + "(booking_id int, plane_id varchar(10), company varchar(20), source varchar(50), destination varchar(50), doj varchar(20), time varchar(20), NOP int, price int);", con);
        }
        public SqlCommand select(string source, string destination, string date)
        {
            cmd = new SqlCommand("SELECT * FROM flight_data WHERE source='" + source + "' AND destination='" + destination + "'",con);
            return cmd;
        }
        public SqlCommand select(string username)
        {
            string s = username;
            cmd = new SqlCommand("SELECT * FROM " + s + ";", con);
            return cmd;
        }
    }
    
}