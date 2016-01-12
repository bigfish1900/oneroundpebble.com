<%@ Application Language="C#" %>

<script runat="server">
void Application_BeginRequest(object source, EventArgs e)
{
  if (Request.Url.PathAndQuery.ToLower().Contains("rss.aspx"))
  {
    Response.Redirect("http://mjrichardson.com/feed.xml");
  }
  else if (Request.Url.PathAndQuery.StartsWith("blog/"))
  {
    Response.Redirect("http://mjrichardson.com/" + Request.Url.PathAndQuery);
  }
}
</script>