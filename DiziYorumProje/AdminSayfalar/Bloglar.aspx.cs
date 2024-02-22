using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["KULLANICI"].ToString());

            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }

            var bloglar = (from x in db.TBLBLOG
                            select new
                            {
                                x.BLOGID,
                                x.BLOGBASLIK,
                                x.BLOGTARIH,
                                x.TBLTUR.TURAD,
                                x.TBLKATEGORI.KATEGORIAD
                            }).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();
        }
    }
}