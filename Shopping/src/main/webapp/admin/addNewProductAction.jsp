<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
String sid=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String sprice=request.getParameter("price");
String active=request.getParameter("active");
int id = Integer.parseInt(sid);
int price=Integer.parseInt(sprice);
try{
	Connection con= ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
	ps.setInt(1, id);
	ps.setString(2, name);
	ps.setString(3, category);
	ps.setInt(4, price);
	ps.setString(5, active);
	ps.execute();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>