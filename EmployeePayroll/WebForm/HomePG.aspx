<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePG.aspx.cs" Inherits="EmployeePayroll.WebForm.HomePG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>
 EMPLOYEE DETAILS 
 </h2> 
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id" BorderColor="Red" HorizontalAlign="Center"
        Height="200px" Width="1000px" BackColor="White" BorderStyle="Double" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Image" SortExpression="IMG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IMG") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("IMG") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender"></asp:BoundField>
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department"></asp:BoundField>
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary"></asp:BoundField>
            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
        </Columns>

        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:payrollFormConnectionString2 %>" DeleteCommand="DELETE FROM [UserTable] WHERE [id] = @id" InsertCommand="INSERT INTO [UserTable] ([Name], [IMG], [Gender], [Department], [Salary], [StartDate], [Notes]) VALUES (@Name, @IMG, @Gender, @Department, @Salary, @StartDate, @Notes)" SelectCommand="SELECT * FROM [UserTable]"
        UpdateCommand="UPDATE [UserTable] SET [Name] = @Name, [IMG] = @IMG, [Gender] = @Gender, [Department] = @Department, [Salary] = @Salary, [StartDate] = @StartDate WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="IMG" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Department" Type="String"></asp:Parameter>
            <asp:Parameter Name="Salary" Type="String"></asp:Parameter>
            <asp:Parameter Name="StartDate" Type="String"></asp:Parameter>
            <asp:Parameter Name="Notes" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="IMG" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Department" Type="String"></asp:Parameter>
            <asp:Parameter Name="Salary" Type="String"></asp:Parameter>
            <asp:Parameter Name="StartDate" Type="String"></asp:Parameter>
            <%--<asp:Parameter Name="Notes" Type="String"></asp:Parameter>--%>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

