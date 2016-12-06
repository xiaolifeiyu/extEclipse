<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>extjs入门案例</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="resources/css/ext-all-gray.css">
<script type="text/javascript" src="JS/ext-all.js"></script>
  </head>
  
  <body>
    <script type="text/javascript">
    Ext.onReady(function(){
    var store=Ext.create('Ext.data.TreeStore',{
    root:{
    expanded:true,
    children:[
    {
    text:"菜单1",
    expanded:true,
    children:[
    {text:"子菜单1",leaf:true}
    ]
    },
    {
    text:"菜单2",leaf:true
    }
    ]
    }
    });
    var viewport=new Ext.Viewport({
    layout:'border',
    renderTo:Ext.getBody(),
    items:[{
    title:'extjs入门案例',
    region:'north',
    height:100,
    minsize:100,
    maxsize:120
    },{
    title:'菜单',
    width:120,
    store:store,
    region:'west',
    rootVisible:false,
    xtype:'treepanel',
    split:true,
    border:true,
    collapsible:true,
    minsize:120,
    maxsize:200,
    listeners:{
    itemclick:function(view,record,item,index,e,eOpts){
    alert(index);
    }
    }
    },Ext.create('Ext.panel.Panel',{
    id:'center',
    title:'table',
    layout:'border',
    region:'center'
    })]
    })
    });
    </script>
    
    <div>asdgauysgdwqwouieui</div>
  </body>
</html>