using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCSAMPLE
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFilterDateRange_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProductsDataRange.aspx");
            
        }

        protected void btnFilterThroughProdDesription_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProductsDescriptionRange.aspx");
        }
    }
}