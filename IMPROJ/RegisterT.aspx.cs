using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMPROJ
{
    public partial class RegisterT : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e) 
        {
            LoadRecord();
          
        }

      
        SqlConnection con = new SqlConnection("Data Source=GEPZU;Initial Catalog=Gepzu;Integrated Security=True");

     
        void LoadRecord()   
        {
            SqlCommand comm = new SqlCommand("select * from teaminfo", con); 
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }



        protected void btninsert_Click1(object sender, EventArgs e) 
        {
            if (Page.IsValid)

             
                try
                {
                    con.Open();
                    SqlCommand comm = new SqlCommand("Insert into teaminfo values('" + int.Parse(txtid.Text) + "','" + txtemail.Text + "','" + txtname.Text 
                        + "','" + txtteam.Text + "','" + txtcontact.Text + "','" + DropDownList1.SelectedValue + "')", con);
                    comm.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Team Registered Successfully');", true);
                    LoadRecord();

                    txtid.Text = ""; 
                    txtemail.Text = "";
                    txtname.Text = "";
                    txtteam.Text = "";
                    txtcontact.Text = "";
                }

                catch { ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Team ID exist');", true); }

        }


        protected void Button1_Click(object sender, EventArgs e) 
        {
            string script = "if (confirm('Are you sure you want to clear all data?')) { " +
                      "document.getElementById('" + txtid.ClientID + "').value = ''; " +
                      "document.getElementById('" + txtemail.ClientID + "').value = ''; " +
                      "document.getElementById('" + txtname.ClientID + "').value = ''; " +
                      "document.getElementById('" + txtteam.ClientID + "').value = ''; " +
                      "document.getElementById('" + txtcontact.ClientID + "').value = ''; }";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Confirm", script, true);
        }

        protected void btnsearch_Click(object sender, EventArgs e) 
        {
            try
            {
                SqlCommand comm = new SqlCommand("select * from teaminfo where Teamid= '" + int.Parse(txtsearch.Text) + "'", con);  
                SqlDataAdapter d = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                d.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
               
                txtemail.Text = dt.Rows[0][1].ToString();
                txtid.Text = dt.Rows[0][0].ToString();
                txtname.Text = dt.Rows[0][2].ToString();
                txtteam.Text = dt.Rows[0][3].ToString();
                txtcontact.Text = dt.Rows[0][4].ToString();

                txtid.Enabled = false;  
            }
          
            catch { ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Team Record Does not exist');", true); }
            

        }


        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtsearch.Text) || !int.TryParse(txtsearch.Text, out int teamId))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please select record first to update record.');", true);
                return;
            }

            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "confirmDelete",
                    "if(confirm('Are you sure you want to update this record?')){deleteRecord();}", true);
            }

            con.Open();
            SqlCommand comm = new SqlCommand("update teaminfo set Email='" + txtemail.Text + "',Name='" + txtname.Text + "',Team='" + txtteam.Text
                + "',Contact='" + txtcontact.Text + "',Game='" + DropDownList1.SelectedValue + "' where Teamid = '" + int.Parse(txtsearch.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Team Record Successfully Updated!');", true);
            LoadRecord();

        }





        protected void btndelete_Click1(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txtsearch.Text) || !int.TryParse(txtsearch.Text, out int teamId))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please select team id to delete.');", true);
                return;
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "confirmDelete",
                "if(confirm('Are you sure you want to delete this record?')){deleteRecord();}", true);


            {
                con.Open();
                SqlCommand comm = new SqlCommand("DELETE FROM teaminfo WHERE Teamid = @TeamId", con);
                comm.Parameters.AddWithValue("@TeamId", teamId);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Team Record Successfully Deleted!');", true);
                LoadRecord();
            }


            txtid.Text = "";
            txtemail.Text = "";
            txtname.Text = "";
            txtteam.Text = "";
            txtcontact.Text = "";
        }
       

      


    protected void Button4_Click(object sender, EventArgs e)  
        {
          
            Response.Redirect(Request.RawUrl);
        }
    }
}