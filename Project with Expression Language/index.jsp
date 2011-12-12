<%-- 
    Document   : index
    Created on : 10 Δεκ 2011, 12:16:58 μμ
    Author     : User
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>

<jsp:useBean id="coffee" class="lianas.Bean" scope="application"/>
<jsp:setProperty name="coffee" property="*"/>
<jsp:useBean id="beer" class="lianas.Bean" scope="application"/>
<jsp:setProperty name="beer" property="*"/>
<jsp:useBean id="whiskey" class="lianas.Bean" scope="application"/>
<jsp:setProperty name="whiskey" property="*"/>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        <div id=shop style= " height:100%; width:100%; margin-left:auto; margin-right:auto; position:absolute; top:0%; right:0%; background:cornflowerblue;">
           
            
            <center><h1> MY CAFE-BAR </h1></center><br/>
            
            <center><h2> Αριστείδης Λιάνας </h2></center><br/>
            
            <center><h2>Products</h2></center><br/>
             
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
            <td> <center>${initParam.contextprice1}</center></td>
            <td> <input type="text" name="quantity1" value="${coffee.quantity1}" </td>
            <td> ${(initParam.contextprice1)*(coffee.quantity1)} </td>
            
                
             
            <tr>
            <td>Beer</td>
            <td> <center>${initParam.contextprice2} </center></td>
            <td> <input type="text" name="quantity2" value="${beer.quantity2}" </td>
            <td>${(initParam.contextprice2)*(beer.quantity2)} </td>
            
            </tr>
            
             
            <tr>
            <td>Whiskey</td>
            <td><center> ${initParam.contextprice3}</center></td>
            <td> <input type="text" name="quantity3" value="${whiskey.quantity3}" </td>
            <td> ${(initParam.contextprice3)*(whiskey.quantity3)} </td>
            
            </tr>
             
            
            
            <tr>
            <td> Total  </td>
            <td> </td>
            <td>  </td>
            <td> ${(initParam.contextprice1)*(coffee.quantity1)+(initParam.contextprice2)*(beer.quantity2)+(initParam.contextprice3)*(whiskey.quantity3)} </td>
           
            </tr>
           
            </table><br/><br/><br/>
                                
         <center><input type="Submit" value="add to cart" onclick="Cookieservlet" /></center>
                                
         
            </form>
             
                                 <br/><br/><br/><br/>
                                 
             <form name="reportform2" action="report" method="get" >
                  &nbsp; <input type="Submit" value="Report" onclick="report" />
                  </form>
                  <form name="srcform2" action="Sourceservlet" method="get"  >
                  &nbsp; <input type="Submit" value="Source" onclick="Sourceservlet" />
                  </form>
            
            </div>
             
             
    </body>
</html>
