<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cConsulta.aspx.cs" Inherits="Parcial1_Apl2_LuisG.Rodriguez.Consultas.cConsulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Inclusión de Bootstrap 4.0.0-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <title>Consulta de Presupuestos</title>
</head>
<body>
    <div class="container-fluid">
        <div class="text-center">
            <h1>Consulta de presupuestos</h1>
            <br />
        </div>
    </div>


    <form id="Form1" runat="server">
        <div class="container">
            <!--DropDowmList y TextBox-->
            <div class="row col-6">
                <div class=" form-group col-6">
                    <asp:DropDownList CssClass="form-control" ID="FiltrarDropDownList" runat="server">
                        <asp:ListItem>Todo</asp:ListItem>
                        <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>Fecha</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-6">
                    <asp:TextBox CssClass="form-control" ID="FiltroTextBox" runat="server" autoComplete="off"></asp:TextBox>
                </div>

                <div class="row col-12">
                    <div class="form-group col-12 col-sm-6" style="left: 2px; top: 0px">
                        <asp:Label ID="DesdeLabel" runat="server" Text="Desde:" CssClass=""></asp:Label>
                        <asp:TextBox CssClass="form-control" type="date" ID="FechaDesdeTextBox" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group col-1 col-sm-6">
                        <asp:Label ID="HastaLabel" runat="server" Text="Hasta:"></asp:Label>
                        <asp:TextBox CssClass="form-control" type="date" ID="FechaHastaTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="container">
                    <div class="col-12">
                        <div class="float-right">
                            <asp:Button CssClass="btn btn-dark" ID="FiltroButton" runat="server" Text="Filtrar" OnClick="FiltroButton_Click" />
                        </div>

                        <asp:GridView CssClass="table table-responsive table-hover" BorderStyle="None" ID="PresupuestoConsultaGridView" runat="server"
                            AutoGenerateColumns="False" GridLines="Horizontal" DataKeyNames="PresupuestoId,Descripcion" ShowFooter="true">
                            <HeaderStyle CssClass="bg-info text-white" />
                            <Columns>
                                <asp:BoundField DataField="Presupuestoid" HeaderText="Presupuesto Id" />
                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                                <asp:BoundField DataField="Monto" HeaderText="Monto" />
                                <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha Inscripcion" />
                            </Columns>
                            <FooterStyle CssClass="bg-dark" />
                        </asp:GridView>
                    </div>

                </div>

            </div>
        </div>
    </form>
</body>
</html>
