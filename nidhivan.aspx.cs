using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class NIDHIVAN : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        String str = "insert into nidhivan(person,timing,sringar,userid) values(@person,@timing,@sringar,@userid);SELECT SCOPE_IDENTITY();";
        SqlCommand cmd = new SqlCommand(str, conn);
        string selectedPrasads = string.Empty;
        if (Sringar.Items[0].Selected)
        {

            selectedPrasads = selectedPrasads + "Yes";
        }
        if (Sringar.Items[1].Selected)
        {
            selectedPrasads = selectedPrasads + "No,";
        }

        cmd.Parameters.AddWithValue("@person", tb19.Text);
        cmd.Parameters.AddWithValue("@timing", TimingList2.Text);
        cmd.Parameters.AddWithValue("@Sringar", Sringar.Text);
        cmd.Parameters.AddWithValue("@userid", int.Parse(Session["Userid"] == null ? "0" : Session["Userid"].ToString()));
        int Nidhivanid = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();

        Response.Redirect("payment.aspx?source=SEN&amount=" + Total.Text + "&refid=" + Nidhivanid);   
    


        //String str = "insert into banke values(@person,@timing,@sringar)";
        //SqlCommand cmd = new SqlCommand(str, conn);
        //cmd.Parameters.AddWithValue("@person", tb19.Text);
        //cmd.Parameters.AddWithValue("@timing", TimingList2.Text);
        //cmd.Parameters.AddWithValue("@sringar", Sringar.Text);
        //cmd.ExecuteNonQuery();
        //tb19.Text = " ";
        //TimingList2.Text = " ";
        //Sringar.Text = " ";
        //Response.Write("data saved");
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int pricePerperson = 100;
        int perons = int.Parse(tb19.Text);
        int Sringarcharge = (Sringar.Text == "Yes" ? 1 : 0) * 500;

        int TravTotal = (perons * pricePerperson) + Sringarcharge;
        Total.Text = TravTotal.ToString();
    }
    protected void Sringar_SelectedIndexChanged(object sender, EventArgs e)
    {
        int pricePerperson = 100;
        int perons = int.Parse(tb19.Text);
        int Sringarcharge = (Sringar.Text == "Yes" ? 1 : 0) * 500;

        int TravTotal = (perons * pricePerperson) + Sringarcharge;
        Total.Text = TravTotal.ToString();

    }
    protected void tb19_TextChanged(object sender, EventArgs e)
    {
        int pricePerperson = 100;
        int perons = int.Parse(tb19.Text);
        int Sringarcharge = (Sringar.Text == "Yes" ? 1 : 0) * 500;

        int TravTotal = (perons * pricePerperson) + Sringarcharge;
        Total.Text = TravTotal.ToString();

    }
}