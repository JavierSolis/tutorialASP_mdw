<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
<form runat=server>
    <asp:Login ID="Login1" runat="server"
        LoginButtonText="Ingresar"
        PasswordLabelText="Contraseña:"
        RememberMeText="Recordar"
        TitleText="Login"
        UserNameLabelText="Usuario:"
        OnAuthenticate="Login_Authenticate" >
    </asp:Login>
</form>
</body>
</html>
