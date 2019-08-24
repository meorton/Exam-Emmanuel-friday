<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.vb" Inherits="Exam_Emmanuel.update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <h2><%: Title %>.</h2>
     <p>Please make sure you fill all fields properly .</p>
    <p>And remeber to log ou...kindly click next to proceed .</p>
    <asp:Button ID="Button4" runat="server" Text="next" />
</asp:Content>
