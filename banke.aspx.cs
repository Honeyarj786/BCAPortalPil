using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class banke : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into banke(person,timing,peda,userid) values(@person,@timing,@peda,@userid);SELECT SCOPE_IDENTITY();";
        SqlCommand cmd = new SqlCommand(str, conn);

        string selectedPrasads = string.Empty;
        if (PedaList.Items[0].Selected)
        {

            selectedPrasads = selectedPrasads + "Yes";
        }
        if (PedaList.Items[1].Selected)
        {
            selectedPrasads = selectedPrasads + "No,";
        }

        cmd.Parameters.AddWithValue("@person", tb16.Text);
        cmd.Parameters.AddWithValue("@timing", TimingList.Text);
        cmd.Parameters.AddWithValue("@peda", PedaList.Text);
        cmd.Parameters.AddWithValue("@userid", int.Parse(Session["userid"] == null ? "0" : Session["userid"].ToString()));
        int bankeid = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();

        Response.Redirect("payment.aspx?source=SEB&amount=" + Total.Text + "&refid=" + bankeid);   
    
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int pricePerperson = 100;
        int perons = int.Parse(tb16.Text);
        int pedacharge = (PedaList.Text == "Yes" ? 1 : 0) * 500;

        int TravTotal = (perons * pricePerperson) + pedacharge;
        Total.Text = TravTotal.ToString();


    }

    protected void PedaList_SelectedIndexChanged(object sender, EventArgs e)
    {
        int pricePerperson = 100;
        int perons = int.Parse(tb16.Text);
        int pedacharge = (PedaList.Text == "Yes" ? 1 : 0) * 500;

        int TravTotal = (perons * pricePerperson) + pedacharge;
        Total.Text = TravTotal.ToString();

    }
    protected void tb16_TextChanged(object sender, EventArgs e)
    {
        int pricePerperson = 100;
        int perons = int.Parse(tb16.Text);
        int pedacharge = (PedaList.Text == "Yes" ? 1 : 0) * 500;

        int TravTotal = (perons * pricePerperson) + pedacharge;
        Total.Text = TravTotal.ToString();

    }
}

   
   