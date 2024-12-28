# 项目配置和部署说明

## 项目简介

本项目是一个在线书店系统，包含用户登录、书籍搜索、购物车管理、订单管理等功能。管理员可以管理书籍信息以及通过订单管理页面管理订单信息。

## 环境要求

- Java 8 或更高版本
- Spring Boot 2.5.4 或更高版本
- Maven 3.6.3 或更高版本
- MySQL 5.7 或更高版本

## 配置步骤

### 1. 克隆项目

git



复制工程包中的OnlineBookstore文件夹到你的项目保存路径

### 2. 配置数据库

在MySQL中创建一个数据库：

sql

```sql
CREATE DATABASE online_bookstore;
```

### 3. 配置应用程序属性

在`src/main/resources/application.properties`文件中配置数据库连接信息：

properties

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/onlinebookstore
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

需要将 yourpassword 替换为您 MySQL 数据库 root 用户的密码

### 4. 构建项目

使用Maven构建项目：

bash

```bash
mvn clean install
```

## 部署步骤

### 1. 运行项目

使用Maven运行项目：

bash

```bash
mvn spring-boot:run
```

或者使用IntelliJ IDEA 直接运行

### 2. 访问应用程序

在浏览器中访问以下URL：

- 用户页面：http://localhost:8080/
- 管理员页面：http://localhost:8080/admin
- 书籍搜索页面：http://localhost:8080/search
- 订单管理页面：http://localhost:8080/ord

## 主要功能

### 用户登录

用户可以通过登录页面进行登录，登录成功后可以搜索书籍、管理购物车、提交订单、修改个人信息和查看自己的订单。管理员可以通过登录页面进行登录，登录成功后可以管理书籍信息、管理订单。

### 书籍搜索

用户可以通过书籍搜索页面根据书名搜索书籍，并将书籍添加到购物车。

### 购物车管理

用户可以查看购物车中的书籍，并进行结算。

### 订单管理

管理员可以通过订单管理页面查看和管理所有订单，包括更新收货地址和删除订单。

## 代码结构

### 文件树

```tex
卷 文件 的文件夹 PATH 列表
\源码工程包\ONLINEBOOKSTORE
│  .gitignore
│  OnlineBookstore.iml
│  pom.xml
│
├─.idea
│  │  .gitignore
│  │  compiler.xml
│  │  dataSources.local.xml
│  │  dataSources.xml
│  │  encodings.xml
│  │  jarRepositories.xml
│  │  misc.xml
│  │  modules.xml
│  │  workspace.xml
│  │
│  ├─dataSources
│  └─inspectionProfiles
│          Project_Default.xml
│
└─src
    └─main
        ├─java
        │  └─com
        │      └─example
        │          └─onlinebookstore
        │              │  OnlineBookstoreApplication.java
        │              │
        │              ├─config
        │              │      SecurityConfig.java
        │              │
        │              ├─controller
        │              │      AdminController.java
        │              │      AdminPageController.java
        │              │      BookController.java
        │              │      HomeController.java
        │              │      LoginController.java
        │              │      OrderController.java
        │              │      OrderRestController.java
        │              │      SearchController.java
        │              │      UserCenterController.java
        │              │      UserController.java
        │              │      UserOrderController.java
        │              │
        │              ├─model
        │              │      Admin.java
        │              │      Book.java
        │              │      Order.java
        │              │      OrderItem.java
        │              │      PaymentStatusUpdateRequest.java
        │              │      User.java
        │              │
        │              ├─repository
        │              │      AdminRepository.java
        │              │      BookRepository.java
        │              │      OrderRepository.java
        │              │      UserRepository.java
        │              │
        │              └─service
        │                      AdminService.java
        │                      BookService.java
        │                      OrderService.java
        │                      UserOrderService.java
        │                      UserService.java
        │
        └─resources
            │  application.properties
            │
            ├─static
            │  │  cart.webp
            │  │  default-avatar.png
            │  │  zfb.jpg
            │  │
            │  ├─css
            │  │      admin.css
            │  │      order-confirmation.css
            │  │      search.css
            │  │      styles.css
            │  │      styles1.css
            │  │      user.css
            │  │
            │  ├─images
            │  │      2012万国学校考前冲刺.jpg
            │  │      2012万国学校考前冲刺（密卷）.jpg
            │  │      2012万国学校考前冲刺－卷四突破100分.jpg
            │  │      5年级 英语N版 小学上海暑假作业.jpg
            │  │      ASP.NET动态网站开发.jpg
            │  │      Copy for Crime.jpg
            │  │      p1438419268.webp
            │  │      s27251177.jpg
            │  │      s2768378.jpg
            │  │      s3078482.jpg
            │  │      s33956462.jpg
            │  │      s34327482.jpg
            │  │      The Late Miss Trimming.jpg
            │  │      Upstairs and Downstairs.jpg
            │  │      ユダヤ人の歴史.jpg
            │  │      不像样的魔法讲师与教典1.jpg
            │  │      不同寻常的一天.jpg
            │  │      中国农村土地制度研究.jpg
            │  │      中国武学之道.jpg
            │  │      交通事故车辆安全技术鉴定教程.jpg
            │  │      仓储与配送管理项目式教程.jpg
            │  │      企业管理实务.jpg
            │  │      会计电算化实务.jpg
            │  │      传播心理学教程.jpg
            │  │      健康体魄.jpg
            │  │      像你一样的朋友.jpg
            │  │      全球化与后现代思潮研究.jpg
            │  │      公司法学.jpg
            │  │      刀剑神域18.jpg
            │  │      刑事诉讼法.jpg
            │  │      北大讲座（第二十四辑）.jpg
            │  │      卢作孚文集.jpg
            │  │      叶芝抒情诗选.jpg
            │  │      商务谈判.jpg
            │  │      商法学.jpg
            │  │      嘛叫天津人.jpg
            │  │      国学研究（第29卷）.jpg
            │  │      图像分析.jpg
            │  │      土木工程结构试验.jpg
            │  │      外国法制史.jpg
            │  │      多元文化与国家建设.jpg
            │  │      奇思妙想的小熊帮波.jpg
            │  │      女性形体与健美训练图解.jpg
            │  │      寻找一种好制度.jpg
            │  │      小学生字典.jpg
            │  │      小学生成语词典.jpg
            │  │      居住区景观设计.jpg
            │  │      市场经济理论与市场经济体制改革新论.jpg
            │  │      市政工程测量.jpg
            │  │      师友笔下的冯其庸.jpg
            │  │      当我们走在异国他乡.jpg
            │  │      感性胎教童话.jpg
            │  │      我不相信有龙.jpg
            │  │      操盘大赢家.jpg
            │  │      文学理论前沿（第9辑）.jpg
            │  │      新形势下结核病控制工作新思路.jpg
            │  │      新编建筑工程造价速查快算手册.jpg
            │  │      新编英语专业口语教程.jpg
            │  │      无职转生1.jpg
            │  │      普通书法教育.jpg
            │  │      机械设计基础实验及机构创新设计.jpg
            │  │      格萨尔唐卡研究.jpg
            │  │      水分析化学.jpg
            │  │      海事法.jpg
            │  │      父与子经典全集.jpg
            │  │      父子同乐-父与子.jpg
            │  │      父子情深-父与子.jpg
            │  │      牵牛花看太阳.jpg
            │  │      狂袭系列10.jpg
            │  │      狂袭系列11.jpg
            │  │      狂袭系列12.jpg
            │  │      知识经济与法律制度创新.jpg
            │  │      短线必杀技.jpg
            │  │      神经科学对现代社会的影响.jpg
            │  │      税务代理理论与实务.jpg
            │  │      红楼梦.jpg
            │  │      经济法学.jpg
            │  │      网络数据库技术PHP+MySQL.jpg
            │  │      肌肉健美训练图解.jpg
            │  │      艺术家个性心理和发展.jpg
            │  │      英语专业复合型人才培养课程教学研究.jpg
            │  │      茫.jpg
            │  │      营销策划.jpg
            │  │      西尔斯育儿经.jpg
            │  │      词韵人生.jpg
            │  │      跨过青春这道坎.jpg
            │  │      追求长期回报.jpg
            │  │      里外更新.jpg
            │  │      集团转移定价、定价参与和组织后果.jpg
            │  │      雨の日はソファで散歩.jpg
            │  │
            │  └─js
            └─templates
                    1.css
                    1.html
                    admin-login.html
                    admin.html
                    login.html
                    ord.html
                    order-confirmation.html
                    order-details.html
                    orders.html
                    search.html
                    user.html
                    userCenter.html
```

### 控制器

- **AdminController.java**：处理管理员登录请求。
- **OrderController.java**：处理订单管理请求。
- **AdminPageController.java**：处理管理员页面请求。
- **BookController.java**：处理书籍相关请求。
- **HomeController.java**：处理主页请求。
- **LoginController.java**：处理用户登录请求。
- **OrderRestController.java**：处理订单相关的REST API请求。
- **SearchController.java**：处理书籍搜索请求。
- **UserCenterController.java**：处理用户中心请求。
- **UserController.java**：处理用户相关请求。
- **UserOrderController.java**：处理用户订单请求。

### 服务

- **AdminService.java**：提供管理员相关服务。
- **BookService.java**：提供书籍相关服务。
- **OrderService.java**：提供订单管理服务。
- **UserOrderService.java**：提供用户订单相关服务。
- **UserService.java**：提供用户相关服务。

### 存储库

- **AdminRepository.java**：提供管理员数据访问接口。
- **BookRepository.java**：提供书籍数据访问接口。
- **OrderRepository.java**：提供订单数据访问接口。
- **UserRepository.java**：提供用户数据访问接口。

### 实体

- **Admin.java**：管理员实体类。
- **Book.java**：书籍实体类。
- **Order.java**：订单实体类。
- **OrderItem.java**：订单项实体类。
- **PaymentStatusUpdateRequest.java**：支付状态更新请求实体类。
- **User.java**：用户实体类。

### 页面

- **admin-login.html**：管理员登录页面。
- **admin.html**：管理员页面。
- **login.html**：用户登录页面。
- **ord.html**：订单管理页面。
- **order-confirmation.html**：订单确认页面。
- **order-details.html**：订单详情页面。
- **orders.html**：订单列表页面。
- **search.html**：书籍搜索页面。
- **user.html**：用户页面。
- **userCenter.html**：用户中心页面。

### 样式

- **admin.css**：用于美化订单管理页面的CSS文件。
- **order-confirmation.css**：用于美化订单确认页面的CSS文件。
- **search.css**：用于美化书籍搜索页面的CSS文件。
- **styles.css**：通用样式文件。
- **styles1.css**：备用样式文件。
- **user.css**：用于美化用户页面的CSS文件。

# 版权声明

版权所有 © 2024 [ ]. 保留所有权利。

本项目及其所有内容，包括但不限于代码、文档、图像和样式表，均为版权所有。未经明确书面许可，不得复制、分发或以任何方式使用本项目的任何部分。

如需获得许可或有任何疑问，请联系：[ +86 15573179058 ]
