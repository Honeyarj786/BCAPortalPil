using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {

            Credit.Visible = false;
            
            upi.Visible = false;
            OTP.Visible = false;
            upipay.Visible = false;
            otplabel.Visible = false;
            
        
        
        
        }
        
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "Debit/Credit Card") {

            Credit.Visible = true;
           
            upi.Visible = false;
            
        
        
        }
        
        else if (RadioButtonList1.Text == "UPI") {

            Credit.Visible = false;
            
            upi.Visible = true;
            
        
        
        
        }
    }
    protected void upiverify_Click(object sender, EventArgs e)
    {
        upiid.Visible = false;
        upiverify.Visible = false;
        OTP.Visible = true;
        upipay.Visible = true;
        otplabel.Visible = true;
        upilabel.Visible = false;
    }
    protected void upipay_Click(object sender, EventArgs e)
    {
        
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = " insert into pay2 values(@upid,@otp)";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@upid", upiid.Text);
        cm.Parameters.AddWithValue("@otp", OTP.Text);
        cm.ExecuteNonQuery();
        conn.Close();
        Response.Write("data Saved");
        string strMsg = "Payment Sucessfull";
        string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
        Response.Write(script);

    }
    //protected void PayButton_Click(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection();
    //    conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    //    conn.Open();
    //    string str = " insert into payment values(@namoncard,@cardno,@expmon,@expyear,@cvv)";
    //    SqlCommand cmd = new SqlCommand(str, conn);
    //    cmd.Parameters.AddWithValue("@namoncard", Carnam.Text);
    //    cmd.Parameters.AddWithValue("@cardno", Carnum.Text);
    //    cmd.Parameters.AddWithValue("@expmon", Exmon.Text);
    //    cmd.Parameters.AddWithValue("@expyear", Exyear.Text);
    //    cmd.Parameters.AddWithValue("@cvv", cvv.Text);
    //    cmd.ExecuteNonQuery();
    //    conn.Close();
    //    Response.Write("data Saved");
    //    string strMsg = "Payment Sucessfull";
    //    string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
    //    Response.Write(script);
    //}

    protected void PayButton_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = " insert into payment values(@namoncard,@cardno,@expmon,@expyear,@cvv)";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@namoncard", Carnam.Text);
        cm.Parameters.AddWithValue("@cardno", Carnum.Text);
        cm.Parameters.AddWithValue("@expmon", Exmon.Text);
        cm.Parameters.AddWithValue("@expyear", Exyear.Text);
        cm.Parameters.AddWithValue("@cvv", cvv.Text);
        cm.ExecuteNonQuery();
        conn.Close();
        Response.Write("data Saved");
        string strMsg = "Payment Sucessfull";
        string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
        Response.Write(script);
    }
}