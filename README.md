# QuickSSO
实现快速SSO部署，项目基于VBScript+ODBC

## 注意事项
本系统默认使用了accdb（Access 2007-2016）的最新格式，启动SSO应用程序时请确保服务器已经正确安装了Access Database Engine。根目录已提供64位安装包，如果使用了64位安装包，请确保IIS中的“启用32位应用程序模式”处于关闭状态。

数据库以及会话超时配置信息见inc目录下的config.inc.asp文件

在Access数据库下如需实现MySQL中的truncate命令重置自动编号，请在您的DBMS中执行以下等效命令。
```sql
delete from member;
alter table member alter column ID counter (1, 1);
```
