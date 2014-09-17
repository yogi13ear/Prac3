using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class QuestionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        private void ToText(object sender, EventArgs e)
        {
            var IsPost = true;
            var count = 0;
            
            if (IsPost)
            {
                var firstName = Request["FirstName"];
                var lastName = Request["LastName"];
                var email = Request["Email"];

                var userData = firstName + "," + lastName +
                    "," + email + Environment.NewLine;

                var dataFile = Server.MapPath("~/App_Data/data.txt");
                dataFile.Insert(count+1, userData);
                
            }
        }
    }
    
    
    
}