<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resume</title>
    <script type="text/javascript" src="/js/common/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            getEducation();
        });

        function goEducationWrite(){
            location.href="/cv/educationWrite";
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

                var edulist=obj.list;
                var html="";
                if(edulist.length>0){
                    for (var i=0; i<edulist.length; i++){
                        var eduSeq = edulist[i].seq;
                        var eduStartdate = edulist[i].startdate;
                        var eduEnddate = edulist[i].enddate;
                        var eduInstitute = edulist[i].institute;
                        var eduMajor = edulist[i].major;
                        var eduGpa = edulist[i].gpa;
                        var eduEtc = edulist[i].etc;


                        html+='<tr>';
                        html+='<td id="period" style="width: 4rem;">';
                        html+=eduStartdate+"~"+eduEnddate;
                        html+='</td>';
                        html+='<td id="institute" style="width: 10rem;">';
                        html+=eduInstitute;
                        html+='</td>';
                        html+='</tr>';
                        html+='<tr>';
                        html+='<td id="major">';
                        html+=eduMajor;
                        html+='</td>';
                        html+='<td id="gpa">';
                        html+=eduGpa;
                        html+='</td>';
                        html+='</tr>';
                        html+='<tr>';
                        html+='<td id="etc" colspan="2">';
                        html+=eduEtc;
                        html+='</td>';
                        html+='</tr>';
                    }




                    $("#edu_tbody").html(html);
                }
                else{
                    html+=`<p>
                        Content does not exist
                    </p>
                    <button type='button' onclick='javascript:goEducationWrite();'>New</button>
                    `
                    $("#eduNotExist").html(html);
                }



            }

        }
    </script>
</head>
<body>
<div>
    <h1>Doeun Lee</h1>
</div>
<div>
    <h2>Education</h2>
    <div id="eduNotExist">

    </div>
    <div>
        <table border="1px">
            <tbody id="edu_tbody">

            </tbody>
        </table>
    </div>
</div>
<div>
    <h2>Major Achievements</h2>
    <div>
        <p>
            Content does not exist
        </p>
        <button>New</button>
    </div>
    <div>
        <table border="1px">
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
