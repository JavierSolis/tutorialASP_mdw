<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContadorVisitas.aspx.cs" Inherits="WebApplication1.ContadorVisitas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server" >
    protected void Page_Load(object sender, EventArgs e) 
    {
        Response.Write(Session["cv"]);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function pageLoad() {
      
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div></div>
    </form>
</body>
</html>
