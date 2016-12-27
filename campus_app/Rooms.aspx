<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="campus_app.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="141px" Width="60%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="DORMITORY_ID" HeaderText="DORMITORY_ID" SortExpression="DORMITORY_ID" />
            <asp:BoundField DataField="ROOM_NUMBER" HeaderText="ROOM_NUMBER" SortExpression="ROOM_NUMBER" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAMPUSConnectionString %>" DeleteCommand="DELETE FROM [ROOM] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ROOM] ([ID], [DORMITORY_ID], [ROOM_NUMBER]) VALUES (@ID, @DORMITORY_ID, @ROOM_NUMBER)" SelectCommand="SELECT [ID], [DORMITORY_ID], [ROOM_NUMBER] FROM [ROOM]" UpdateCommand="UPDATE [ROOM] SET [DORMITORY_ID] = @DORMITORY_ID, [ROOM_NUMBER] = @ROOM_NUMBER WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="DORMITORY_ID" Type="Int32" />
            <asp:Parameter Name="ROOM_NUMBER" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DORMITORY_ID" Type="Int32" />
            <asp:Parameter Name="ROOM_NUMBER" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
