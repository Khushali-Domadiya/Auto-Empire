<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="main-content" >
<section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="home.aspx">Home</a></li>
              <li><i class="fa fa-laptop"></i>Dashboard</li>
            </ol>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box blue-bg">
              <i class="fa fa-suitcase"></i>
              <div class="count"><asp:Label ID="lblcomp" runat="server" Text=""></asp:Label></div>
              <div class="title">Company</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box brown-bg">
              <i class="fa fa-car"></i>
              <div class="count"><asp:Label ID="lblmodel" runat="server" Text="Label"></asp:Label></div>
              <div class="title">Model</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box dark-bg">
              <i class="fa fa-group"></i>
              <div class="count"><asp:Label ID="lbluser" runat="server" Text="Label"></asp:Label></div>
              <div class="title">Users</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box green-bg">
              <i class="fa fa-user"></i>
              <div class="count"><asp:Label ID="lbldealer" runat="server" Text="Label"></asp:Label></div>
              <div class="title">Dealers</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

        </div>
        <!--/.row-->


        


        <!-- Today status end -->



        <div class="row">

          <div class="col-lg-9 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>Registered Users</strong></h2>
                <%--<div class="panel-actions">
                  <a class="btn-setting" href="index.html#"><i class="fa fa-rotate-right"></i></a>
                  <a class="btn-minimize" href="index.html#"><i class="fa fa-chevron-up"></i></a>
                  <a class="btn-close" href="index.html#"><i class="fa fa-times"></i></a>
                </div>--%>
              </div>
              <div class="panel-body">
                <table class="table bootstrap-datatable countries">
                  <thead>
                    <tr>
                      
                      <th>City</th>
                      <th>Users</th>
                      <th>dealers</th>
                    
                    </tr>
                  </thead>
               
                <asp:DataList ID="dlcity" runat="server">
                    <ItemTemplate>
                       <tbody>
                    <tr>
                   
                      <td style="  padding: 8px; line-height: 1.4285;vertical-align: top; border-top: 1px solid #dddddd;"><asp:Label ID="lblcity" runat="server" Text='<%#Eval("address") %>'></asp:Label></td>
                      
                      <td style="  padding: 8px; line-height: 1.4285;vertical-align: top; border-top: 1px solid #dddddd;"><asp:Label ID="lbl_user" runat="server" Text="Label"></asp:Label></td>
                      <td style="  padding: 8px; line-height: 1.4285;vertical-align: top; border-top: 1px solid #dddddd;"><asp:Label ID="lbl_dealer" runat="server" Text='<%#Eval("Expr1") %>'></asp:Label></td>
                      
                    </tr>
                    </tbody>
                    </ItemTemplate>
                    </asp:DataList>

                </table>
              </div>

            </div>

          </div>
          

        </div>



       
         

        <%--<div class="row">
          

          <div class="col-md-6 portlets">
            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="pull-left">Send Email</div>
                
                <div class="clearfix"></div>
              </div>
              <div class="panel-body">
                <div class="padd">

                  <div class="form quick-post">
                    <!-- Edit profile form (not working)-->
                    <form class="form-horizontal">
                      <!-- Title -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">To</label>
                        <div class="col-lg-10">
                          
                          <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                       <!-- Title -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Subject</label>
                        <div class="col-lg-10">
                          
                          <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <!-- Content -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="content">Message</label>
                        <div class="col-lg-10">
                          <textarea class="form-control" id="content"></textarea>
                        </div>
                      </div>
                      <!-- Cateogry -->
                      <div class="form-group">
                        <label class="control-label col-lg-2">Category</label>
                        <div class="col-lg-10">
                          <select class="form-control">
                                                  <option value="">- Choose Cateogry -</option>
                                                  <option value="1">General</option>
                                                  <option value="2">News</option>
                                                  <option value="3">Media</option>
                                                  <option value="4">Funny</option>
                                                </select>
                        </div>
                      </div>
                      <!-- Tags -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="tags">Tags</label>
                        <div class="col-lg-10">
                          <input class="form-control" id="tags" type="text">
                        </div>
                      </div>

                      <!-- Buttons -->
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-2 col-lg-9">
                          <button class="btn btn-primary" type="submit">Publish</button>
                          <button class="btn btn-danger" type="submit">Save Draft</button>
                          <button class="btn btn-default" type="reset">Reset</button>
                        </div>
                      </div>
                    </form>
                  </div>


                </div>
                <div class="widget-foot">
                  <!-- Footer goes here -->
                </div>
              </div>
            </div>

          </div>

        </div>--%>
        <!-- project team & activity end -->

      </section>
      </section>
</asp:Content>

