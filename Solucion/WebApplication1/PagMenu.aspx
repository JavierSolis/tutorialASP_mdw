<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagMenu.aspx.cs" Inherits="WebApplication1.PagMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    </div>
    </form>
</body>
</html>
