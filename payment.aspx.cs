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
            if (Request.QueryString["source"] != null && Request.QueryString["source"] != string.Empty)
                PaymentMessage.Text = "Total pending payment for your " + Request.QueryString["source"] + " is Rs ";

            if (Request.QueryString["amount"] != null && Request.QueryString["amount"] != string.Empty)
                PaymentMessage.Text +=  Request.QueryString["amount"] + " .";
        
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
        String str = " insert into payment (UPIId,OTP,paymentType) values(@upid,@otp,@paymenttype); SELECT SCOPE_IDENTITY();";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@upid", upiid.Text);
        cm.Parameters.AddWithValue("@otp", OTP.Text);
        cm.Parameters.AddWithValue("@paymenttype","UPI");

        int paymentid= Convert.ToInt32 (cm.ExecuteScalar());

        string refid = Request.QueryString["refid"];
        if (refid != null && refid != string.Empty)

        {
            var source = Request.QueryString["source"];
            if (source != null && source != string.Empty && source == "Prasad")
            {
                str= "update prasad set paymentid="+ paymentid.ToString()+ " where id="+ refid;

            }
            else if (source != null && source != string.Empty && source == "Accomodation")
            {
                str = "update accomodation set paymentid=" + paymentid.ToString() + " where id=" + refid;
            }
            else  if( source != null && source != string.Empty && source == "Donation"){
                str = "update donation set paymentid=" + paymentid.ToString() + " where id=" + refid;
            }
            else if (source != null && source != string.Empty && source == "SE")
            {
                str = "update banke set paymentid=" + paymentid.ToString() + " where id=" + refid;
            }
            SqlCommand cm2 = new SqlCommand(str, conn);
            cm2.ExecuteNonQuery();
        }
        conn.Close();

        Response.Write("data Saved");
        string strMsg = "Payment Sucessfull";
        string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
        Response.Write(script);

    }

    protected void PayButton_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = " insert into payment (namoncard,cardno,expmon,expyear,cvv,paymenttype) values(@namoncard,@cardno,@expmon,@expyear,@cvv,@paymenttype); SELECT SCOPE_IDENTITY();";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@namoncard", Carnam.Text);
        cm.Parameters.AddWithValue("@cardno", Carnum.Text);
        cm.Parameters.AddWithValue("@expmon", Exmon.Text);
        cm.Parameters.AddWithValue("@expyear", Exyear.Text);
        cm.Parameters.AddWithValue("@cvv", cvv.Text);
        cm.Parameters.AddWithValue("@paymenttype", "credit/debit card");
        int paymentid = Convert.ToInt32(cm.ExecuteScalar());

        string refid = Request.QueryString["refid"];
        if (refid != null && refid != string.Empty)
        {
            var source = Request.QueryString["source"];
            if (source != null && source != string.Empty && source == "Prasad")
            {
                str = "update prasad set paymentid=" + paymentid.ToString() + " where id=" + refid;

            }
            else if (source != null && source != string.Empty && source == "Accomodation")
            {
                str = "update accomodation set paymentid=" + paymentid.ToString() + " where id=" + refid;
            }
            else if (source != null && source != string.Empty && source == "Donation")
            {
                str = "update donation set paymentid=" + paymentid.ToString() + " where id=" + refid;
            }
            else if (source != null && source != string.Empty && source == "SE")
            {
                str = "update banke set paymentid=" + paymentid.ToString() + " where id=" + refid;
            }
            SqlCommand cm2 = new SqlCommand(str, conn);
            cm2.ExecuteNonQuery();
        }
        conn.Close();
        Response.Write("data Saved");
        string strMsg = "Payment Sucessfull";
        string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
        Response.Write(script);
    }
}