using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(BulletedList1.Items.Count>0)BulletedList1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label1.Text.ToString().Equals("Added")) { Button2.Text = "Add to Cart"; Label1.Text = " ";
                ListBox1.ClearSelection();
            }
            else if (ListBox1.SelectedIndex >= 0) {Session.Add("Names", ListBox1.SelectedItem); BulletedList1.Items.Add(Session["Names"].ToString());  Label1.Text = "Added"; Button2.Text = "Continue Shopping"; }
            else { Label1.Text = "Please make a selection.";
                ListBox1.ClearSelection();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Clear();
            BulletedList1.Items.Clear();
            BulletedList1.Visible = false;
        }
    }
}