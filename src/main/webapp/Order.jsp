<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Order Summary</h3>
	<table class="table">
  <thead>
    <tr>
      <td scope="col">Processor</td>
      
      <td><%String processor = request.getParameter("processor");
                     if(processor=="")
                    {
	                  out.print("Vui long chon don hang mua");
                    }
                     else{
                    	 out.print(processor);
                    }
       %>
       </td>
    </tr>
  </thead>
  <tbody>
    <tr>
        <td scope="col"> Accessories</td>
      
       <td>
      <%String monitor = request.getParameter("monitor");
                     if(monitor=="")
                    {
	                  out.print("Vui long chon don hang mua");
                    }
                     else{
                    	 out.print(monitor);
                    }
       %>
      </td>
      <td>
      <% String[] items = request.getParameterValues("dlitem");
      if(items!=null){
    	  for(int i=0; i<items.length; i++)
          {
          	out.println(items[i]);
          }	  
      }
      else{
    	  out.print("Vui long chon don hang");
      }
           
       %>
      </td>
    </tr>
  
  </tbody>
</table>
</body>
</html>