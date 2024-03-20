<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Slide.aspx.cs" Inherits="Admin_Slide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
           <div class="row">
               <div class="col-lg-4"></div>
                <div class="col-lg-4">
        <h3 style="background-color:lavenderblush">***************Add slider***************</h3><br /><br />
                    </div>

               <div class="col-lg-4"></div>
       </div>
            <div >
                <div class="contener">
        <div class="row">

            <div class="col-sm-4" style="background-color:lavenderblush" >
                
                <div class="form-group">

                    <table>
                         
                        <tr>
                           
                            <td>Upload Image</td>


                            <td>
                               
                                <asp:FileUpload ID="Fu" runat="server" accept="image/*" onchange="loadFile(event)" /><br />
                                <img id="pre" runat="server"  src='<%# Eval("Image") %>'  style="width: 180px; height: 130px; border: outset" />
                                <script>
                                    var loadFile = function (event) {
                                        var output = document.getElementById('pre');
                                        output.src = URL.createObjectURL(event.target.files[0]);
                                        output.onload = function () {
                                            URL.revokeObjectURL(output.src) // free memory
                                        }
                                    };
                                </script><br /><br />
                                <asp:Button ID="Button1" runat="server" Text="Add slide Image" BorderStyle="Groove" OnClick="Button1_Click" /></td>

                        </tr>

                    </table>
                    <br />
                    <br />
                    <br />
                    <br />

                </div>
            </div>

              
                  
            <div class="col-sm-6" style="background-color:lightgoldenrodyellow; margin-left:50px">
                
                       
                        <asp:Repeater ID="rptTemplete" runat="server" OnItemCommand="rptTemplete_ItemCommand">

                            <ItemTemplate>

                               
                                    
                                    
                                        <img runat="server" src='<%# Eval("Image") %>' style="width: 80px; height: 80px" />

                                    
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cmdView" CommandArgument='<%# Eval("Sno")  %>'>Delete</asp:LinkButton>
                                           
                                               <asp:Button ID="btndelet" runat="server" OnClick="btndelet_Click" /></td>
                                       
                                
                                
                            </ItemTemplate>

                        </asp:Repeater>
                   
                              
                

                </div>
            </div>

                    </div>
                </div>
           </div>
    </form>
</body>
</html>
