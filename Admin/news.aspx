<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Admin_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>news</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <dv>
    
					  	<h3>nuwe</h3>
						   <table>

                <tr>
                    <td>  Heading:</td>
                    <td><asp:TextBox ID="txtHeading" runat="server"></asp:TextBox></td>
                                
                    <td>  Description:</td>
                    <td><asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></td>
                                
                    <td>  StartDate:</td>
                   <td><asp:TextBox ID="txtStartDate" runat="server" TextMode="Date"></asp:TextBox></td>

                    <td>  EndDate:</td>
                   <td><asp:TextBox ID="TextEndDate" runat="server" TextMode="Date" ></asp:TextBox></td>
                                  
                </tr>
           
               </table>
               
          <table>
                <tr>
                 
                    <td><asp:Button ID="btnsave" runat="server" Text="Save Information" OnClick="btnsave_Click"/></td>

                   <td> <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click"/></td>
                </tr>
        </table><br /><br /><br />


        
                          <br /><br />

						
	  				
  				<div class="clear"></div>
        
         <table border="1">

                <tr style="text-align:center; background-color:lightcoral; color:black; padding:5px">

                    
                    <td>Heading</td>
                    <td>Description</td>
                    <td>StartDate</td>
                     <td>EndDate</td>
                    <td>action</td>

                </tr>
         <asp:Repeater ID="rptContact" runat="server" OnItemCommand="rptContact_ItemCommand" >

                        <ItemTemplate>
                            <tr >

                                
                                <td><%# Eval("Heading") %></td>
                                <td><%# Eval("Description") %></td>
                                <td><%# Eval("StartDate") %></td>
                                <td><%# Eval("EndDate") %></td>
                                <td><asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmdView" CommandArgument='<%# Eval("sno")  %>'>Delete</asp:LinkButton></td>
                                           
                                           
                                       
                             
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
         </table>
        
        	</dv>
    
    </form>
</body>
</html>
