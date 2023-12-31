﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRemoveCourse.aspx.cs" Inherits="METWebsite.AdminRemoveCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
 
       <link rel="stylesheet" href="./stylesheets/AdminAddCourse.css" />
    <link rel="stylesheet" href="./stylesheets/instructorsprofiles.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveAlumni.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveInstructor.css" />


</head>
<body>
 <form id="form1" runat="server">
        <div class="scrollable">
            <div class="header">    

                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


                <img class="bar" src="./images/topBarImages/bar.svg" />


                <label class="label1">Faculty of Media Engineering & Technology</label>

                <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
                <label class="adminLabel">Admin</label>

            </div>
        </div>

 <nav>
           
            <ul class="navUl">
                <li><img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" /></li>
                <li><a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a></li>


                <li class="dropdown"><a>Home</a>
                    <ul class="dropdown-content" id="dropdown-home">
                        <li><a>Edit Photo Gallery</a></li>
                        <li><a>Add News</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Courses</a>
                    <ul class="dropdown-content" id="dropdown-course" >
                        <li><a>Add Course</a></li>
                        <li><a>Remove Course</a></li>
                        <li><a>Add Instructor</a></li>
                        <li><a>Remove Instructor</a></li>
                        <li><a>Assign Instructor</a></li>
                        <li><a>Remove Instructor</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Student Activity</a>
                    <ul class="dropdown-content" id="dropdown-studentActivity">
                        <li><a>Add Student Activity</a></li>
                        <li><a>Remove Student Activity</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Other</a>
                    <ul class="dropdown-content" id="dropdown-others">
                         <li><a>Add New Alumni</a></li>
                        <li><a>Define Weeks </a></li>
                        <li><a>Define Weeks </a></li>
                    </ul>
                </li>
                
                
            </ul>
        </nav>  

             <div class="assignDiv">
            <label>Remove Course</label>
        </div>
        
  
        <div class="alumni" id="Courses">

            <div class="hierarchyTitle">
                <div>
                    <asp:ImageButton runat="server" ImageUrl="images/staff/search.png" CssClass="searchButton" OnClick="toSearchRes" />
                    <asp:TextBox placeholder="Search.." ID="searchInput" runat="server" />
                </div>
            </div>

            <div class="alumniList" id="courseRemove" runat="server">
            </div>
            <div class="bottom"></div>
        </div>
    </form>

</body>
</html>
