﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

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
        String str = "insert into Accomodation (IsMathuraSelected,IsVrindavanSelected,MathuraDate,VrindavanDate,MathuraHotel,VrindavanHotel, Total,userid,Mathuradateto,Vrindavandateto,Nooftravellers,Guideneeded)values(@IsMathuraSelected,@IsVrindavanSelected,@MathuraDate,@VrindavanDate,@MathuraHotel,@VrindavanHotel, @Total,@userid,@Mathuradateto,@Vrindavanto,@Nooftravellers,@Guideneeded);SELECT SCOPE_IDENTITY();";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@IsMathuraSelected", Mathurachkbox.Checked);
        cm.Parameters.AddWithValue("@IsVrindavanSelected", Vrindavanchkbox.Checked);
        cm.Parameters.AddWithValue("@MathuraDate", Mathuradate.Text);
        cm.Parameters.AddWithValue("@VrindavanDate", Vrindavandate.Text);
        cm.Parameters.AddWithValue("@Vrindavanto", Vrindavandateto.Text);
        cm.Parameters.AddWithValue("@MathuraHotel", MathuraHoteldd.Text);
        cm.Parameters.AddWithValue("@Mathuradateto", Mathuradateto.Text);
        cm.Parameters.AddWithValue("@VrindavanHotel", Vrindd.Text);
        cm.Parameters.AddWithValue("@Total", totalAccomodation.Text);
        cm.Parameters.AddWithValue("@userid", int.Parse(Session["Userid"] == null ? "0" : Session["Userid"].ToString()));
        cm.Parameters.AddWithValue("@Nooftravellers", nooftravellers.Text);
        cm.Parameters.AddWithValue("@Guideneeded", guideneeded.Text);
        

          int accomoid = Convert.ToInt32(cm.ExecuteScalar());
        conn.Close();
        
        Response.Write("data saved");




        Response.Redirect("payment.aspx?source=Accomodation&amount=" + totalAccomodation.Text + "&refid=" + accomoid); 
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



    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        CultureInfo provider = CultureInfo.InvariantCulture;
        
        DateTime mathuradateto =  string.IsNullOrWhiteSpace(Mathuradateto.Text) ? new DateTime(): DateTime.ParseExact(Mathuradateto.Text, "M/d/yyyy", provider);
        DateTime vrindaDateto = string.IsNullOrWhiteSpace(Vrindavandateto.Text) ? new DateTime() : DateTime.ParseExact(Vrindavandateto.Text, "M/d/yyyy", provider);
        DateTime mathuradatefrom = string.IsNullOrWhiteSpace(Mathuradate.Text) ? new DateTime() : DateTime.ParseExact(Mathuradate.Text, "M/d/yyyy", provider); 
        DateTime  vrindadatefrom=  string.IsNullOrWhiteSpace(Vrindavandate.Text) ? new DateTime(): DateTime.ParseExact(Vrindavandate.Text, "M/d/yyyy", provider);
        int noofDaysinMathura = (mathuradateto.Subtract(mathuradatefrom)).Days;
        int noofDaysinVrindha = (vrindaDateto.Subtract(vrindadatefrom)).Days;
        int pricePerday = 500;

        int MathuraTotal = noofDaysinMathura * int.Parse(string.IsNullOrWhiteSpace(noOfroomsMathura.Text)?"0":noOfroomsMathura.Text) * pricePerday;


        int VrindaTotal = noofDaysinVrindha * int.Parse(string.IsNullOrWhiteSpace(NoofroomsVrindha.Text) ? "0" : NoofroomsVrindha.Text) * pricePerday;

        int Guidecharges = (noofDaysinMathura + noofDaysinVrindha) *(guideneeded.Text=="Yes"?1:0) * 400;
        totalAccomodation.Text = (MathuraTotal + VrindaTotal + Guidecharges).ToString();

    }
   
}