using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;
using System.Net;


namespace webly
{
    public partial class _default : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLastloaded.Text = "";

            Response.Write(HttpContext.Current.Server.MapPath("~/") + "data\\col1.html");
            System.IO.FileInfo fi = new System.IO.FileInfo(HttpContext.Current.Server.MapPath("~/") + "data\\col1.html");
          
            var fileDate = fi.LastWriteTime;
            lblLastloaded.Text = fileDate.ToShortDateString() + " " + fileDate.ToShortTimeString();

        }






        private void CacheBearerToken(string bearerToken)
        {
            // Bearer token currently never expires, but Twitter reccomends checking every 15 mins in case that policy changes.
            Cache.Add("TwitterAPIBearerToken", bearerToken, null, DateTime.Now.AddMinutes(14), Cache.NoSlidingExpiration, CacheItemPriority.Low, null);
        }
    }
}