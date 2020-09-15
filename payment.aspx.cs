using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {

            Credit.Visible = false;
            Nb.Visible = false;
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
            Nb.Visible = false;
            upi.Visible = false;
            
        
        
        }
        else if (RadioButtonList1.Text == "Net Banking") {


            Credit.Visible = false;
            Nb.Visible = true;
            upi.Visible = false;
        
        
        }
        else if (RadioButtonList1.Text == "UPI") {

            Credit.Visible = false;
            Nb.Visible = false;
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
        string strMsg = "Payment Sucessfull";
        string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
        Response.Write(script);
    }
}