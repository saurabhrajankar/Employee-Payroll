<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="PayrollForm.aspx.cs" Inherits="EmployeePayroll.WebForm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h2>
 EMPLOYEE PAY ROLL
 </h2>
   <br /> 
   <br /> 
   <div> 
           <asp:Label ID="labelId" runat="server">Name&emsp;&emsp;&emsp;&emsp;&emsp;</asp:Label>  
       <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    </div> 
    <br /> 

    <div>
         <asp:Label ID="label5" runat="server">Profile Image&emsp;&emsp;&emsp;&emsp;</asp:Label> 
         <asp:RadioButtonList ID="rbListImages" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
         <asp:ListItem Text='<img src="../Images/Ellipse -1.png" alt="img1"/>' Value="../Images/Ellipse -1.png"></asp:ListItem>
         <asp:ListItem Text='<img src="../Images/Ellipse -2.png" alt="img2"/>' Value="../Images/Ellipse -2.png"></asp:ListItem>
         <asp:ListItem Text='<img src="../Images/Ellipse -3.png" alt="img3"/>' Value="../Images/Ellipse -3.png"></asp:ListItem>
         <asp:ListItem Text='<img src="../Images/Ellipse -4.png" alt="img4"/>' Value="../Images/Ellipse -4.png"></asp:ListItem>
     </asp:RadioButtonList>
    </div>
     <br/>
    <div>
         <asp:Label ID="label1" runat="server">Gender&emsp;&emsp;&emsp;&emsp;&emsp;</asp:Label>  
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
      <br/>
    <div>
         <asp:Label ID="label2" runat="server">Department&emsp;&emsp;&emsp;&emsp;&emsp;</asp:Label> 
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
            <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
            <asp:ListItem Text="Sales" Value="Sales"></asp:ListItem>
            <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
            <asp:ListItem Text="Enginner" Value="Enginner"></asp:ListItem>
            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
          </asp:CheckBoxList>      
    </div>
    <br/> 
     <div>
         <asp:Label ID="label3" runat="server">Salary&emsp;&emsp;&emsp;&emsp;&emsp;</asp:Label>
         <asp:DropDownList ID="DropDownList1" runat="server" > 
         <asp:ListItem Value="">Please Select Salary</asp:ListItem> 
         <asp:ListItem>10,000 </asp:ListItem>  
         <asp:ListItem>20,000</asp:ListItem>  
         <asp:ListItem>30,000</asp:ListItem>  
         <asp:ListItem>40,000</asp:ListItem>  
         <asp:ListItem>50,500</asp:ListItem>  
         </asp:DropDownList> 
    </div>
    <br/> 
    <div>
         <asp:Label ID="label6" runat="server">Start Date&emsp;&emsp;&emsp;&ensp;</asp:Label>
         <asp:DropDownList ID="date" runat="server"> 
         <asp:ListItem Value="">Date</asp:ListItem> 
         </asp:DropDownList> 
         <asp:DropDownList ID="month" runat="server"> 
         <asp:ListItem Value="">Month</asp:ListItem> 
         </asp:DropDownList> 
         <asp:DropDownList ID="year" runat="server"> 
         <asp:ListItem Value="">Year</asp:ListItem> 
         </asp:DropDownList> 
    </div>

    <br/> 
    <div>
        <asp:Label ID="label4" runat="server">Notes&emsp;&emsp;&emsp;&emsp;&emsp;</asp:Label>  
        <asp:TextBox ID="Notes" runat="server" Height="71px" Width="350px"></asp:TextBox>
   </div>
    <br/> 
    <br/> 
    <div>
        <asp:Button ID="Button1" runat="server" Text="Cancel" />
        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Reset" OnClick="Button3_Click" />
     </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:payrollFormConnectionString2 %>" SelectCommand="SELECT * FROM [UserTable]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [UserTable] WHERE [id] = @original_id AND [Name] = @original_Name AND [IMG] = @original_IMG AND [Gender] = @original_Gender AND [Department] = @original_Department AND [Salary] = @original_Salary AND [StartDate] = @original_StartDate AND [Notes] = @original_Notes" InsertCommand="INSERT INTO [UserTable] ([Name], [IMG], [Gender], [Department], [Salary], [StartDate], [Notes]) VALUES (@Name, @IMG, @Gender, @Department, @Salary, @StartDate, @Notes)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [UserTable] SET [Name] = @Name, [IMG] = @IMG, [Gender] = @Gender, [Department] = @Department, [Salary] = @Salary, [StartDate] = @StartDate, [Notes] = @Notes WHERE [id] = @original_id AND [Name] = @original_Name AND [IMG] = @original_IMG AND [Gender] = @original_Gender AND [Department] = @original_Department AND [Salary] = @original_Salary AND [StartDate] = @original_StartDate AND [Notes] = @original_Notes">
        
    </asp:SqlDataSource>
     </asp:Content>
