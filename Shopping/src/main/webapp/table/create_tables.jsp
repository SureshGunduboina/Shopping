<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
try{
   Connection con = ConnectionProvider.getCon();
   Statement st = con.createStatement();
   String q1 ="create table shoppingusers(name varchar(100),email varchar(100)primary key,mobileNumber varchar(100),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100));";
	String q2="create table product(id int, name varchar(500), category varchar(200), price int, active varchar(100))";
	//String q3="create table cart(email varchar(100),product_id varchar(100), quantity varchar(100),price varchar(100),total varchar(100), address varchar(500),city varchar(100),state varchar(100),country varchar(100), mobileNumber varchar(100), orderDate varchar(100),deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100),status varchar(10));";
  String q3="create table cart(email varchar(100),product_id int, quantity int,price int,total int, address varchar(500),city varchar(100),state varchar(100),country varchar(100), mobileNumber varchar(100), orderDate varchar(100),deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100),status varchar(10));";
  String q4="create table message(id SERIAL PRIMARY KEY,email varchar(100),subject varchar(200),body varchar(1000))";
  System.out.println(q1);
   System.out.println(q2);
   System.out.println(q3);
   System.out.println(q4);
//	st.execute(q1);
//	st.execute(q2);
  //  st.execute(q3);
  st.execute(q4);
	System.out.println("Table Created");
	con.close();
   
}catch(Exception e){
	System.out.println(e);
}
 %>
    
