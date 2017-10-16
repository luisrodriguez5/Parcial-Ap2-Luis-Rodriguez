<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rPresupuesto.aspx.cs" Inherits="Parcial1_Apl2_LuisG.Rodriguez.Registro.rPresupuesto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Inclusión de Bootstrap 4.0.0-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <title>Registro de Presupuesto</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-12 col-sm-8 col-md-6 col-lg-5">

            <div class="form-group">
                <asp:Label ID="PresupuestoIdLabel" runat="server" Text="Presupuesto Id:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="PresupuestoIdTextBox" runat="server" AutoComplete="off"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="DescripcionLabel" runat="server" Text="Descripcion:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="DescripcionTextBox" runat="server" AutoComplete="off" Height="100px"></asp:TextBox>
            </div>
            <!--Monto-->
            <div class="form-group">
                <asp:Label ID="MontoLabel" runat="server" Text="Monto:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="MontoTextBox" runat="server" AutoComplete="off"></asp:TextBox>
            </div>
            <!--Fecha-->
            <div class="form-group">
                <asp:Label ID="FechaLabel" runat="server" Text="Fecha:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="FechaTextBox" runat="server" TextMode="date" AutoComplete="off"></asp:TextBox>
            </div>
               <!--Botones-->
                <div class="text-center">
                    <asp:Button CssClass="btn btn-praimary" ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click"/>
                    <asp:Button CssClass="btn btn-praimary" ID="GuardarButton" runat="server" Text="Guardar" OnClick="GuardarButton_Click"/>
                    <asp:Button CssClass="btn btn-praimary" ID="EnviarAlModalEliminarButton" runat="server" Text="Eliminar" OnClick="EnviarAlModalEliminarButton_Click"/>
                </div>

        </div>
    </form>
</body>
</html>
