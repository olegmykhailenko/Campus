<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Faculties.aspx.cs" Inherits="campus_app.Faculties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="60%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CAMPUSConnectionString %>" DeleteCommand="DELETE FROM [FACULTY] WHERE [ID] = @original_ID AND [NAME] = @original_NAME AND [PHONE_NUMBER] = @original_PHONE_NUMBER" InsertCommand="INSERT INTO [FACULTY] ([ID], [NAME], [PHONE_NUMBER]) VALUES (@ID, @NAME, @PHONE_NUMBER)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FACULTY]" UpdateCommand="UPDATE [FACULTY] SET [NAME] = @NAME, [PHONE_NUMBER] = @PHONE_NUMBER WHERE [ID] = @original_ID AND [NAME] = @original_NAME AND [PHONE_NUMBER] = @original_PHONE_NUMBER">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_PHONE_NUMBER" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="PHONE_NUMBER" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="PHONE_NUMBER" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_PHONE_NUMBER" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
