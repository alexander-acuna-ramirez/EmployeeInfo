<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeeInfo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            height:100vh;
            width:100%;
            font-family: Arial, Helvetica, sans-serif;
            color: white;
            background-image: url('sky.png');
            background-size:cover;
            display:flex;
            align-items:center;
            justify-content:center;
        }

        .container {
            background-color: #4158D0;
            background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
            padding:25px;
            border-radius:25px;
            width:450px;
            display:flex;
            flex-direction:column;
        }
        #form1 {
          display:flex;
          flex-direction:column;
        }
        .title-container {
            color:white;
            text-align:center;
            width:100%;
        }
        .btn {
            padding: 5px 15px;
            margin:5px;
        }
        .box {
            padding:10px 5px;
            margin-bottom:15px;
            border-radius: 4px;
            outline:none;

        }
        .drop {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title-container">
            <h1>
                Ingenieria de Sistemas
            </h1>
        </div>
        <form id="form1" runat="server">
            <asp:Label  ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="Nombre" class="box"  runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="Apellido" class="box"  runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Codigo"></asp:Label>
            <asp:TextBox ID="Codigo" class="box"  runat="server"></asp:TextBox>

            
               
            <asp:Label ID="Label4" runat="server" Text="Posicion"></asp:Label>

            <asp:RadioButtonList ID="Posicion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>Trabajador</asp:ListItem>
                <asp:ListItem>Jefe</asp:ListItem>
                <asp:ListItem>Vicepresidente</asp:ListItem>
                <asp:ListItem>Presidente</asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label ID="Label5" runat="server" Text="Rol"></asp:Label>
            
            <asp:DropDownList class="drop" ID="Rol" runat="server">
            </asp:DropDownList>

            <asp:Button class="btn" ID="Grabar" runat="server" Text="Grabar" OnClick="Grabar_Click" />
            <asp:Button class="btn" ID="Limpiar" runat="server" Text="Limpiar" OnClick="Limpiar_Click" />



            <asp:Label ID="InfoLabel" runat="server" Text=""></asp:Label>
        </form>
    </div>
</body>
</html>
