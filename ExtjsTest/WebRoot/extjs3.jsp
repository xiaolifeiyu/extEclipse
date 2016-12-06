<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'extjs3.jsp' starting page</title>
    
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
	<script type="text/javascript">
		Ext.onReady(function(){
			Ext.create('Ext.data.Store', {
			    storeId:'employeeStore',
			    fields:['firstname', 'lastname', 'seniority', 'dep', 'hired'],
			    data:[
			        {firstname:"Michael", lastname:"Scott", seniority:7, dep:"Management", hired:"01/10/2004"},
			        {firstname:"Dwight", lastname:"Schrute", seniority:2, dep:"Sales", hired:"04/01/2004"},
			        {firstname:"Jim", lastname:"Halpert", seniority:3, dep:"Sales", hired:"02/22/2006"},
			        {firstname:"Kevin", lastname:"Malone", seniority:4, dep:"Accounting", hired:"06/10/2007"},
			        {firstname:"Angela", lastname:"Martin", seniority:5, dep:"Accounting", hired:"10/21/2008"}
			    ]
			});
			
			Ext.create('Ext.grid.Panel', {
			    title: 'Column Demo',
			    store: Ext.data.StoreManager.lookup('employeeStore'),
			    
			    columns: [
			        {text: 'First Name',  dataIndex:'firstname'},
			        {text: 'Last Name',  dataIndex:'lastname'},
			        {text: 'Hired Month',  dataIndex:'hired', xtype:'datecolumn', format:'M'},
			        {text: 'Department (Yrs)', xtype:'templatecolumn', tpl:'{dep} ({seniority})'}
			    ],
			    width: 400,
			    forceFit: true,
			    renderTo: Ext.getBody()
			});
		});

	</script>
  </head>
  
  <body>
  <div id="hhhhhh"></div>
  
  </body>
</html>
