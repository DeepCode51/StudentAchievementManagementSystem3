<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="js/myCss.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/myJs.js"></script>
    <script type="text/javascript">
        let alert_msg = '${alert_msg}';
        if (alert_msg != null && alert_msg.trim() != '') {
            window.alert(alert_msg);
        }
    </script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form action="authLogin" method="post" onsubmit="return check()">
                <input type="hidden" name="forwardPage" id="forwardPage" value="menu.jsp"/>
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top" style="font-size: 35px;font-weight: 700;color:#000000;text-shadow: 2px 3px #FFFFFF;">学生成绩管理系统</div>
                    <a style="font-size: 24px;color: #269abc;text-decoration: none;padding-left: 140px;">登录</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="register.jsp" style="font-size: 24px;color:black ;text-decoration: none;">注册</a>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="username" id="username" placeholder="登录账号" />
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="password" id="password" placeholder="登录密码" />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
						
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="validationCode" id="validationCode" placeholder="请输入验证码" style="width: 180px;float: left;"/>
                                <img id="img_validation_code" src="authValidationCode" onclick="refresh()" style="height: 44px;width: 150px;float: right;border-radius: 4px;"/>
                            </div>
                        </div>
						
                    </div>
                    <br><br>
                    <div style="padding:30px;">
                        <input type="submit" class="button button-block bg-main text-big input-big" value="登录">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    //提交之前进行检查，如果return false，则不允许提交
    function check() {
        //根据ID获取值
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        if (username == "") {
            alert("用户名不能为空");
            return false;
        }
        if (password == "") {
            alert("密码不能为空");
            return false;
        }
        return true;
    }
    function refresh() {
        var img = document.getElementById("img_validation_code")
        img.src = "authValidationCode?r=" + Math.random();
    }
</script>
</html>
