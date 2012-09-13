<%@ Page Title="pilquiy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pilquiy._Default" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="BodyContent">
  <p>Lorem ipsum...</p> 
  <p><input type="number" id="num" /><input type="button" value="get" onclick="btnGet()" /></p>
    
  <pre><asp:Label runat="server" ID="testLabel" Text="this_is_a_test_label" /></pre>

    <p>Draggable 1</p>
    <style>
	#draggable { width: 150px; height: 150px; padding: 0.5em; background-color: coral; }
        .demo
        {
            background-color: cornsilk;
        }
	</style>
	<script>
	    $(function () {
	        $("#draggable").draggable();
	    });
	</script>

    <div class="demo">

    <div id="draggable" class="ui-widget-content">
	    <p>Drag me around</p>
    </div>

    </div><!-- End demo -->
    

</asp:Content>
