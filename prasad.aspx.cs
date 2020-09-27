using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class prasad : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = "insert into prasad (prasad,total, userid)values(@prasd,@total,@userid);SELECT SCOPE_IDENTITY();";
        SqlCommand cmd = new SqlCommand(str,conn);
        string selectedPrasads = string.Empty;
        if (CheckBoxList1.Items[0].Selected)
        {

            selectedPrasads = selectedPrasads + "chappan bhog,";
        }
        if (CheckBoxList1.Items[1].Selected)
        {
            selectedPrasads = selectedPrasads + "dry fruit,";
        }
        if (CheckBoxList1.Items[2].Selected)
        {
            selectedPrasads = selectedPrasads + "mathura peda,";
        }
        if (CheckBoxList1.Items[3].Selected)
        {
            selectedPrasads = selectedPrasads + "pista peda,";
        }
        if (CheckBoxList1.Items[4].Selected)
        {
            selectedPrasads = selectedPrasads + "son papdi,";
        }
        cmd.Parameters.AddWithValue("@prasd", selectedPrasads);
        cmd.Parameters.AddWithValue("@total", tb22.Text);
        cmd.Parameters.AddWithValue("@userid", int.Parse(Session["Userid"] == null ? "0" : Session["Userid"].ToString()));
        int prasadid = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();
        Response.Redirect("payment.aspx?source=Prasad&amount=" + tb22.Text + "&refid=" + prasadid);   
    
    }
    protected void TotalCharges_Click(object sender, EventArgs e)
    {
        int total = calculateTotal();
        tb22.Text = total.ToString();


    }

    private int calculateTotal()
    {
        int chappan = 1000, dry = 500, mathurapeda = 800, pistapeda = 700, sonpapdi = 600;
        int total = 0;
        if (CheckBoxList1.Items[0].Selected)
        {
            total = total + chappan;
        }
        if (CheckBoxList1.Items[1].Selected)
        {
            total = total + dry;
        }
        if (CheckBoxList1.Items[2].Selected)
        {
            total = total + mathurapeda;
        }
        if (CheckBoxList1.Items[3].Selected)
        {
            total = total + pistapeda;
        }
        if (CheckBoxList1.Items[4].Selected)
        {
            total = total + sonpapdi;
        }
        return total;

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int total = calculateTotal();
        tb22.Text = total.ToString();
    }
}