<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resume</title>
    <script type="text/javascript" src="/js/common/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            getBoardList();
        });

        function getEducation(){
            $.ajax({
                url:"/cv/education",
                dataType:"JSON",
                cache: false,
                async: true,
                type:"GET",
                success: function(obj){},
                error: function(xhr, status, error){
                    alert("Failed to get education");
                }

            });
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

                <td style="width: 4rem;">
                    기간
                </td>
                <td style="width: 10rem;">
                    Name of Institute
                </td>
            </tr>
            <tr>
                <td>Major</td>
                <td>GPA</td>
            </tr>
            <tr>
                <td colspan="2">etc.</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
