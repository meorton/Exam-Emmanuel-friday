<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">

    protected void btnCancel_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(@"Data Source = INSTRUCTORIT; Initial Catalog = CollegeEmmanuel; User ID = ProfileUser; Password = ProfileUser2019");


        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            SqlCommand myCommand = new SqlCommand();
            string mySql = "Delete from Students where FirstName = txtName.Text";
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Suecessful";
        } // end of try
        catch (Exception ex)
        {
            lblMsg.Text = "Error -->" + ex.Message;
        }
        finally
        {
            con.Close();
        }

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        Cancel A Batch</h2>
    <br />
                 Select Batch : 
                 <asp:DropDownList ID="ddlBcode" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="bname" DataValueField="bcode" Width="281px">
                    </asp:DropDownList>
        <p />
        <asp:Button ID="btnCancel" runat="server" Text="Delete" OnClick="btnCancel_Click" />
        <p/>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="select  bcode , bname = bcode + ' - ' +   convert(varchar(10), stdate,3) +  ' - ' + timing&#13;&#10;from  batches where enddate is null">
        </asp:SqlDataSource>

</asp:Content>

