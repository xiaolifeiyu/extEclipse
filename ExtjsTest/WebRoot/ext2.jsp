<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>






  <head>
    <base href="<%=basePath%>">
    
    <title>hellow world</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="resources/css/ext-all-gray.css">
	<script type="text/javascript" src="JS/examples.js"></script>
	<script type="text/javascript" src="JS/ext-all.js"></script>

  </head>
  
  <body>
    <script type="text/javascript">
    	Ext.onReady(function(){
    		
    		var cm = new Ext.grid.ColumnModel([
    			{header:'编号',dataIndex:'id'},
    			{header:'名称',dataIndex:'name'},
    			{header:'描述',dataIndex:'descn'}
    		]);
    		var data = [
    			['1','xiaoli','shuai'],
    			['2','xiaohua','miaotiao'],
    			['3','xiaoj','bai'],
    			['4','xiaob','sao']
    		];
    	
    		var store = new Ext.data.Store({
    			proxy:new Ext.data.MemoryProxy(data),
    			reader:new Ext.data.ArryaReader({},[
    				{name:'id'},
    				{name:'name'},
    				{name:'descn'}
    			])
    	
    		});
    		store.load();
    	
    		var grid = new Ext.grid.GridPanel({
    			renderTo:'grid',
    			store:store,
    			cm:cm
    		});
    	});
    	
    	
    	
    </script>
    
    <div id="grid">
    
    </div>
  </body>
</html>
