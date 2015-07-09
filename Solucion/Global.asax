<%@ Application Language="C#" %>
<script runat ="server" >
private int cnt;

void Application_Start(object sender, EventArgs e)
{
    cnt=0;    
}

void Session_Start(object sender, EventArgs e)
{
    Session["cv"]= cnt++;
}
</script>