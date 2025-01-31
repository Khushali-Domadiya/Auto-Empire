﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="car_testdrive.aspx.cs" Inherits="admin_car_testdrive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Bookings</h3>
          </div>
        </div>
        
       



<asp:GridView ID="GridView1" runat="server" BackColor="White" Width="90%"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="testdrive_id" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1"><Columns>
    <asp:CommandField ShowSelectButton="True" />
<asp:BoundField DataField="testdrive_id" HeaderText="Test-Drive ID" ReadOnly="True" 
            SortExpression="testdrive_id"></asp:BoundField>
<asp:BoundField DataField="user_name" HeaderText="First Name" 
            SortExpression="user_name"></asp:BoundField>
<asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name"></asp:BoundField>
<asp:BoundField DataField="phoneno" HeaderText="Phone No" SortExpression="phoneno"></asp:BoundField>
<asp:BoundField DataField="compid" HeaderText="Company ID" SortExpression="compid"></asp:BoundField>
<asp:BoundField DataField="modelid" HeaderText="Model ID" SortExpression="modelid"></asp:BoundField>
<asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
<asp:BoundField DataField="date" HeaderText="Date" SortExpression="date"></asp:BoundField>
<asp:BoundField DataField="dealerid" HeaderText="DealerID" SortExpression="dealerid"></asp:BoundField>
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
 <asp:SqlDataSource runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_testdrive] WHERE [testdrive_id] = @testdrive_id" 
        InsertCommand="INSERT INTO [tbl_testdrive] ([user_name], [last_name], [phoneno], [compid], [modelid], [city], [date], [dealerid]) VALUES (@user_name, @last_name, @phoneno, @compid, @modelid, @city, @date, @time, @dealerid)" 
        SelectCommand="SELECT [testdrive_id], [user_name], [last_name], [phoneno], [compid], [modelid], [city], [date], [dealerid] FROM [tbl_testdrive]" 
        UpdateCommand="UPDATE [tbl_testdrive] SET [user_name] = @user_name, [last_name] = @last_name, [phoneno] = @phoneno, [compid] = @compid, [modelid] = @modelid, [city] = @city, [date] = @date, [dealerid] = @dealerid WHERE [testdrive_id] = @testdrive_id" 
        ID="SqlDataSource1"><DeleteParameters>
<asp:Parameter Name="testdrive_id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="user_name" Type="String"></asp:Parameter>
<asp:Parameter Name="last_name" Type="String"></asp:Parameter>
<asp:Parameter Name="phoneno" Type="String"></asp:Parameter>
<asp:Parameter Name="compid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="city" Type="String"></asp:Parameter>
<asp:Parameter Name="date" Type="String"></asp:Parameter>

<asp:Parameter Name="dealerid" Type="Int32"></asp:Parameter>
</InsertParameters>
<UpdateParameters>
<asp:Parameter Name="user_name" Type="String"></asp:Parameter>
<asp:Parameter Name="last_name" Type="String"></asp:Parameter>
<asp:Parameter Name="phoneno" Type="String"></asp:Parameter>
<asp:Parameter Name="compid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="city" Type="String"></asp:Parameter>
<asp:Parameter Name="date" Type="String"></asp:Parameter>
<asp:Parameter Name="dealerid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="testdrive_id" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>
 

















        <AlternatingRowStyle BackColor="White" />
<EditRowStyle BackColor="#efefef" />
<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
<RowStyle BackColor="#EFF3FB" />
<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
<SortedAscendingCellStyle BackColor="#F5F7FB" />
<SortedAscendingHeaderStyle BackColor="#6D95E1" />
<SortedDescendingCellStyle BackColor="#E9EBEF" />
<SortedDescendingHeaderStyle BackColor="#4870BE" />
   




    <br /><br /><br />

         <%-- <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">User name</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                      
                        <asp:TextBox ID="txtuname" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      </div>

                    </div>
             </div>

             <br /><br />

                   <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">Last Name</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                      
                        <asp:TextBox ID="txtlname" runat="server" class="form-control" ></asp:TextBox>
                        </div>
                      </div>

                    </div>
             </div>

             <br /><br />

                   <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">phone no</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                      
                        <asp:TextBox ID="txtphoneno" runat="server" class="form-control" ></asp:TextBox>
                        </div>
                      </div>

                    </div>
             </div>

             <br /><br />
                   <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">txtmsg</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                      
                        <asp:TextBox ID="txtmsg" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      </div>

                    </div>
             </div>

             <br /><br />
               <div class="panel-body">
                            <div class="col-lg-10">
                               <button class="btn btn-primary" type="submit">Submit</button>
                                  <asp:Button ID="btnsend" runat="server" Text="Send" 
                                    class="btn btn-primary" onclick="btnsend_Click"></asp:Button>
                            </div>
              </div>--%> 
   </section>
   </section>












  






</asp:Content>

