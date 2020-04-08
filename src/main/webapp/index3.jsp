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
  <title>JT鞋子</title>
</head>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script language="JavaScript">
  $(function () {
    $("#search").click(function () {
      $.ajax({
        type: "post",
        url: "findbysid",
        data: $("#sid"),
        dataType: "json",
        success: function (data) {
          var html = "";
          html +=
                  "<td>" + data.shoseId + "</td><td>" + data.name + "</td><td>" + data.number
                  + "</td><td>" + data.price + "</td><td>" + data.remarks + "</td>";
          $("#student").html(html);
        },
        //null值不会被success回调函数捕获，因此可以通过error来实现该功能
        error: function () {
          alert("请输入正确的鞋子号！");
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
        <td>鞋子号码</td>
        <td>鞋子名称</td>
        <td>数量</td>
        <td>价格</td>
        <td>备注</td>
      </tr>
      <tr id="student">

      </tr>
    </table>
  </div>
</center>

</body>
</html>
