<%-- 
    Document   : index
    Created on : 8 Δεκ 2011, 12:12:36 πμ
    Author     : User
--%>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

     <% if ( (request.getParameter("quantity1") != null) && (request.getParameter("quantity2") != null) && (request.getParameter("quantity3") != null)) {
           session.setAttribute("quantity1", request.getParameter("quantity1"));
           session.setAttribute("quantity2", request.getParameter("quantity2"));
           session.setAttribute("quantity3", request.getParameter("quantity3"));
                     }%>

<% if ((request.getParameter("quantity1")!= null) && (request.getParameter("quantity2")!= null) && (request.getParameter("quantity3")!= null)){

    String quantity1 = request.getParameter("quantity1");
    String quantity2 = request.getParameter("quantity2");
    String quantity3 = request.getParameter("quantity3");
   
                            if(quantity1==null ) quantity1="";
                            if(quantity2==null ) quantity2="";   
                            if(quantity3==null ) quantity3="";

                            Date nowq1 = new Date();
                            Date nowq2 = new Date();
                            Date nowq3 = new Date();
                            String timestampq1 = nowq1.toString();
                            String timestampq2 = nowq2.toString();
                            String timestampq3 = nowq3.toString();
                            Cookie cookieq1 = new Cookie ("quantity1",quantity1);
                            Cookie cookieq2 = new Cookie ("quantity2",quantity2);
                            Cookie cookieq3 = new Cookie ("quantity3",quantity3);
                            cookieq1.setMaxAge(365 * 24 * 60 * 60);
                            cookieq2.setMaxAge(365 * 24 * 60 * 60);
                            cookieq3.setMaxAge(365 * 24 * 60 * 60);
                            response.addCookie(cookieq1);
                            response.addCookie(cookieq2);
                            response.addCookie(cookieq3);
                                                          }%>                        
                            
                            
                            <%
                            String cookieNameq1 = "quantity1";
                            String cookieNameq2 = "quantity2";
                            String cookieNameq3 = "quantity3";
                            Cookie cookiesq1 [] = request.getCookies ();
                            Cookie cookiesq2 [] = request.getCookies ();
                            Cookie cookiesq3 [] = request.getCookies ();
                            Cookie myCookieq1 = null;
                            Cookie myCookieq2 = null;
                            Cookie myCookieq3 = null;
                            if (cookiesq1 != null)
                            {
                                for (int i = 0; i < cookiesq1.length; i++) 
                                {
                                if (cookiesq1 [i].getName().equals (cookieNameq1))
                                {
                                myCookieq1 = cookiesq1[i];
                                break;
                                }
                                }
                                }
                            if (cookiesq2 != null)
                            {
                                for (int i = 0; i < cookiesq2.length; i++) 
                                {
                                if (cookiesq2 [i].getName().equals (cookieNameq2))
                                {
                                myCookieq2 = cookiesq2[i];
                                break;
                                }
                                }
                                }
                            if (cookiesq3 != null)
                            {
                                for (int i = 0; i < cookiesq3.length; i++) 
                                {
                                if (cookiesq3 [i].getName().equals (cookieNameq3))
                                {
                                myCookieq3 = cookiesq3[i];
                                break;
                                }
                                }
                                }
                                %>
    
      
        <% if ((session.getAttribute("quantity1") ==null) && (session.getAttribute("quantity2") ==null) && (session.getAttribute("quantity3") ==null)){ 
             if ((myCookieq1 != null) && (myCookieq2 != null) && (myCookieq3 != null)){
           session.setAttribute("quantity1",  myCookieq1.getValue());
           session.setAttribute("quantity2",  myCookieq2.getValue());
           session.setAttribute("quantity3",  myCookieq3.getValue());
             }
       }%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Mall</title>
    </head>
     
    
   
    <body>
        <div id=shop style= " height:100%; width:100%; margin-left:auto; margin-right:auto; position:absolute; top:0%; right:0%; background:cornflowerblue;">
           
            
            <center><h1> MY CAFE-BAR </h1></center><br/>
            
            <center><h2> Αριστείδης Λιάνας </h2></center><br/>
            
             <center><h2>Products</h2></center><br/>
                       
                                             
                                            
            </form></center>   
            
            <form name="ShopForm1"  method="post">
             
            <table border="1" align="center">
            
            <tr>
            <th><center>Item</center></th>
            <th><center>Price(€)</center> </th>
            <th><center>Quantity</center></th>
            <th><center>&nbsp;Total&nbsp;</center></th>
            </tr>
            <tr>
                
                    
            <td>Coffee</td>
            <td> <center><%=(String)application.getInitParameter("contextprice1")%></center></td>
            <td> <input type="text" name="quantity1" value="<%= session.getAttribute("quantity1")%>" /> </td>
            <td>   
                <% if (request.getParameter("quantity1") != null) {
                                float quantity1b = Float.valueOf((String) request.getParameter("quantity1"));
                                float cp1 = Float.valueOf((String) application.getInitParameter("contextprice1"));%>
                            <%=quantity1b * cp1%> <%}%> </td>
            
                
             
            <tr>
            <td>Beer</td>
            <td> <center><%=(String)application.getInitParameter("contextprice2")%> </center></td>
            <td> <input type="text" name="quantity2" value="<%= session.getAttribute("quantity2")%>" /> </td>
            <td> 
                <% if (request.getParameter("quantity2") != null) {
                                float quantity2b = Float.valueOf((String) request.getParameter("quantity2"));
                                float cp2 = Float.valueOf((String) application.getInitParameter("contextprice2"));%>
                            <%=quantity2b * cp2%> <%}%> </td>
            
            </tr>
            
             
            <tr>
            <td>Whiskey</td>
            <td><center> <%=(String)application.getInitParameter("contextprice3")%></center></td>
            <td> <input type="text" name="quantity3" value="<%= session.getAttribute("quantity3")%>" /> </td>
            <td> <% if (request.getParameter("quantity3") != null) {
                                float quantity3b = Float.valueOf((String) request.getParameter("quantity3"));
                                float cp3 = Float.valueOf((String) application.getInitParameter("contextprice3"));%>
                            <%=quantity3b * cp3%> <%}%> </td>
            
            </tr>
             
            
            
            <tr>
            <td> Total  </td>
            <td> </td>
            <td>  </td>
            <td>  <% if ((request.getParameter("quantity1")!= null) && ( request.getParameter("quantity2")!= null) && (request.getParameter("quantity3"))!= null) {
                                float quantity1b = Float.valueOf((String) request.getParameter("quantity1"));
                                float cp1 = Float.valueOf((String) application.getInitParameter("contextprice1"));
                                float quantity3b = Float.valueOf((String) request.getParameter("quantity3"));
                                float cp3 = Float.valueOf((String) application.getInitParameter("contextprice3"));
                                float quantity2b = Float.valueOf((String) request.getParameter("quantity2"));
                                float cp2 = Float.valueOf((String) application.getInitParameter("contextprice2"));%>
                                <%=(quantity1b * cp1) +(quantity2b * cp2)+(quantity3b * cp3)%><%}%> </td>
           
            </tr>
           
            </table><br/><br/><br/>
                                
            <center><input type="Submit" value="add to cart" /></center>
               
            </form>
                
            <br/><br/><br/><br/>
            
            <form name="reportform2" action="report2" method="get" >
            &nbsp; <input type="Submit" value="Report" onclick="report2" />
            </form>
            
            <form name="srcform2" action="Source2" method="get"  >
            &nbsp; <input type="Submit" value="Source" onclick="Source2" />
            </form>
            
            </div>
    </body>
</html>
