<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html, charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/common/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            getEducation();
        });

        function registerName(){
            $.ajax({
                url: "/cv/registerName",
                data: {
                    name:$("#user_name").val()
                },
                dataType:"JSON",
                cache: false,
                async: true,
                type:"POST",
                success: function(obj){
                    alert("Name registered");
                    location.reload(true);
                    location.href = location.href;
                    history.go(0);
                },
                error: function(xhr, status, error){
                    alert("Failed to register name");
                }
            })
        }

        function deleteName(){
            $.ajax({
                url:"/cv/deleteName",
                dataType:"JSON",
                cache: false,
                async: true,
                type: "POST",
                success: function(obj){
                    alert("Successfully deleted");
                    location.reload(true);
                    location.href = location.href;
                    history.go(0);
                },
                error: function(xhr, status, error){
                    alert("Failed to delete name");
                }
            })
        }

        function goEducationWrite() {
            location.href = "/cv/educationWrite";
        }

        function getEducation() {
            $.ajax({
                url: "/cv/education",
                dataType: "JSON",
                cache: false,
                async: true,
                type: "GET",
                success: function (obj) {
                    getEducationCallback(obj);
                },
                error: function (xhr, status, error) {
                    alert("Failed to get education");
                }

            });
        }

        function deleteEducation(sequence){
            $.ajax({
                url:"/cv/deleteEducation",
                data:{
                    seq: sequence
                },
                dataType: "JSON",
                cache: false,
                async: true,
                type: "POST",
                success: function(obj){
                    deleteEducationCallback(obj);
                },
                error: function(xhr, status, error){}
            });
        }

        function deleteEducationCallback(obj){
            if(obj!=null){
                var result=obj.result;

                if (result=="success"){
                    alert("successfully deleted");
                    location.reload(true);
                    location.href = location.href;
                    history.go(0);
                } else{
                    alert("failed to delete");
                    return;
                }
            }
        }


        function getAchievements() {
            $.ajax({
                url: "/cv/achievements",
                dataType: "JSON",
                cache: false,
                async: true,
                type: "GET",
                success: function (obj) {
                    getAchievementsCallback(obj);
                },
                error: function (xhr, status, error) {
                    alert("Failed to get major achievements");
                }

            });
        }

        function getEducationCallback(obj) {
            if (obj != null) {

                var edulist = obj.list;
                var html = "";
                var html_button="";
                if (edulist.length > 0) {
                    for (var i = 0; i < edulist.length; i++) {
                        var eduSeq = edulist[i].seq;
                        var eduStartdate = edulist[i].startdate;
                        var eduEnddate = edulist[i].enddate;
                        var eduInstitute = edulist[i].institute;
                        var eduMajor = edulist[i].major;
                        var eduGpa = edulist[i].gpa;
                        var eduEtc = edulist[i].etc;



                        html += `<table class="table table-striped"> <tr>
  <td id="period" style="width: 4rem;">
    \${eduStartdate} ~ \${eduEnddate}
  </td>
  <td id="institute" style="width: 10rem;">
    \${eduInstitute}
  </td>
</tr>
<tr>
  <td id="major">
    \${eduMajor}
  </td>
  <td id="gpa">
    \${eduGpa}
  </td>
</tr>
<tr>
  <td id="etc" colspan="2">
    \${eduEtc}
  </td>
</tr></table>
<button class="btn btn-dark" type="button" onclick="javascript:deleteEducation(\${eduSeq});">Delete</button>
<br>
`
                    }
                    $("#edu_tbody").html(html);
                    html_button +=`<button class='btn btn-dark' type='button' onclick='javascript:goEducationWrite();'>New</button>`
                    $("#button").html(html_button);
                } else {
                    html += `<p>
                        Content does not exist
                    </p>
                    <button class='btn btn-dark' type='button' onclick='javascript:goEducationWrite();'>New</button>
                    `
                    $("#eduNotExist").html(html);
                }


            }

        }
    </script>
</head>
<body>
<div>
    <c:choose>
        <c:when test="${empty userDto}">
            <input id="user_name" placeholder="Please enter your name"/>
            <button class="btn btn-dark" type="button" onclick="javascript:registerName();">Register</button>
        </c:when>
        <c:otherwise>
            <h1>${userDto.name}</h1>
            <button class="btn btn-dark" type="button" onclick="javascript:deleteName();">Delete</button>
        </c:otherwise>
    </c:choose>
</div>
<div>
    <br/>
    <h2>Education</h2>
    <br/>
    <div id="eduNotExist">

    </div>
    <div id="edu_tbody">
    </div>
    <div id="button">
    </div>
</div>
<div>
    <br/>
    <h2>Major Achievements</h2>
    <br/>
    <div>
        <p>
            Content does not exist
        </p>
        <button class="btn btn-dark">New</button>
    </div>
    <div>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td style="width: 6rem;">Award</td>
                <td style="width: 20rem;">Award Description</td>
            </tr>
            <tr>
                <td style="width: 6rem;">Club</td>
                <td style="width: 20rem;">Club Description</td>
            </tr>
            <tr>
                <td style="width: 6rem;">Certification</td>
                <td style="width: 20rem;">Certification Description</td>
            </tr>

            </tbody>
        </table>
    </div>
</div>

</body>
</html>
