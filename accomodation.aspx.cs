using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class accomodation : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Vrindavandate.Enabled = false;
            Vrindd.Enabled = false;
            Mathuradate.Enabled = false;
            MathuraHoteldd.Enabled = false;
            Button1.Visible = false;
            Mathuradateto.Enabled = false;
            Vrindavandateto.Enabled = false;
        }

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = "insert into Accomodation values(@IsMathuraSelected,@IsVrindavanSelected,@MathuraDate,@VrindavanDate,@MathuraHotel,@VrindavanHotel, @Total,@userid,@Mathuradateto,@Vrindavanto)";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@IsMathuraSelected", Mathurachkbox.Checked);
        cm.Parameters.AddWithValue("@IsVrindavanSelected", Vrindavanchkbox.Checked);
        cm.Parameters.AddWithValue("@MathuraDate", Mathuradate.Text);
        cm.Parameters.AddWithValue("@VrindavanDate", Vrindavandate.Text);
        cm.Parameters.AddWithValue("@VrindavanDate", Vrindavandateto.Text);
        cm.Parameters.AddWithValue("@MathuraHotel", MathuraHoteldd.Text);
        cm.Parameters.AddWithValue("@MathuraDate", Mathuradateto.Text);
        cm.Parameters.AddWithValue("@VrindavanHotel", Vrindd.Text);
        cm.Parameters.AddWithValue("@Total", DBNull.Value);
        cm.Parameters.AddWithValue("@userid", DBNull.Value );
        
        



        cm.ExecuteNonQuery();
        conn.Close();
        
        Response.Write("data saved");


        Response.Redirect("book.aspx");
    }
    protected void Mathurachkbox_CheckedChanged(object sender, EventArgs e)
    {
        if (Mathurachkbox.Checked )
        {
            Mathuradate.Enabled = true;
            MathuraHoteldd.Enabled = true;
            Mathuradateto.Enabled = true;
            Button1.Visible = true;
           

        }
        else
        {
            Mathuradate.Enabled = false;
            MathuraHoteldd.Enabled = false;
            Mathuradateto.Enabled = false;
            if (Vrindavanchkbox.Checked==false)
            {
                Button1.Visible = false;
            }
            
        
        }
    }
    protected void Vrindavanchkbox_CheckedChanged(object sender, EventArgs e)
    {
        if (Vrindavanchkbox.Checked == true)
        {
            Vrindavandate.Enabled = true;
            Vrindd.Enabled = true;
            Vrindavandateto.Enabled = true;
            Button1.Visible = true;
        }
        else
        {
            Vrindavandate.Enabled = false;
            Vrindd.Enabled = false;
            Vrindavandateto.Enabled = false;
            if (Mathurachkbox.Checked == false)
            {
                Button1.Visible = false;
            }
        }
    }
}