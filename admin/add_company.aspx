<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="add_company.aspx.cs" Inherits="admin_add_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>Add Company</h3>
        <%--<ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_document_alt"></i>Forms</li>
              <li><i class="fa fa-file-text-o"></i>Form elements</li>
            </ol>--%>
          </div>
        </div>
        
        <!-- Basic Forms & Horizontal Forms-->

         
        <!-- Inline form-->
        

        
        <!-- page end-->
      

   

            <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">Company name</label>
                    <div class="col-lg-10">
                      
                            <div class="col-lg-3">
                           
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtcname" placeholder="Enter Company Name" runat="server" 
                                    class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtcname" Text="Enter Company Name" Font-Bold="False" 
                                   ForeColor="Red" ValidationGroup="1" ></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="btnsearch" runat="server" Text="Search" 
                                    class="btn btn-primary" onclick="btnSearch_Click" BackColor="#333333" ></asp:Button>

                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      

                    </div>
             </div>
            <br />

                <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Status</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlstatus" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                                          <%--<select class="form-control m-bot15">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                          </select>

                      <select class="form-control" multiple="">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                          </select>--%>
                              </div>
                  </div>




                    <div class="form-group">
                    <label for="exampleInputFile" class="control-label col-lg-2">Uplode Logo</label>
                      <div class="col-lg-10">
                          <div class="col-lg-3">
                            
                                     <asp:FileUpload ID="fu1" runat="server" ForeColor="Red"  >
                                     </asp:FileUpload>
                                   
                          </div>
                      </div>
                   <%-- <input id="exampleInputFile" type="file">--%>
                   <%-- <p class="help-block">Example block-level help text here.</p>--%>
                    </div>

                 <br /><br /> 
                            <br /><br /> 
                                   <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#333333"  class="btn btn-primary" 
                                    onclick="btnsubmit_Click" ValidationGroup="1"></asp:Button>

                            </div>
              </div>

                 




            
           
            
      <asp:Label ID="lblMessage" runat="server" ForeColor="Green" EnableViewState="false" />

<asp:GridView ID="GridView1" runat="server" BackColor="White"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" ForeColor="#333333" GridLines="None"
AutoGenerateColumns="false" Width="100%" OnRowEditing="EditRow" OnRowCancelingEdit="CancelEditRow"
OnRowUpdating="UpdateRow" DataKeyNames="compid" OnRowDeleting="DeleteRow" AllowPaging="true"
PageSize="3" OnPageIndexChanging="ChangePage" AutoGenerateDeleteButton="False" 
                AutoGenerateEditButton="False">

<Columns>
<asp:TemplateField HeaderText="Edit">
    <ItemTemplate>
        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit"  CommandName="Edit" />
    </ItemTemplate>

<EditItemTemplate>
    <asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" CommandName="Update" />
    <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="Cancel" />
</EditItemTemplate>

</asp:TemplateField>

    <asp:BoundField HeaderText="Company ID" DataField="compid" ReadOnly="true" />
<asp:TemplateField HeaderText="company Name">
    <ItemTemplate>
        <%# Eval("compname") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtcompname" runat="server" Text='<%# Eval("compname") %>'/>
        </EditItemTemplate> 
</asp:TemplateField>
<asp:TemplateField HeaderText="Logo">
    <ItemTemplate>
       <asp:Image ID="Image1" runat="server" ImageUrl='<%# "company_logo/" + Eval("complogo") %>' Height="100" Width="100"></asp:Image> </ItemTemplate>
            <EditItemTemplate>
               <asp:FileUpload ID="fu1" runat="server" ></asp:FileUpload>
            </EditItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="status">
    <ItemTemplate>
        <%# Eval("status") %></ItemTemplate>
            <EditItemTemplate>
               <asp:DropDownList ID="ddlstatus" runat="server" SelectedValue='<%# Eval("status") %>'>
                <asp:ListItem Text="Yes" Value="0" />
                <asp:ListItem Text="No" Value="1" />
            </asp:DropDownList>
            </EditItemTemplate>
</asp:TemplateField>
<%--<asp:TemplateField HeaderText="Is Active?">
    <ItemTemplate>
        <%# Eval("Active").ToString().Equals("True") ? "Yes" : "No" %>
    </ItemTemplate>
    <HeaderStyle HorizontalAlign="Left" />
        <EditItemTemplate>
          <asp:DropDownList ID="dropActive" runat="server" SelectedValue='<%# Eval("Active") %>'>
                <asp:ListItem Text="Yes" Value="True" />
                <asp:ListItem Text="No" Value="False" />
            </asp:DropDownList>
        </EditItemTemplate>
</asp:TemplateField>--%>
<asp:TemplateField HeaderText="Delete">
    <ItemTemplate>
        <span onclick="return confirm('Are you sure to delete?')">
                <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" ForeColor="Red" CommandName="Delete" />
        </span>
     </ItemTemplate>
</asp:TemplateField>
</Columns>

                       <FooterStyle BackColor="White" Font-Names="Arial" ForeColor="#333333" />
               <HeaderStyle BackColor="#343d3d" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#343d3d" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" Font-Bold="true" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#339966" Font-Bold="True" Font-Names="Arial" ForeColor="White"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#487575" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>


            
   
  </section>
    </section>

</asp:Content>

