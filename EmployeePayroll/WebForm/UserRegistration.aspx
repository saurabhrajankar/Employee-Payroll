<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="EmployeePayroll.WebForm.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="id" runat="server" />
   <h1>
       User Registration
   </h1>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Firstname" ForeColor="Red" Text="*" SetFocusOnError="True" ControlToValidate="lblfirstname"></asp:RequiredFieldValidator>
        <br><asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
        <asp:TextBox ID="lblfirstname" runat="server" ></asp:TextBox><br><br><br>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Lastname" ForeColor="Red" Text="*" SetFocusOnError="True" ControlToValidate="lbllastname"></asp:RequiredFieldValidator>
        <br><asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>    
        <asp:TextBox ID="lbllastname" runat="server"></asp:TextBox><br><br><br>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email" ForeColor="Red" Text="*" SetFocusOnError="True" ControlToValidate="lblemail" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Email"  SetFocusOnError="True" Text="*" ControlToValidate="lblemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="lblemail" runat="server"></asp:TextBox><br><br><br>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Password" ForeColor="Red" Text="*" SetFocusOnError="True" ControlToValidate="lblpassword" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="*" ControlToValidate="lblpassword" SetFocusOnError="True"  Display="Dynamic" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"></asp:RegularExpressionValidator>
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="lblpassword" runat="server"></asp:TextBox><br><br><br>
        <br>
    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" /><br><br><br>

    <div>
        <asp:Label ID="lblsuccessmessgae" runat="server" Text="" ForeColor="Green"></asp:Label>
    </div>
    <div>
        <asp:Label ID="lblerrormessgae" runat="server" Text=""  ForeColor="Red"></asp:Label>
    </div>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserRegistrationConnectionString %>" SelectCommand="SELECT * FROM [Usertable]"></asp:SqlDataSource>
  
</asp:Content>
