 <!-- 
 AutoEventWireup , para habilitar le codigo detras
 CodeBehind , la fuente de codigo detras 
 -->
 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<script runat="server">
    protected void Page_load(object sender, EventArgs e)
    {
        this.btnAceptar.Attributes.Add("OnClick", "javascript: return fnAceptar();");
        RegistrarScript();
    }
    
    //ejemplo de registro de un js en momento de ejecucion

    private void RegistrarScript() 
    {
        const string ScriptKey = "ScriptKey";
        
        if(!ClientScript.IsStartupScriptRegistered(this.GetType(), ScriptKey))
        {
            StringBuilder fn = new StringBuilder();
            fn.Append("function fnAceptar() { ");
            fn.Append("alert('generado en ejecucion:' + document.getElementById(\"txtNombre\").value); ");
            fn.Append("document.getElementById(\"txtNombre\").value = ''; ");
            fn.Append("}");

            ClientScript.RegisterStartupScript(this.GetType(), ScriptKey, fn.ToString(), true);
        }
                
    }
</script>
<script runat="server">
    protected void btnAceptar_click(object sender, EventArgs e)
    {
        lblResultado.Text = txtNombre.Text;
        txtNombre.Text = string.Empty;
    } 
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>bbb</title>
    <!-- Se comento el codigo de script,. para mandarlo al archivo jscode -->

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:Button  ID="btnAceptar" runat="server" Text="Aceptar"  ></asp:Button>
        <br />
        <asp:Label ID="lblResultado" runat = "server" Text="cc"></asp:Label>  
    </div>
    
    <div>otro formularion con con load desde codigo behind</div>
    
    <div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button  ID="Button2" runat="server" Text="Aceptar" onclick="eventoAceptar_behind" ></asp:Button>
        <br />
        <asp:Label ID="Label2" runat = "server" Text="ee"></asp:Label>
    
    </div>
    
    </form>
    
    
    
    
</body>
</html>
