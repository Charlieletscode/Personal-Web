using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load2(object sender, EventArgs e)
        {
            err.Text = "";
               double numer, dd1, dd2;
            if (ce.Text.Length > 0 && fa.Text.Length > 0 || d1.SelectedValue == d2.SelectedValue)
            {
                err.Text = "Enter one value. or Please choose a different unit";
            }
            else if (double.TryParse(ce.Text, out numer) || double.TryParse(fa.Text, out numer))
            {
                if (double.TryParse(fa.Text, out numer))
                {
                    double.TryParse(d1.SelectedItem.Value.ToString(), out dd1);
                    double.TryParse(d2.SelectedItem.Value.ToString(), out dd2);
                    ce.Text = (numer * dd1 / dd2).ToString("0." + new string('#', 339)) + "";
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