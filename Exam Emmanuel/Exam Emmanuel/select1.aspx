<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="select1.aspx.vb" Inherits="Exam_Emmanuel.delete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="rcptno" DataSourceID="SqlDataSource1" EmptyDataText="No Payments were made during this period!"
            Width="100%" BackImageUrl="~/Bright-Lights-Background-Wallpaper.jpg">
            <EmptyDataRowStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="rcptno" HeaderText="Reg No" ReadOnly="True" SortExpression="rcptno" />
                <asp:BoundField DataField="bcode" HeaderText="Course Number" SortExpression="bcode" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="amount" HeaderText="Amount Paid" SortExpression="amount" />
                <asp:BoundField DataField="dp" HeaderText="Reg Date" ReadOnly="True" SortExpression="dp" />
                <asp:BoundField DataField="uname" HeaderText="Admin who Reg" SortExpression="uname" />
            </Columns>
        </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="select  * = convert(varchar(10),dp,3),  uname&#13;&#10;from  payments p, students s&#13;&#10; from Students = s.bcode and p.rollno = s.rollno&#13;&#10;  and  dp between @from and @to&#13;&#10;">
            <SelectParameters>
                   <asp:ControlParameter ControlID="txtFrom" Name="from" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTo" Name="to" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
