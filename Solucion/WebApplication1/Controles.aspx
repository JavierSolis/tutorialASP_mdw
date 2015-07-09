<!-- 
Pagina de ejemplo para cargar controles dinamicamente
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Controles.aspx.cs" Inherits="WebApplication1.Controles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script type="text/javascript">
    
      function pageLoad() 
      {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblCantidad" runat=server Text="Ingrese el numero de controles a generar"></asp:Label>
        <asp:TextBox ID="txtCantidad" runat=server ></asp:TextBox>
        <asp:Button ID="btnGenerar" runat=server OnClick="btnGenerar_Click" Text="Crear los controles" />
    </div>
    </form>
</body>
</html>
