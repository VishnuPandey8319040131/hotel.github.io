<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addimage.aspx.cs" Inherits="Admin_addimage" %>

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
        <h3 style="background-color:lavenderblush">***************Add Image***************</h3><br /><br />
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
                                <iframe>5665</iframe>
                               
                                <asp:FileUpload ID="F" runat="server" accept="image2/*" onchange="loadFile(event)" /><br />
                                <img id="pr" runat="server"  src='<%# Eval("Image2") %>'  style="width: 180px; height: 130px; border: outset" />
                                <script>
                                    var loadFile = function (event) {
                                        var output = document.getElementById('pr');
                                        output.src = URL.createObjectURL(event.target.files[0]);
                                        output.onload = function () {
                                            URL.revokeObjectURL(output.src) // free memory
                                        }
                                    };
                                </script><br /><br />
                                <asp:Button ID="Button2" runat="server" Text="AddImage" BorderStyle="Groove" OnClick="Button2_Click"/></td>

                        </tr>
                        <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">

                            <ItemTemplate>

                               
                                    
                                    
                                        <img runat="server" src='<%# Eval("Image2") %>' style="width: 100px; height: 100px" />

                                    
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmdView" CommandArgument='<%# Eval("sno")  %>'>Delete</asp:LinkButton>
                                           
                                               <asp:Button ID="btndelet2" runat="server" OnClick="btndelet2_Click" /></td>
                                       
                                
                                
                            </ItemTemplate>

                        </asp:Repeater>


                    </table>
                    <br />
                    <br />
                    <br />
                    <br />

                </div>
            </div>

              
                  
            
            </div>

                    </div>
                </div>
           </div>

    </form>
</body>
</html>
