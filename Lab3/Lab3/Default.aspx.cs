using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            if (TextBox1.Text.Equals("") || TextBox1.Text.Length > 6)
            {
                co.Text = "Please enter a string from 1 to 6 characters";
            }
            else
            {
                anagram(TextBox1.Text, TextBox1.Text.Length, "");               {
                    //for (int i = 0; i < ListBox1.Items.Count-1; i++)
                    //{
                    //    String temp = ListBox1.Items[i].ToString(); 
                    //    for (int j = 1; j < ListBox1.Items.Count; j++)
                    //    {
                    //        if (ListBox1.Items[j].Text.Equals(temp))
                    //            ListBox1.Items.RemoveAt(j);
                    //    }
                    //}
                    //var arr = this.ListBox1.Items.Cast<string>().Distinct().ToArray();


                    //ListBox1.Items.Clear();
                    //for (int i = 0; i < ListBox1.Items.Count; i++)
                    //{ 
                    //    ListBox1.Items[i].Text = arr[i];
                    //}
                        // ListBox1.Items.RemoveAt(ListBox1.Items.Count - 1);
                    }
                co.Text = ListBox1.Items.Count + " anagrams found.";
            }
            TextBox1.Text = "";
        }
        String anagram(String t, int lenght, String a)
        {
            if (lenght == 0)
            {
                if (CheckBox1.Checked && ListBox1.Items.Contains(new ListItem(a))) return "";
                else ListBox1.Items.Add(a.ToString()); return t.ToString();
            }
            for (int i = 0; i < lenght; i++)
            {
                char c = t[i];

                String lsub = t.Substring(0, i);
                String rsub = t.Substring(i + 1);
                String total = lsub + rsub;
                anagram(total, total.Length, a + c);
            }
            return t;
        }

    }

}