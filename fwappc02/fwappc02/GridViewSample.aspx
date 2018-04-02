<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewSample.aspx.cs" Inherits="fwappc02.GridViewSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EmployeeId" HeaderText="社員番号" ReadOnly="True" SortExpression="EmployeeId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="DepartmentId" HeaderText="DepartmentId" SortExpression="DepartmentId" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" DataFormatString="{0:yyyy/MM/dd}" />
                <asp:BoundField DataField="Sales" HeaderText="Sales" SortExpression="Sales" />
                <asp:BoundField DataField="TelNo" HeaderText="TelNo" SortExpression="TelNo" />
                <asp:CheckBoxField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" DataNavigateUrlFormatString="~/Basic/FormViewSample.aspx?EmployeeId={0}" Text="詳細" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource
            ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeId] = @EmployeeId"
            InsertCommand="INSERT INTO [Employees] ([EmployeeId], [Name], [DepartmentId], [Birthday], [Sales], [TelNo], [Sex]) VALUES (@EmployeeId, @Name, @DepartmentId, @Birthday, @Sales, @TelNo, @Sex)"
            SelectCommand="SELECT * FROM [Employees]"
            UpdateCommand="UPDATE [Employees] SET [Name] = @Name, [DepartmentId] = @DepartmentId, [Birthday] = @Birthday, [Sales] = @Sales, [TelNo] = @TelNo, [Sex] = @Sex WHERE [EmployeeId] = @EmployeeId">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="DepartmentId" Type="Int32" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
                <asp:Parameter Name="Sales" Type="Decimal" />
                <asp:Parameter Name="TelNo" Type="String" />
                <asp:Parameter Name="Sex" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="DepartmentId" Type="Int32" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
                <asp:Parameter Name="Sales" Type="Decimal" />
                <asp:Parameter Name="TelNo" Type="String" />
                <asp:Parameter Name="Sex" Type="Boolean" />
                <asp:Parameter Name="EmployeeId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
