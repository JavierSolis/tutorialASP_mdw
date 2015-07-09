<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO.aspx.cs" Inherits="WebApplication1.bdSimulacion.ADO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ADO</title>
    <style type="text/css">
        .style1{width: 100%;}
        .style2{width: 86%;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class=style1>
        <tr>
            <td class=style2>
                <asp:Label ID="lblNombre" runat=server Font-Names="Arial" Font-Size="10pt" Text="Nombre"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat=server Width="205px"></asp:TextBox>                
            </td>
        </tr>
        <tr>
            <td class=style2>
                <asp:Label ID="lblApellido" runat=server Font-Names="Arial" Font-Size="10pt" Text="Apellido"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtApellido" runat=server Width="205px"></asp:TextBox>                
            </td>
        </tr>
        <tr>
            <td class=style2>
                <asp:Label ID="lblEdad" runat=server Font-Names="Arial" Font-Size="10pt" Text="Apellido"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEdad" runat=server Width="40px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class=style2>&amp;nbsp;</td>
            <td>
                <asp:Label runat=server ID="lblMensajes" Font-Bold=true Font-Names="Arial" Font-Size="10pt" ForeColor=Red></asp:Label>
            </td>
        </tr>
        </table>
        
        <asp:Button ID="btnGuardar" runat=server  Text="Guardar" OnClick="btnGuardar_click" />
        <br />
        <asp:GridView ID="GridView1" runat=server>
        </asp:GridView>
        
        <br />
        <br />
    </div>
    </form>
</body>
</html>
