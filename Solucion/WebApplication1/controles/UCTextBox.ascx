<!-- Control personlizado de ejemplo -->
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCTextBox.ascx.cs" Inherits="WebApplication1.controles.UCTextBox" %>

<!--AutoPostBack,Con esta propiedad va als ervidor por cada tecla apretada-->
<asp:TextBox 
    ID="textBox1" 
    runat=server 
    AutoPostBack=true 
    OnTextChanged="textBox_textChanged">
</asp:TextBox>



