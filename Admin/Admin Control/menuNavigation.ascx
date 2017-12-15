<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menuNavigation.ascx.cs" Inherits="Admin_Admin_Control_menuNavigation" %>
<nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                           <div class="user-section-inner">
                              <%-- <img src="../assets/img/ADMIN.png" alt="" />--%>
                               
                            </div>
                           <a href="../Admin/WellcomePage.aspx">  <div class="user-info">
                                <div> <strong>ADMIN</strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div></a>
                        </div>
                        <!--end user image section-->
                    </li>                     
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Setting<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level" style="background-color:rgb(83, 163, 163);">
                            <li>                              
                                 <a href="../Admin/ChangePass.aspx">Change Password</a>
                            </li>                            
                            <li>
                                <a href="../Admin/logout.aspx">Logout</a>
                            </li>                           
                            
                        </ul>
                        <!-- second-level-items -->
                    </li> 
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Master<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level" style="background-color:rgb(83, 163, 163);">
                                                        
                            <li>
                                <a href="../Admin/Menu.aspx">Add Menu</a>
                            </li>
                             <li>
                                <a href="../Admin/Title.aspx">Add Title</a>
                            </li>                          
                            
                        </ul>
                        <!-- second-level-items -->
                    </li> 
                     <li>
                        <a href="../Admin/Email.aspx"><i class="fa fa-sitemap fa-fw"></i> Registered Email<span class="fa arrow"></span></a>                      
                    </li>    
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>