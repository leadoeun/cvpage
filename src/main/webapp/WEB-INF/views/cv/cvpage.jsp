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

        function getEducationCallback(obj) {
            if (obj != null) {

                var eduSeq = obj.seq;
                var eduStartdate = obj.startdate;
                var eduEnddate = obj.enddate;
                var eduInstitute = obj.institute;
                var eduMajor = obj.major;
                var eduGpa = obj.gpa;
                var eduEtc = obj.etc;

                $("#period").text(eduStartdate + "~" + eduEnddate);
                $("#institute").text(eduInstitute);
                $("#major").text(eduMajor);
                $("#gpa").text(eduGpa);
                $("#etc").text(eduEtc);
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

                <td id="period" style="width: 4rem;">
                    기간
                </td>
                <td id="institute" style="width: 10rem;">
                    Name of Institute
                </td>
            </tr>
            <tr>
                <td id="major">Major</td>
                <td id="gpa">GPA</td>
            </tr>
            <tr>
                <td id="etc" colspan="2">etc.</td>
            </tr>
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
