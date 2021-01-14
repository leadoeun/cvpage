<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>게시판 작성</title>

    <!-- 공통 CSS -->
    <link rel="stylesheet" type="text/css" href="/css/common/common.css"/>

    <!-- 공통 JavaScript -->
    <script type="text/javascript" src="/js/common/jquery.js"></script>
    <script type="text/javascript">
        function goCvpage(){
            location.href="/cv/cvpage";
        }

        function insertEducation(){

        }
    </script>
</head>
<body>
<div>
    <h2>Write new education info</h2>
    <form id="educationForm" name="educationForm">
        <table border="1px">
            <tbody>
            <tr>
                <th>Startdate</th>
                <td><input id="startdate" name="startdate" value=""/></td>
            </tr>
            <tr>
                <th>Enddate</th>
                <td><input id="enddate" name="enddate" value=""/></td>
            </tr>
            <tr>
                <th>Institute Name</th>
                <td><input id="institute" name="institute" value=""/></td>
            </tr>
            <tr>
                <th>Major</th>
                <td><input id="major" name="major" value=""/></td>
            </tr>
            <tr>
                <th>GPA</th>
                <td><input id="gpa" name="gpa" value=""/></td>
            </tr>
            <tr>
                <th>Additional Information</th>
                <td><input id="etc" name="etc" value=""/></td>
            </tr>
            </tbody>
        </table>
    </form>
    <div>
        <button type="button" onclick="javascript:goCvpage();">Home</button>
        <button type="button" onclick="javascript:insertEducation();">Submit</button>
    </div>
</div>
</body>
</html>