<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatalogoJugador.aspx.cs" Inherits="ViajesPedro.CatalogoJugador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Viajes de Pedro</title>
    <style type="text/css">
        .auto-style1 {
            color: #00C484;
        }
        .auto-style2 {
            color: #00C684;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Catálogo de Jugadores </h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="157px" Width="359px" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="sqlJugadores" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Numero" HeaderText="Numero" InsertVisible="False" ReadOnly="True" SortExpression="Numero" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Clan" HeaderText="Clan" SortExpression="Clan" />
                <asp:BoundField DataField="Hechizo" HeaderText="Hechizo" SortExpression="Hechizo" />
                <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlJugadores" runat="server" ConnectionString="<%$ ConnectionStrings:ViajesPedroConnectionString %>" DeleteCommand="delete Jugador where Numero = @Numero" InsertCommand="insert into Jugador (Nombre,Clan,Hechizo,Edad) values (@Nombre,@Clan,@Hechizo,@Edad)" SelectCommand="SELECT * FROM [Jugador]" UpdateCommand="update Jugador set Nombre=@Nombre, Clan=@Clan, Hechizo=@Hechizo, Edad=@Edad where Numero=@Numero">
            <DeleteParameters>
                <asp:ControlParameter ControlID="NumTxt" Name="Numero" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="NomTxt" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="ClanTxt" Name="Clan" PropertyName="Text" />
                <asp:ControlParameter ControlID="HechTxt" Name="Hechizo" PropertyName="Text" />
                <asp:ControlParameter ControlID="EdadTxt" Name="Edad" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="NomTxt" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="ClanTxt" Name="Clan" PropertyName="Text" />
                <asp:ControlParameter ControlID="HechTxt" Name="Hechizo" PropertyName="Text" />
                <asp:ControlParameter ControlID="EdadTxt" Name="Edad" PropertyName="Text" />
                <asp:ControlParameter ControlID="NumTxt" Name="Numero" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <p>
            <span class="auto-style1"><strong>Númer</strong></span><span class="auto-style2"><strong>o:&nbsp;&nbsp;</strong></span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NumTxt" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </strong>
        </p>
        <p>
            <span class="auto-style2"><strong>Nombre:&nbsp;&nbsp;</strong></span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="NomTxt" runat="server"></asp:TextBox>
            </strong>
        </p>
        <p>
            <span class="auto-style2"><strong>Hechizo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong></span><strong>
            <asp:TextBox ID="HechTxt" runat="server" CssClass="auto-style2"></asp:TextBox>
            </strong>
        </p>
        <p>
            <span class="auto-style2"><strong>Clan:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong></span><strong>
            <asp:TextBox ID="ClanTxt" runat="server" CssClass="auto-style2"></asp:TextBox>
            </strong>
        </p>
        <p>
            <span class="auto-style2"><strong>Edad:&nbsp;</strong>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="EdadTxt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BIngresar" runat="server" Text="Agregar" BackColor="#FFBEA8" Font-Bold="True" Font-Names="Constantia" ForeColor="#00C672" OnClick="BIngresar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BBorrar" runat="server" Text="Eliminar" BackColor="#FFBEA8" Font-Bold="True" Font-Names="Constantia" ForeColor="#00C672" OnClick="BBorrar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BModificar" runat="server" Text="Modificar" BackColor="#FFBEA8" Font-Bold="True" Font-Names="Constantia" ForeColor="#00C672" OnClick="BModificar_Click" />
        </p>
    </form>
</body>
</html>
