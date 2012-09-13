using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pilquiy
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            testLabel.Text = DateTime.Now.ToShortTimeString();
            // do some basic connecting to the database
            StringBuilder sb = new StringBuilder();
            sb.Append("<br/>");
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["p1L4u1y"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from dbo.Account", conn);
                cmd.CommandType = System.Data.CommandType.Text;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    sb.Append(reader.GetInt32(0)).Append("<br/>");
                    sb.Append("&nbsp;").Append(reader.GetString(1)).Append("<br/>");
                    sb.Append("&nbsp;").Append(reader.GetString(2)).Append("<br/>");        
                }

            }
            testLabel.Text += sb.ToString();
        }
    }
}