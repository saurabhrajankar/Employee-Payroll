<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayroll.WebForm.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
       User Login
   </h1>

    <asp:Table ID="Table1" runat="server" ></asp:Table>   

        <asp:Label ID="Label3" runat="server" Text="Email" ></asp:Label>&emsp;&emsp;&emsp;&emsp;&ensp;
        <asp:TextBox ID="lblemail" runat="server" Height="30px" Width="300px"></asp:TextBox><br><br><br>
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>&emsp;&emsp;&emsp;&emsp;
        <asp:TextBox ID="lblpassword" runat="server" Height="30px" Width="300px" TextMode="Password">     
        </asp:TextBox><br><br><br>
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="30px" Width="80px" />
    <div>
        <asp:Label ID="lblsuccessmessgae" runat="server" Text="" ForeColor="Green"></asp:Label>
    </div>
    <div>
        <asp:Label ID="lblerrormessgae" runat="server" Text=""  ForeColor="Red"></asp:Label>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserRegistrationConnectionString %>" SelectCommand="SELECT [Email], [Password] FROM [Usertable]"></asp:SqlDataSource>
</asp:Content>
