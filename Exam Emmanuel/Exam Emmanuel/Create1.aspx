<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>


<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source = INSTRUCTORIT; Initial Catalog = CollegeEmmanuel; User ID = ProfileUser; Password = ProfileUser2019");



        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();


            SqlCommand myCommand = new SqlCommand();
            string mySql = "INSERT INTO Students (FirstName, LastName, BirthDate, EmailAddr, Country) " +
                            " VALUES ('" + txtName.Text + "','" + txtFname.Text + "'," +
                            " '" + txtFname.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "''"  + "')";


            myCommand.CommandText = mySql;

            myCommand.ExecuteNonQuery();


            lblMsg.Text = "Student Has Been Added Successfully!";
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
        Add&nbsp; Student</h2>
        <br />
        <table>
            <tr>
                
                <td>
                   
                    &nbsp; &nbsp;<asp:HyperLink ID="hlinkBatch" runat="server">Details</asp:HyperLink>
                    &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    First Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="262px"></asp:TextBox></td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                            Display="None" ErrorMessage="Field missing!"></asp:RequiredFieldValidator>
                </tr>
           
            <tr>
                <td>
                    Last Name</td>
                <td >
                    <asp:TextBox ID="txtFname" runat="server" Width="262px"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname"
                            Display="None" ErrorMessage="Field missing!"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td >
                    BirthDate</td>
                <td>
                    <asp:TextBox ID="txtCurOcup" runat="server" Width="262px"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFname"
                            Display="None" ErrorMessage="Field missing!"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td >
                    Email Address</td>
                <td >
                    <asp:TextBox ID="txtEmail" runat="server" Width="262px"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail"
                            Display="None" ErrorMessage="Field missing!"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td >
                    Country</td>
                <td >

                    
                    <asp:TextBox ID="txtPhone" runat="server" Width="262px"></asp:TextBox></td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone"
                            Display="None" ErrorMessage="Field missing!"></asp:RequiredFieldValidator>
            </tr>
        
           
        </table>
   
    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add Student" OnClick="btnAdd_Click" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</asp:Content>

