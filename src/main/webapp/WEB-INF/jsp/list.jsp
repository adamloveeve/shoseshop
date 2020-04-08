<%--
  Created by IntelliJ IDEA.
  User: jtzs
  Date: 2020/3/31
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>鞋子内容</title>
</head>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script language="JavaScript">
    $(function () {
        $("#search").click(function () {
            $.ajax({
                type: "post",
                url: "findbysid.action",
                data: $("#sid"),
                dataType: "json",
                success: function (data) {
                    var html = "";
                    html +=
                        "<td>" + data.sid + "</td><td>" + data.classes.cname + "</td><td>" + data.sname
                        + "</td><td>" + data.sex + "</td><td>" + data.birthplace + "</td>";
                    $("#student").html(html);
                },
                //null值不会被success回调函数捕获，因此可以通过error来实现该功能
                error: function () {
                    alert("请输入正确的学号！");
                }
            })
        })
    })
</script>
<body>
<center>
    <div style="margin-top: 25px">
        请输入所要查询的鞋子号码:<input type="text" id="sid" name="sid"/><input id="search" style="margin-left: 10px" type="button" value="搜索"><br/>
    </div>
    <div style="margin-top: 50px">
        <table border="1">
            <tr>
                <td>学号</td>
                <td>班级</td>
                <td>姓名</td>
                <td>性别</td>
                <td>出生地</td>
            </tr>
            <tr id="student">

            </tr>
        </table>
    </div>
</center>

</body>
</html>
