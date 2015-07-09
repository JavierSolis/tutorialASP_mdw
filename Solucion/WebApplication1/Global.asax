<%@ Application Language="C#" %>
<script runat ="server" >
private int cnt;

void Application_Start(object sender, EventArgs e)
{   
    cnt=0;    
}

void Session_Start(object sender, EventArgs e)
{
    //preguntamos sobre las configuraciones
    if(Convert.ToBoolean(ConfigurationManager.AppSettings.Get("HabilitarContadorVisitas")))
    {
        Session["cv"]= cnt++;
    }
    
}
</script>