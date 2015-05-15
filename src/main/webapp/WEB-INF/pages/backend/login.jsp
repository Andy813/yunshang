<%--
  Created by IntelliJ IDEA.
  User: peter
  Date: 2015/4/28
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="inc.jsp" />
  <style>
    table th {
      background: #eee;
    }
  </style>
  <script type="text/javascript" charset="utf-8">
    var changeValidCode = function () {

      $('img', $('#loginTable')).attr('src', '${pageContext.request.contextPath}/toor-mgr/validCode.do?a=' + Math.random());
    };
    var loginFormSubmit = function(){
      $('#loginForm').form('submit',{
        url:'${pageContext.request.contextPath}/toor-mgr/login.json',
        success: function(data){
          var data = eval('(' + data + ')');  // change the JSON string to javascript object
          showMsg(data.msg,'提示信息');
          if (data.success){
            setTimeout(function(){
              window.location.href='${pageContext.request.contextPath}/toor-mgr/main.do';
            },1300);
          }
        }
      });
    }

    var loginFormReset = function(){
      $('#loginForm').form('reset');
    }
  </script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',border:false" style="height:100px;overflow: hidden">
  <div style="margin:28px auto;text-align: center;"><h1>LOGO 蕴 商 信 息 网</h1>
  </div>
</div>
<div data-options="region:'center'" style="text-align: center;">
  <form id="loginForm" method="post">
    <table style="margin: 60px auto;" id="loginTable">
      <tr>
        <th>用户名:</th>
        <td><input name="username" class="easyui-validatebox" data-options="required:true,missingMessage:'请填写用户名'"/></td>
      </tr>
      <tr>
        <th>密　码:</th>
        <td><input type="password"  name="pwd" class="easyui-validatebox"
                   data-options="required:true,missingMessage:'请填写登录密码'"/></td>
      </tr>
      <tr>
        <th>验证码:</th>
        <td><input class="easyui-validatebox" name="validCode" maxlength="4"/></td>
        <td><a href="javascript:void(0);" onclick="changeValidCode();">
          <img src="${pageContext.request.contextPath}/toor-mgr/validCode.do" alt="换一张" title="换一张"/></a>
        </td>
      </tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr>
        <td colspan="2" style="text-align: center;"><a href="javascript:void(0);" onclick="loginFormSubmit();" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>　　<a id="btn" href="javascript:void(0);" onclick="loginFormReset();" class="easyui-linkbutton" data-options="iconCls:'icon-undo'">重置</a></td>
      </tr>
    </table>
  </form>
  <div style="margin-top: 80px;">
    <p style="color: darkred;font-size:14px;">警告：如果您不是本站的管理组成员,请立即退出这个页面.感谢您的配合!</p>
  </div>
</div>

<div data-options="region:'south',border:false" style="height:40px; text-align: center;overflow: hidden;">
  <p style="color: #333">版权所有：<a href="${pageContext.request.contextPath}/" style="color:#333;text-decoration: none;">蕴商信息网</a> &copy; 2015--2015</p>
</div>

</body>
</html>