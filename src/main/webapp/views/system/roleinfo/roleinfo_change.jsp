<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>角色变更</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>系统管理</li>
        <li>角色管理</li>
        <li>角色变更</li>
    </ul>
</div>

<form action="roleinfo/update.do" class="form-horizontal" method="post">
	<input type="hidden" name="staffInfo.staffId" value="${staffInfo.staffId }">
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.staffId }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.staffName }</p>
                </div>
            </div>
        </div>

    </div>
    <!-- 开始2 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-5">
                	<p class="form-control-static">${staffInfo.staffAge }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-4">
                	<p class="form-control-static">${staffInfo.staffSex }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束2 -->
    <!-- 开始3 -->
	<div class="row">
 
        <div class="col-sm-5">
            <div class="form-group">
            		<label class="col-sm-3 control-label">角色</label>
                <div class="col-sm-6">
                		<select name="staffInfo.roleId" class="form-control input-sm" >
                			<option>请选择</option>
                            <c:forEach items="${roleList }" var="role">
                                <option value="${role.roleId }" ${role.roleId==staffInfo.roleId?'selected':'' }   >${role.roleName }</option>
                            </c:forEach>
                        </select>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束3 -->
   	<div class="row">
    	<div class="col-sm-5 col-sm-offset-4">
          	<input type="submit" class="btn btn-success" value="角色变更"/>
            <a class="btn btn-warning" href="/roleinfo/staffinforolelist.do">返回上一级</a>
          
        </div>
    </div>
</form>
</body>
</html>