<%--
  Created by IntelliJ IDEA.
  User: peter
  Date: 2015/4/28
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<body>
<div class="page-width">
    <!-- Start banner BODY section -->
    <div id="wowslider-container1">
        <div class="ws_images"><ul>
            <li><a href="#" target="_self"><img src="${pagecontext.request.contextpath}/static/plugins/banner/data1/images/banner1.jpg" alt="蕴  才  网" title="蕴  才  网" id="wows1_0"/></a>人 才 成 长 与 发 展 综 合 平 台</li>
            <li><a href="#"><img src="${pagecontext.request.contextpath}/static/plugins/banner/data1/images/banner2.jpg" alt="蕴  才  网" title="蕴  才  网" id="wows1_1"/></a>人 才 成 长 与 发 展 综 合 平 台</li>
            <li><a href="http://www.shdhy.net/"><img src="${pagecontext.request.contextpath}/static/plugins/banner/data1/images/banner3.jpg" alt="大  汉  窑" title="大  汉  窑" id="wows1_2"/></a>永 典 瓷 业, 民 族 的 世 界 的 !</li>
        </ul></div>
        <div class="ws_shadow"></div>
    </div>
    <script type="text/javascript" src="${pagecontext.request.contextpath}/static/plugins/banner/engine1/wowslider.js"></script>
    <script type="text/javascript" src="${pagecontext.request.contextpath}/static/plugins/banner/engine1/script.js"></script>
    <!-- End banner BODY section -->
</div>
<!-- /End banner 区域-->

<!--头部导航菜单-->
<div id="menu-box">
    <!--菜单样式开始-->
    <div id="navMenu">
        <ul>
            <li class="onelink"><a href='/' target="_blank">首页</a></li>
            <li><a href='#' rel='dropmenu1' target="_blank">蕴才学堂</a></li>
            <li><a href='#' target="_blank">招聘信息</a></li>
            <li><a href='#' rel='dropmenu2' target="_blank">人才信息</a></li>
            <li><a href='#' rel='dropmenu3' target="_blank">产业研究</a></li>
            <li><a href='#' target="_blank">公益活动</a></li>
            <li><a href='#'>人才健康</a></li>
            <li><a href='#'>关于我们</a></li>
        </ul>
    </div>
    <ul id="dropmenu1" class="dropMenu">
        <li><a href="#" target="_blank">英语培训</a></li>
        <li><a href="#" target="_blank">中文培训</a></li>
        <li><a href="#" target="_blank">面试培训</a></li>
        <li><a href="#" target="_blank">学历教育</a></li>
        <li><a href="#" target="_blank">创业资讯</a></li>
        <li><a href="#" target="_blank">经济理论</a></li>
    </ul>
    <ul id="dropmenu2" class="dropMenu">
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
    </ul>
    <ul id="dropmenu3" class="dropMenu">
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
        <li><a href="#" target="_blank">XXXXXXXXXX</a></li>
    </ul>

    <!--菜单样式结束-->

</div>
<!--/End 头部导航菜单-->

<!--main container box-->
<div id="main-container-box" class="page-width">
    <!-- left-main box-->
    <div id="left-main-box" class="fl">
        <%--培训 开始--%>
        <div id="study-box">
            <div class="row">
                <div class="col-xs-4 col-md-4 ">
                    <div class="thumbnail" style="height: 334px;">
                        <a href="#" title="Bootstrap 编码规范" target="_blank"
                           onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])"><img class="lazy"
                                                                                                   src="${pagecontext.request.contextpath}/static/img/home/codeguide.png"
                                                                                                   width="300"
                                                                                                   height="150"
                                                                                                   data-src="${pagecontext.request.contextpath}/static/img/home/codeguide.png"
                                                                                                   alt="Headroom.js"></a>
                        <div class="caption">
                            <h3>
                                <a href="http://codeguide.bootcss.com"
                                   title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])"> 考研英语培训<br>
                                </a>
                                <a href="http://codeguide.bootcss.com"
                                   title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])"> CET-4/6英语考试培训<br>
                                </a>
                                <a href="http://codeguide.bootcss.com"
                                   title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])"> 中小学英语培训<br>
                                </a>

                            </h3>

                            <p>&nbsp;</p>

                            <p>
                                Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-xs-4 col-md-4">
                    <div class="thumbnail" style="height: 334px;">
                        <a href="http://www.jquery123.com/api/" title="jQuery API 中文文档/手册" target="_blank"
                           onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'jQueryAPI中文手册'])"><img class="lazy"
                                                                                                       src="${pagecontext.request.contextpath}/static/img/home/jqueryapi.png"
                                                                                                       width="300"
                                                                                                       height="150"
                                                                                                       data-src="${pagecontext.request.contextpath}/static/img/home/jqueryapi.png"
                                                                                                       alt="jQuery API 中文文档/手册"></a>

                        <div class="caption">
                            <h3>
                                <a href="http://www.bootcdn.cn/" title="Bootstrap中文网开放CDN服务" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'bootcdn'])">对外汉语培训<br>
                                </a>
                                <a href="http://www.bootcdn.cn/" title="Bootstrap中文网开放CDN服务" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'bootcdn'])">应用文培训<br>
                                </a>
                                <a href="http://www.bootcdn.cn/" title="Bootstrap中文网开放CDN服务" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'bootcdn'])">中小学作文培训<br>
                                </a>
                            </h3>

                            <p>&nbsp;</p>

                            <p>
                                根据最新的 jQuery 1.11.x 和 2.1.x 版本翻译的 jQuery API 中文文档/手册。
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-xs-4 col-md-4 ">
                    <div class="thumbnail" style="height: 334px;">
                        <a href="http://www.bootcdn.cn/" title="Bootstrap中文网开放CDN服务" target="_blank"
                           onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'bootcdn'])"><img class="lazy"
                                                                                                 src="${pagecontext.request.contextpath}/static/img/home/opencdn.png"
                                                                                                 width="300"
                                                                                                 height="150"
                                                                                                 data-src="${pagecontext.request.contextpath}/static/img/home/opencdn.png"
                                                                                                 alt="Open CDN"></a>
                        <div class="caption">
                            <h3>
                                <a href="http://expo.bootcss.com/" title="Bootstrap优站精选" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'youzhan'])">岗位匹配类题目与解答<br>
                                </a>
                                <a href="http://expo.bootcss.com/" title="Bootstrap优站精选" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'youzhan'])">活动组织类题目与解答<br>
                                </a>
                                <a href="http://expo.bootcss.com/" title="Bootstrap优站精选" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'youzhan'])">人际关系类题目与解答<br>
                                </a>

                            </h3>

                            <p>&nbsp;</p>

                            <p>Bootstrap中文网联合又拍云存储共同推出了开放CDN服务，
                            </p>
                        </div>
                    </div>
                </div>


                <div class="col-xs-4 col-md-4 ">
                    <div class="thumbnail" style="height: 334px;">
                        <a href="http://expo.bootcss.com/" title="Bootstrap优站精选" target="_blank"
                           onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'youzhan'])"><img class="lazy"
                                                                                                 src="${pagecontext.request.contextpath}/static/img/home/expo.png"
                                                                                                 width="300"
                                                                                                 height="150"
                                                                                                 data-src="${pagecontext.request.contextpath}/static/img/home/expo.png"
                                                                                                 alt="Bootstrap优站精选"></a>

                        <div class="caption">
                            <h3>
                                <a href="http://codeguide.bootcss.com"
                                   title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])">华东理工大学经济管理本科教育<br>
                                </a>
                                <a href="http://codeguide.bootcss.com"
                                   title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])"> 东华大学室内设计本科教育<br>
                                </a>
                                <a href="http://codeguide.bootcss.com"
                                   title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])"> 上海师范大学行政管理本科教育<br>
                                </a>

                            </h3>

                            <p>&nbsp;</p>

                            <p>Bootstrap优站精选频道收集了众多基于 Bootstrap 构建、设计精美的、有创意的网站。
                            </p>
                        </div>
                    </div>
                </div>


                <div class="col-xs-4 col-md-4 ">
                    <div class="thumbnail" style="height: 334px;">
                        <a href="http://www.gulpjs.com.cn/" title="gulp.js - 基于流的自动化构建工具。" target="_blank"
                           onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'gulpjs'])"><img class="lazy"
                                                                                                src="${pagecontext.request.contextpath}/static/img/home/gulpjs.png"
                                                                                                width="300" height="150"
                                                                                                data-src="${pagecontext.request.contextpath}/static/img/home/gulpjs.png"
                                                                                                alt="gulpjs"></a>

                        <div class="caption">
                            <h3>
                                <a href="http://www.gulpjs.com.cn/" title="gulp.js - 基于流的自动化构建工具。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'gulp'])">创业咨询<br>
                                </a>
                            </h3>

                            <p>&nbsp;</p>

                            <p>gulp.js - 基于流(stream)的自动化构建工具。Grunt 采用配置文件的方式执行任务，而 Gulp 一切都通过代码实现。
                            </p>
                        </div>
                    </div>
                </div>


                <div class="col-xs-4 col-md-4 ">
                    <div class="thumbnail" style="height: 334px;">
                        <a href="/p/lesscss/" title="LESS一种动态样式语言" target="_blank"
                           onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'lesscss'])"><img class="lazy"
                                                                                                 src="${pagecontext.request.contextpath}/static/img/home/lesscss.png"
                                                                                                 width="300"
                                                                                                 height="150"
                                                                                                 data-src="${pagecontext.request.contextpath}/static/img/home/lesscss.png"
                                                                                                 alt="LESSCSS"></a>

                        <div class="caption">
                            <h3>
                                <a href="/p/lesscss/" title="Grunt是基于Node.js的项目构建工具。" target="_blank"
                                   onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'lesscss'])">经济理论<br>
                                </a>
                            </h3>

                            <p>&nbsp;</p>

                            <p>
                                LESS为CSS赋予了动态语言的特性，如变量、继承、运算、函数。LESS既可以在客户端上运行 (支持IE
                                6+、Webkit、Firefox)，也可以借助Node.js或者Rhino在服务端运行。
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <%--培训结束--%>
        <div class="news-images-scrolllist-box">
            <div class="scrolllist" id="image-scroll-list">
                <a class="abtn aleft" href="#left" title="左移"></a>

                <div class="imglist_w">
                    <ul class="imglist">
                        <li>
                            <a target="_blank" href="#" title="jquery tab选项卡 ajax选项卡 静态选项卡 鼠标点击选项卡 鼠标滑过选项卡"><img
                                    width="160" height="140" alt="jquery tab选项卡 ajax选项卡 静态选项卡 鼠标点击选项卡 鼠标滑过选项卡"
                                    src="static/img/home/7.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/7.jpg">jquery
                                tab选项卡 ajax选项卡 静态选项卡 鼠标点击选项卡 鼠标滑过选项卡</a></p>
                        </li>
                        <li>
                            <a target="_blank" href="#" title="jquery 万能float浮动层插件 制作QQ MSN 旺旺在线客服功能"><img width="160"
                                                                                                           height="140"
                                                                                                           alt="jquery 万能float浮动层插件 制作QQ MSN 旺旺在线客服功能"
                                                                                                           src="static/img/home/8.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/8.jpg">jquery
                                万能float浮动层插件 制作QQ MSN 旺旺在线客服功能</a></p>
                        </li>
                        <li>
                            <a target="_blank" href="#" title="jquery smartFloat插件制作仿淘宝产品列表页默认排序搜索框"><img width="160"
                                                                                                          height="140"
                                                                                                          alt="jquery smartFloat插件制作仿淘宝产品列表页默认排序搜索框"
                                                                                                          src="static/img/home/9.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/9.jpg">jquery
                                smartFloat插件制作仿淘宝产品列表页默认排序搜索框</a></p>
                        </li>
                        <li>
                            <a target="_blank" href="#" title="jquery 输入框提示特效、机票预定智能输入提示、火车预定智能输入提示"><img width="160"
                                                                                                          height="140"
                                                                                                          alt="jquery 输入框提示特效、机票预定智能输入提示、火车预定智能输入提示"
                                                                                                          src="static/img/home/10.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/10.jpg">jquery
                                输入框提示特效、机票预定智能输入提示、火车预定智能输入提示</a></p>
                        </li>
                        <li>
                            <a target="_blank" href="#" title="jquery 导航插件 一个动画导航下拉菜单Apycom软件的Java下拉菜单"><img width="160"
                                                                                                             height="140"
                                                                                                             alt="jquery 导航插件 一个动画导航下拉菜单Apycom软件的Java下拉菜单"
                                                                                                             src="static/img/home/12.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/12.jpg">jquery
                                导航插件 一个动画导航下拉菜单Apycom软件的Java下拉菜单</a></p>
                        </li>
                        <li>
                            <a target="_blank" href="#" title="jquery soChange 切换插件 支持焦点图片切换 选项卡切换 带按钮与分页索引按钮切换"><img
                                    width="160" height="140" alt="jquery soChange 切换插件 支持焦点图片切换 选项卡切换 带按钮与分页索引按钮切换"
                                    src="static/img/home/13.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/13.jpg">jquery
                                soChange 切换插件 支持焦点图片切换 选项卡切换 带按钮与分页索引按钮切换</a></p>
                        </li>
                        <li>
                            <a target="_blank" href="#" title="jquery 分享代码在线制作鼠标一键复制url路径功能与分享信息"><img width="160"
                                                                                                       height="140"
                                                                                                       alt="jquery 分享代码在线制作鼠标一键复制url路径功能与分享信息"
                                                                                                       src="static/img/home/14.jpg"/></a>

                            <p><a target="_blank" href="${pagecontext.request.contextpath}/static/img/home/14.jpg">jquery
                                分享代码在线制作鼠标一键复制url路径功能与分享信息</a></p>
                        </li>
                    </ul>
                    <!--imglist end-->
                </div>
                <a class="abtn aright" href="#right" title="右移"></a>
            </div>
            <!--scrolllist end-->
        </div>

    </div>
    <!-- /End left-main box-->

    <!-- right-slider box-->
    <div id="right-slide-box" class="fr">
        <h2 class="news-title-bar">会员登录注册</h2>

        <div style="padding: 20px 10px 10px 10px">
            <form>
                <div class="form-group">
                    <label class="sr-only" for="username">用户名</label>

                    <div class="input-group">
                        <div class="input-group-addon"><i class="glyphicon glyphicon-user glyphicon"></i></div>
                        <input type="text" class="form-control" id="username" placeholder="用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label class="sr-only" for="password">密码</label>

                    <div class="input-group">
                        <div class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></div>
                        <input type="password" class="form-control" id="password" placeholder="密码">
                    </div>
                </div>
                <div class="form-group text-center">
                    <button type="button" class="btn btn-primary"><i class=""></i> 登 录</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-success">注 册</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-default">忘记密码</button>
                </div>
            </form>
        </div>

        <h2 class="news-title-bar">招聘信息</h2>

        <div id="job-info-box">
            <dl>
                <dt><a href="#">您想拥有一次轻松、幸福地分娩经历吗？</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">食笋谨防胃病</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">健康过大节，解酒有妙方</a></dt>
                <dd>[2015-04-25]</dd>
            </dl>
            <dl>
                <dt><a href="#">年轻心梗不少见，及早预防是关键</a></dt>
                <dd>[2015-04-25]</dd>
            </dl>
            <dl>
                <dt><a href="#">喝牛奶的最佳时间</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">幼儿冬季养生小常识(一)</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">五个妙招少长白头发</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">不可不知的生活小常识</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">五个妙招少长白头发</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">年轻人不要老熬夜 熬夜多吃香蕉快速消疲</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">上班族健身方式有哪些</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">健康搭乘地铁的加减法则</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">国际上颈椎显微微创手术已成颈椎病治疗新趋势</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">三高饮食易诱发听力障碍</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">生活急救的四个误区</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">年轻人经常听音乐 谨防噪声性耳聋</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
        </div>
        <h2 class="news-title-bar" style="clear: both">人才信息</h2>

        <div id="hr-info-box">
            <dl>
                <dt><a href="#">健康搭乘地铁的加减法则</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">国际上颈椎显微微创手术已成颈椎病治疗新趋势</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">三高饮食易诱发听力障碍</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">生活急救的四个误区</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">年轻人经常听音乐 谨防噪声性耳聋</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>
            <dl>
                <dt><a href="#">吃烤土豆有益健康降低血压</a></dt>
                <dd>[2015-04-26]</dd>
            </dl>

        </div>


    </div>
    <!-- /End right-slider box-->
    <div class="other-catelog-box page-width">
        <ul>
            <li><a href="#"><img src="${pagecontext.request.contextpath}/static/img/home/ycyw.jpg" width="112" height="112"> </a></li>
            <li><a href="#"><img src="${pagecontext.request.contextpath}/static/img/home/cyyw.jpg" width="112" height="112"> </a></li>
            <li><a href="#"><img src="${pagecontext.request.contextpath}/static/img/home/zhly.jpg" width="112" height="112"> </a></li>
            <li><a href="#"><img src="${pagecontext.request.contextpath}/static/img/home/jkyd.jpg" width="112" height="112"> </a></li>
            <li><a href="#"><img src="${pagecontext.request.contextpath}/static/img/home/gyhd.jpg" width="112" height="112"> </a></li>
        </ul>
    </div>
</div>
<!-- /End main container box-->

<jsp:include page="footer.jsp"/>
