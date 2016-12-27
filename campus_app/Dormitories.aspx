<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dormitories.aspx.cs" Inherits="campus_app.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" Width="60%" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="FACULTY_ID" HeaderText="FACULTY_ID" SortExpression="FACULTY_ID" />
            <asp:BoundField DataField="NUM_OF_FREE_PLACES" HeaderText="NUM_OF_FREE_PLACES" SortExpression="NUM_OF_FREE_PLACES" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CAMPUSConnectionString %>" DeleteCommand="DELETE FROM [DORMITORY] WHERE [ID] = @original_ID AND [FACULTY_ID] = @original_FACULTY_ID AND [NUM_OF_FREE_PLACES] = @original_NUM_OF_FREE_PLACES" InsertCommand="INSERT INTO [DORMITORY] ([ID], [FACULTY_ID], [NUM_OF_FREE_PLACES]) VALUES (@ID, @FACULTY_ID, @NUM_OF_FREE_PLACES)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [FACULTY_ID], [NUM_OF_FREE_PLACES] FROM [DORMITORY]" UpdateCommand="UPDATE [DORMITORY] SET [FACULTY_ID] = @FACULTY_ID, [NUM_OF_FREE_PLACES] = @NUM_OF_FREE_PLACES WHERE [ID] = @original_ID AND [FACULTY_ID] = @original_FACULTY_ID AND [NUM_OF_FREE_PLACES] = @original_NUM_OF_FREE_PLACES">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_FACULTY_ID" Type="Int32" />
            <asp:Parameter Name="original_NUM_OF_FREE_PLACES" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="FACULTY_ID" Type="Int32" />
            <asp:Parameter Name="NUM_OF_FREE_PLACES" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FACULTY_ID" Type="Int32" />
            <asp:Parameter Name="NUM_OF_FREE_PLACES" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_FACULTY_ID" Type="Int32" />
            <asp:Parameter Name="original_NUM_OF_FREE_PLACES" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
