<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bean.GetInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ page import="bean.ConnectionProvider.*" %>   
<%@ page import="bean.GetInfo.*" %>  
<%@ include file="header.jsp" %>
 <%
                Name = "";
                String Email = "";
                String Mobile = "";
                String Age = "";
                String Add = "";
                String Father = "";
                id = (String) session.getAttribute("id");
                ResultSet rs = GetInfo.get(id);

                while (rs.next()) {
                    Name = rs.getString("NAME");
                    Email = rs.getString("EMAIL");
                    Mobile = rs.getString("Mobile");
                    Age = rs.getString("Age");
                    Add = rs.getString("Address");
                    Father = rs.getString("Father");
                }


            %>


<div class="panel panel-default" style="width:55% ;float:left;height:100%">
    <!-- Default panel contents -->

    <div class="panel-heading">Personal details</div>
    <div class="panel-body">
        <form role="form" action="Personal" method="post"  class="form-horizontal" >
           
            
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-6">
                        <input type="text" class=" form-control" id="inputEmail3" name="Name" value=<%=Name%> readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" id="inputPassword3" name="Email" value=<%=Email%> readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Mobile</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="inputPassword3" name="Mobile" value=<%=Mobile%> readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Father Name</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="inputPassword3" name="Father" value=<%=Father%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Age</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="inputPassword3" name="Age" value=<%=Age%>>
                    </div>
                </div>
               <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Address</label>
                    <div class="col-sm-6">
                        <textarea class="form-control" rows="3" name="Add"><%=Add%></textarea>
                    </div>
                </div>
                
                </div>
       
            <div class="modal-footer">
                  <div class="col-sm-8">
                <button type="Submit" class="btn btn-default" value="Submit" >Save</button>
                <button type="button"  class="btn btn-primary" onclick="window.location.href = 'Acadeamic.jsp';">Next</button>
          
                  </div>
            </div>

        </form>
    </div>

    <!-- Table -->

</div>

</body> 
</html>
