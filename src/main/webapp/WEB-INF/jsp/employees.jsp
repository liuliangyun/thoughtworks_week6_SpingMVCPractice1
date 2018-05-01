<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
    window.onload=function(){
        var table=document.getElementById("tb");
        var tboby=table[0];
        var trs=document.getElementsByTagName("tr");
        for(var i=1;i<trs.length;i++){
            if(i%2==0){
                trs[i].style.background="#FFFFFF";  //设置偶数行字体的颜色
            }else{
                trs[i].style.background="#F5F5F5"; //设置奇数行的背景色
            }
        }
    };
</script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<body>
    <style>
        td{
            width:200px;
            height:50px;
            text-align:center;
            font-weight:bold;
        }
    </style>
    <table id="tb" align='center' border='1' cellspacing='0'>
        <tr bgcolor = "black">
            <td style="border-right:none;"><font color="white">编号</font></td>
            <td style="border-left:none;border-right:none;"><font color="white">姓名</font></td>
            <td style="border-left:none;border-right:none;"><font color="white">年龄</font></td>
            <td style="border-left:none;"><font color="white">性别</font></td>
        </tr>

        <!-- 获取值的时候，对应的是addAttribute的第一个参数！别名为emp -->
        <c:forEach items="${employees}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.age}</td>
                <td>${emp.gender}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
