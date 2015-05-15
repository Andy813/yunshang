/**
 * Created by peter on 2015/4/28.
 */

/*默认DG的样式*/
var DG = function () {
    striped = true;
    pagination = true;
    singleSelect = true;
    pageSize = 10;
    pageList = [10, 20, 30, 50, 100];
    fitColumns = true;
    rownumbers = true;
};

/*文章管理页面,文章数据表属性设置*/
var article_dg = new DG();
article_dg.url = '';
article_dg.title='文章管理表格';
article_dg.fit = true;
article_dg.border= false;
article_dg.toolbar = '#article_dg_toolbar';
article_dg.columns = [[
    {field: 'article_id', title: '文章ID', width: 60, hidden: true},
    {field: 'title', title: '文章标题', width: 120, sortable: true},
    {field: 'visitedCount', title: '浏览次数', width: 80, sortable: true},
    {field: 'keyword', title: '文章关键字', width: 100, sortable: true},
    {field: 'resume', title: '文章简述', width: 120},
    {field: 'content', title: '文章内容', width: 120},
    {field: 'online', title: '是否发布', width: 80, sortable: true},
    {field: 'delStatus', title: '是否失效', width: 80, sortable: true},
    {field: 'createTime', title: '创建时间', width: 80, sortable: true},
    {field: 'publishTime', title: '发布时间', width: 80, sortable: true},
    {field: 'modifyTime', title: '修改时间', width: 80, sortable: true}
]];
