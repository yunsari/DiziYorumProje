using DiziYorumProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }

            var yorumlar = (from x in db.TBLYORUM select new
            {
                x.YORUMID,
                x.KULLANICIAD,
                x.TBLBLOG.BLOGBASLIK
            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}