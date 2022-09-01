﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorHome.aspx.cs" Inherits="METWebsite.InstructorHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="./StyleSheets/InstructorHome.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>

             <button class="logout">
                 <img id="logoutIcon" src="./images/InstructorHome/logout.svg" /><span id="logoutlabel">Log Out</span></></button>
        </div>
        <div id="Welcome_div">
            
                 <label class="title"> Welcome, Hytham!</label>
        </div>
        <div id="semesterTitleDiv">
            <label class="semesterTitle">Spring 2022</label>
        </div>
        <table>
            <tr>
                <td><label class="courseTitle">CSEN101 Introduction to computer scienece</label></td>
                <td><asp:Button  CssClass="viewCourse" runat="server" Text="View Course" /></td>
            </tr>
            <tr>
                <td><label class="courseTitle">CSEN101 Introduction to computer scienece</label></td>
                <td><asp:Button  CssClass="viewCourse" runat="server" Text="View Course" /></td>
            </tr>
            <tr>
                <td><label class="courseTitle">CSEN101 Introduction to computer scienece</label></td>
                <td><asp:Button  CssClass="viewCourse" runat="server" Text="View Course" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
