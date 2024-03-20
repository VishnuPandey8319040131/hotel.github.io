<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Admin_contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
     <table border="1">

                <tr style="text-align:center; background-color:lightcoral; color:black; padding:5px">

                    <td>sno</td>
                    <td>Name</td>
                    <td>EMail</td>
                    <td>Subject</td>

                </tr>
         <asp:Repeater ID="rptContact" runat="server" OnItemCommand="rptContact_ItemCommand">

                        <ItemTemplate>
                            <tr>

                                <td><%# Eval("sno") %>></td>
                                <td><%# Eval("Name") %>></td>
                                <td><%# Eval("EMail") %>></td>
                                <td><%# Eval("Subject") %>></td>
                             
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
         </table>
    </div>

    </form>
</body>
</html>
