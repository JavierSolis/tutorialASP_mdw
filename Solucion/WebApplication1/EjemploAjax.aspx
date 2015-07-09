<!--
Pagina de jemplop de ajax
, acomparacionm de la pagian de menu, no recarga la pagina, solo la seccion del menu
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EjemploAjax.aspx.cs" Inherits="WebApplication1.EjemploAjax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScripManager1" runat=server ></asp:ScriptManager>
        <asp:UpdatePanel ID="padatePanel1" runat=server>
            <ContentTemplate>
            <asp:Menu ID="Menu1" runat=server Orientation=Horizontal >
            <Items>
            <asp:MenuItem Text="op1">
                <asp:MenuItem Text="sop1" />
                <asp:MenuItem Text="sop2" />
            </asp:MenuItem>
            
            <asp:MenuItem Text="op2"></asp:MenuItem>
            <asp:MenuItem Text="op3"></asp:MenuItem>
            </Items>
        </asp:Menu>
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
