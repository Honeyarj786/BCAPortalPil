﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Donation : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into donation(temple,amount,userid) values(@temple,@amount,@userid);SELECT SCOPE_IDENTITY()";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.AddWithValue("@temple", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@amount", tb23.Text);
        cmd.Parameters.AddWithValue("@userid", int.Parse(Session["Userid"] == null ? "0" : Session["Userid"].ToString()));
        int donationid = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();
       

        Response.Redirect("payment.aspx?source=Donation&amount=" + tb23.Text+"&refid="+donationid);  


    }
}