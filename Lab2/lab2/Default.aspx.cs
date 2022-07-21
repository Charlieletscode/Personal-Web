using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
            protected void Page_Load2(object sender, EventArgs e)
            {
                float numer;
            if (ce.Text.Length > 0 && fa.Text.Length > 0)
            {
                err.Text = "Enter one value.";
            }
            else if (float.TryParse(ce.Text, out numer) || float.TryParse(fa.Text, out numer))
            {
                if (float.TryParse(fa.Text, out numer)){
                    ce.Text = (numer - 32) / 1.8 + "";
                }
                else if (float.TryParse(ce.Text, out numer)){
                    fa.Text = (numer*1.8 + 32) + "";
                }
            }
            else
            {
                err.Text = "Please enter a correct value.";
            }
        }

        protected void Page_Load1(object sender, EventArgs e)
        {
            err.Text = "";
            fa.Text = "";
            ce.Text = "";
        }
    }
}