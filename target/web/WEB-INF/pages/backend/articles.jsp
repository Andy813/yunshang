<%--
  User: Togo
  Date: 2015/5/5
  Time: 10:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table id="article_datagrid"></table>
<div id="article_dg_toolbar">
    <input id="article_query" class="easyui-searchbox" style="width:220px" data-options="prompt:'输入查询的关键词'"/>
    <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true"
       onclick="addArticleBtn();">新增文章</a>
    <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-edit" plain="true"
       onclick="modifyArticleBtn();">修改文章</a>
    <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-remove" plain="true"
       onclick="removeArticleBtn();">删除文章</a>
</div>

<div id="article_add_window">
    <h3>创 建 新 文 章</h3>

    <div class="article_body_box">
        <form>
            <fieldset>
                <legend>基本属性</legend>
                <table>
                    <tr>
                        <th>文章标题:</th>
                        <td><input name="title" class="easyui-validatebox"
                                   data-options="required:true,width:200,missingMessage:'文章标题必填'"/></td>
                        <th>关键字:</th>
                        <td><input name="keyword" class="easyui-validatebox"
                                   data-options="required:true,width:200,missingMessage:'多个关键词之间使用英文逗号分隔'"></td>
                    </tr>
                    <tr>
                        <th>所属类别:</th>
                        <td><select class="easyui-combobox" name="category" data-options="panelHeight:'auto',width:200">
                            <option value="aa">要闻专递</option>
                            <option>专题研究</option>
                            <option>金融企业</option>
                            <option>企业招聘</option>
                            <option>金融推荐</option>
                            <option>蕴才学堂</option>
                            <option>健康园地</option>
                        </select>
                        </td>
                        <th>发布状态:</th>
                        <td><label style="font-size: 14px;"><input type="checkbox" name="online">是否发布?</label></td>
                    </tr>
                    <tr>
                        <th>文章简述:</th>
                        <td colspan="3"><input name="resume" class="easyui-validatebox"
                                   data-options="required:false" style="width:507px;"/></td>
                    </tr>
                </table>
            </fieldset>
            <fieldset>
                <legend>文章内容</legend>
                <script id="article_container" style="width:95%;height:300px;"  name="content" type="text/plain"></script>
            </fieldset>
        </form>
    </div>
</div>
<!-- 配置文件 -->
<script type="text/javascript" src="${pagecontext.request.contextpath}/static/backend/plugins/ueditor143/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="${pagecontext.request.contextpath}/static/backend/plugins/ueditor143/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('article_container');
</script>
<script type="text/javascript" charset="utf-8">
    /*默认变量*/
    var $article_datagrid, $article_add_window;

    /*easyui add按钮事件处理函数*/
    function addArticleBtn() {
        $article_add_window.window('open');
    }
    $(function () {
        $.parser.parse();
        $article_datagrid = $('#article_datagrid').datagrid(article_dg);
        $article_add_window = $('#article_add_window').window({
            title: '新增文章内容窗口',
            width: 800,
            height: 550,
            modal: true,
            closed: true,
            minimizable: false,
            maximizable: false
        });
    });
</script>