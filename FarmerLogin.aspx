<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmerLogin.aspx.cs" Inherits="ABCSAMPLE.FarmerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>


    <style> 
        body {
    text-align: center; 
    background-color:papayawhip;
}

#main {
    margin-left: auto;
    margin-right: auto;
    text-align: left; 
    width: 100%;       
}

    </style>
   

    
</head>
<body>
    <form id="form1" runat="server">
        <div class ="#main">
            <asp:Label ID="lblUsername" runat="server" style="display:inline;text-align:center;"  Text="Username:"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Height="28px"></asp:TextBox>
            
        </p>
       
        </div>
        
        <asp:Button ID="btnLogin" runat="server" Text="Login" ToolTip="S" OnClick="btnLogin_Click" />
        
        <p>
            <asp:Label ID="lblLoginStatus" runat="server" Text="Farmer Login Status"></asp:Label>
        </p>
        
    </form>
</body>
</html>

