<%@ Page Title="pilquiy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pilquiy._Default" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="BodyContent">
  <p>Lorem ipsum...</p> 
  <p><input type="number" id="num" /><input type="button" value="get" onclick="btnGet()" /></p>
    
  <pre><asp:Label runat="server" ID="testLabel" Text="this_is_a_test_label" /></pre>

</asp:Content>
