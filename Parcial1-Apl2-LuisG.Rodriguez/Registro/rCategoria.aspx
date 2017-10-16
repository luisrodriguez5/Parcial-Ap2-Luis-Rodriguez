<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rCategoria.aspx.cs" Inherits="Parcial1_Apl2_LuisG.Rodriguez.Registro.rCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <div class="jumbotron text-lef">
        <h1><strong>Registro Categoria</strong></h1>

    </div>
    <div class="row">
        <div class="col-6">
            <form id="form1" runat="server">
                <div class="form-group row">
                    <label for="CategoriaId" class="col-5 col-form-label text-right">ID:</label>
                    <asp:TextBox ID="CategotiaIdTexBox" class="form-control col-7" runat="server" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="form-group row">
                    <label for="nombreUsuario" class="col-5 col-form-label text-right">Descripcion:</label>
                    <asp:TextBox class="form-control col-7" ID="Descripcion" placeholder="Descripcion" runat="server"></asp:TextBox>
                </div>

                <div class="text-center">
                    <asp:Button CssClass="btn btn-praimary" ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click" />
                    <asp:Button CssClass="btn btn-praimary" ID="GuardarButton" runat="server" Text="Guardar" OnClick="GuardarButton_Click" />
                    <asp:Button CssClass="btn btn-praimary" ID="EnviarAlModalEliminarButton" runat="server" Text="Eliminar" OnClick="EnviarAlModalEliminarButton_Click" />
                </div>

            </form>
        </div>
    </div>
</body>
</html>
