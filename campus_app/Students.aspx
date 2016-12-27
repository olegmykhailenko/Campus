<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="campus_app.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="128px" Width="69%">
        <Columns>
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
            <asp:BoundField DataField="PRIVILEGES" HeaderText="PRIVILEGES" SortExpression="PRIVILEGES" />
            <asp:BoundField DataField="FACULTY_ID" HeaderText="FACULTY_ID" SortExpression="FACULTY_ID" />
            <asp:BoundField DataField="ROOM_ID" HeaderText="ROOM_ID" SortExpression="ROOM_ID" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAMPUSConnectionString %>" SelectCommand="SELECT [NAME], [PHONE_NUMBER], [PRIVILEGES], [FACULTY_ID], [ROOM_ID] FROM [STUDENT]"></asp:SqlDataSource>
</asp:Content>
