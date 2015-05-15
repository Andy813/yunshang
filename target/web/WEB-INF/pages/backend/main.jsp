<%--
  User: Togo
  Date: 2015/5/4
  Time: 14:21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="inc.jsp" />
</head>
<body class="easyui-layout">
<div data-options="region:'north',split:false" style="height:100px;overflow: hidden;">
  <h1>蕴商信息网</h1>
</div>
<div data-options="region:'west',title:'导航菜单',split:false,iconCls:'icon-sum'" style="width:200px; overflow: hidden;">
  <ul id="west_tree"></ul>
</div>
<div data-options="region:'center'">
  <div id="center_tabs"></div>
</div>
</body>
</html>
