六诺后台（TP6 + layui + easywechat）
===============
1、本后台主要采用thinkphp6.0正式版（20191024版）+ layui + easywechat<br>
2、本人技术不精！看到代码请勿喷<br>
3、之前本来下载了其他几个大神的tp6后台。。。发现太多东西不是我所想要的。<br>
4、本系统主要包含，后台权限，简单文章管理，系统设置等都存储在config，没有存储在数据库<br>
5、后续会再更新微信小程序和百度小程序端。<br>

## 安装

1、将文件上传<br>
2、导入sql.sql<br>
3、根目录 public<br>
4、后台地址  域名/admin<br>
5、账号  hqs316  密码  123456（后台管理员ID为 1 的，权限无敌，其他的权限暂时比较麻烦。因为权限规则没添加足够。这个如果要更改。就先修改/app/common/controller/adminBase.php）

## 文档

不会用专业的,操作文档慢慢更新.主要更新我新加的东西<br>
http://www.ennn.cn

## 测试
测试地址  http://admin.ennn.cn/admin.html<br>
测试账号  hqs316<br>
测试密码  123456

## 探讨

1、微信 ：hqs316 (本人可以接小程序，系统开发等各种单子哦）<br>
2、QQ群：10110451<br>
3、官网：http://www.liunuo.net<br>

## 操作记录
1 内容输出纯文本格式:  {:strip_tags(htmlspecialchars_decode($r.content))}<br>
2 判断是否包含字符串 strstr($src, '1234')<br>
3 替换指定字符串  str_replace('1234','5678',$files['url']);<br>
4 缩略图  {$list.logo|thumb=300}<br>