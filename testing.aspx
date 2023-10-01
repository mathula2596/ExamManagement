<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing.aspx.cs" Inherits="testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))" InsertCommand="INSERT INTO [course] ([Id], [name], [duration], [payment]) VALUES (@Id, @name, @duration, @payment)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [name] = @name, [duration] = @duration, [payment] = @payment WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_duration" Type="String" />
                <asp:Parameter Name="original_payment" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="duration" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="duration" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_duration" Type="String" />
                <asp:Parameter Name="original_payment" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                    <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                    <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
                    <asp:CommandField HeaderText="e" ShowEditButton="True" ShowHeader="True" />
                    <asp:CommandField ButtonType="Button" HeaderText="hi" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                    <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))" InsertCommand="INSERT INTO [course] ([Id], [name], [duration], [payment]) VALUES (@Id, @name, @duration, @payment)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [name] = @name, [duration] = @duration, [payment] = @payment WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_duration" Type="String" />
                    <asp:Parameter Name="original_payment" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="payment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="payment" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_duration" Type="String" />
                    <asp:Parameter Name="original_payment" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))" InsertCommand="INSERT INTO [course] ([Id], [name], [duration], [payment]) VALUES (@Id, @name, @duration, @payment)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [name] = @name, [duration] = @duration, [payment] = @payment WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_duration" Type="String" />
                    <asp:Parameter Name="original_payment" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="payment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="payment" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_duration" Type="String" />
                    <asp:Parameter Name="original_payment" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
