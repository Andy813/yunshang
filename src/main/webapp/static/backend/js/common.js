/**
 * Created by peter on 2015/4/28.
 */
/*初始化数据*/
var west_tree_data = [{
    "id": 1,
    "text": "后台菜单管理系统",
    "iconCls": "icon-ok",
    "children": [{
        "id": 10,
        "text": "栏目管理",
        "iconCls": "icon-ok",
        "checked": true,
        "attributes": {
            "url": "category/list.do"
        }
    }, {
        "id": 11,
        "text": "文章管理",
        "iconCls": "icon-ok",
        "state": "open",
        "attributes": {
            "url": "article/list.do"
        }
    }]
}];


/*easyui 显示消息提示信息*/
function showMsg(content, title) {
    var titleText = title || '提示信息';
    $.messager.show({
        showType: 'show',
        title: titleText,
        msg: content
    });
}


/*jeasyui中部 add tab 方法*/
function addTab(opts) {
    if ($('#center_tabs').tabs('exists', opts.title)) {
        $('#center_tabs').tabs('select', opts.title);
        return;
    }
    $('#center_tabs').tabs('add', {
        title: opts.title,
        href: opts.href,
        iconCls: opts.iconCls,
        closable: true,
        tools: [{
            iconCls: 'icon-mini-refresh',
            handler: function () {
                $('#center_tabs').tabs('getTab', opts.title).panel('refresh');
            }
        }]
    });
}


/* jeasyui 初始化*/
var $west_tree, $center_tabs;
$(function () {
    /*导航树形菜单初始化*/
    $west_tree = $('#west_tree').tree({
        data: west_tree_data,
        animate: true,
        lines: true,
        onClick: function (node) {
            var url = node.attributes ? node.attributes.url : '';
            if (url) {
                addTab({
                    title: node.text,
                    href: url,
                    iconCls: node.iconCls
                });
            }
        }
    });
    /*中部tab面板初始化*/
    $center_tabs = $('#center_tabs').tabs({
        fit: true,
        border: false,
        closable:true,
        tools:[{
            iconCls:'icon-mini-refresh',
            handler:function(){
                alert('refresh');
            }
        }]
    });
});