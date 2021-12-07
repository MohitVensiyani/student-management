<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>

<%--   <c:import url="./view/UI/include/headerFinal.jsp"></c:import>
 --%>  	<jsp:include page="UI/include/headerFinal.jsp" />
<!DOCTYPE html>


<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
   <link href="vendor/datatables/dataTables.bootstrap4.min.js" rel="stylesheet">
     <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    
    

    </head>
    <body>
    

<%--  <jsp:include page=" /student-management/src/main/webapp/view/UI/include/headerFinal.jsp" />
 --%>
 <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 text-gray-800 pb-2">User</h1>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4 pb-5">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">User Details</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div class="text-right pb-3">
<input type="button" class="DTTT_button" onclick="tableToExcel('dataTable', 'W3C Example Table')" value="Export to Excel"> 
 </div>
                                <table class="table table-bordered  table-striped border rounded" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">User Name </th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Status</th>
            <th scope="col">Date</th>
            <th>Action</th>
            <th>Action</th>
          </tr>
        </thead>
         <%-- <tbody>
           <%
           int i=0;
        List<User> list=UserDAO.getAllUser();
        for(User r:list)
        {
        %>
           <tr id="ss<%=i%>">
            <td><%=r.getId() %></td> 
            <td><%=r.getUsername() %></td>
            <td><%=r.getEmail() %></td>
            <td><%=r.getPassword() %></td>
            <td><%=r.getStatus() %></td>
            <td><%=r.getCreatedAt() %></td>
            <td><button class="btn btn-primary btn_edit text-center" data-toggle="modal" data-target="#test_guard_details" id="<%=i++%>" >Edit</button></td>
             <td><button value="<%=r.getId() %>" class="deleteUnit btn btn-danger btn_delete" >Delete</button></td>
                     
        
            </tr>
		  <% } %>
         
        </tbody> --%>
        </table>   
             
      </div>
    </div>
  </div>       
</div> 

<!-- Model -->

 <div class="modal fade edit_recruit_modal" id="test_guard_details" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Edit User Details</h4>
                <button type="button" class="close sub_unit_details_add_close text-right" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            
            </div>

                  <form id="test_details_add" class="form-horizontal form-label-left">
            <div class="modal-body">
                <div id="successMessage2" class="col-md-12 alert alert-success successMessage2" style="display:none">
                    <span>User Details Updated successfully</span>
                </div>   
                
                  <div class="form-group ml-5 mr-3">
                      <label class="control-label col-md-9 col-sm-9 col-xs-12" style="color: black;">Id</label>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                            <input type="text" id="id" name="id" readonly="readonly" class="form-control col-md-11 col-xs-12" >
                      </div>
                   </div>
                        
                    <div class="form-group ml-5 mr-3">
                       <label class="control-label col-md-9 col-sm-9 col-xs-12" style="color: black;">User Name</label>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                          <input type="text" id="username" name="username" class="form-control col-md-11 col-xs-12" >
                       
                      </div>
                   </div>
                   
                   
                    <div class="form-group ml-5 mr-3">
                       <label class="control-label col-md-9 col-sm-9 col-xs-12" style="color: black;">Email</label>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                          <input type="email" id="email1" name="email1" required="required" class="form-control col-md-11 col-xs-12" >
                        </div>
                   </div>
                   
                    <div class="form-group ml-5 mr-3">
                       <label class="control-label col-md-9 col-sm-9 col-xs-12" style="color: black;">Password</label>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                          <input type="text" id="password" name="password" required="required" class="form-control col-md-11 col-xs-12" >
                         </div>
                   </div>
                   
                    <div class="form-group ml-5 mr-3">
                       <label class="control-label col-md-9 col-sm-9 col-xs-12" style="color: black;">Status</label>
                      <div class="col-md-11 col-sm-11 col-xs-12">
                       
                          <select class="form-control" id="status" name="status">
					        <option selected="">Select</option>
					        <option value="Active">Active</option>
						       <option value="Deleted">Deleted</option>
						       <option value="Inactive">Inactive</option>
					      </select> 
					         </div>
                         </div> 
                         
                    <!--      
                     <div class="form-group hide">
                      <label class="control-label col-md-9 col-sm-9 col-xs-12">Date<span class="required">*</span></label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="createdAt" readonly="readonly" name="createdAt" class="form-control col-md-7 col-xs-12" >
                          </div>
                   </div> -->
                   
                   
                   
                              
                  <div class="modal-footer">
              <button type="button" class="btn btn-default sub_unit_details_add_close" data-dismiss="modal" style="margin-bottom: 0;">Close</button>
              <button type="submit" class="btn btn-success ad_dtl_sbmt">Update</button>

            </div>
            </div>
            </form>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
       
     <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
  
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    
        
        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

               /*  $('#sidebarCollapse').on('click', function () {
                    $('#sidebar, #content').toggleClass('active');
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                }); */
            });
         
            $(".btn_edit").click(function(){
                var tr_id = this.id;
                var tr = document.getElementById("ss"+tr_id);
                var td = tr.getElementsByTagName("td");
                
                   $("#id").val(td[0].innerHTML);
                   $("#username").val(td[1].innerHTML);
                   $("#email1").val(td[2].innerHTML);
                   $("#password").val(td[3].innerHTML);
                   $("#status").val(td[4].innerHTML);
              //     $("#createdAt").val(td[5].innerHTML);
        });
                      
            $("document").ready(function(){
                
         	   var validationArrayRewardval;
         	   
         	   $('form#test_details_add').submit(function () {
         	         var error_text = 0;
         	                validationArrayRewardval=[];
         	                $(".err-msg").hide();
         	        var id = $(this).find("#id").val();  
         	       
         	     
          	   var username = $(this).find("#username").val();
     //     	 alert("Employee_name-----"+ Employee_name);
              var email1 = $(this).find("#email1").val();
       //   	 alert("National_insuranc_no-----"+ National_insuranc_no);
        	   var password = $(this).find("#password").val();
         // 	 alert("Enroll_no-----"+ Enroll_no);
              var status = $(this).find("#status").val();
          	// alert("Priximity_card_no-----"+ Priximity_card_no);
      	      var createdAt = $(this).find("#createdAt").val();
         // 	 alert("Email_address-----"+ Email_address);
          	        
         	     if(error_text == 1){
         	                    $("#"+validationArrayRewardval[0]).focus();
         	                    return false;
         	                }else{
         	                    $.ajax({
         	                    type: "POST",
         	                    url: "UpdateUser",
         	                    data: { 
         	                    	id:id,
         	                    	username:username,
        		                  	email1:email1,
        		                  	password:password,
        		                  	status:status,
        		                  	createdAt:createdAt
         	                            }, 
         	                             
         	                            success: function(data){
         	                        $('#successMessage2').html('Updated Succesfully').delay(5000).fadeOut();
         	                        $('#successMessage2').show();
         	                        location.reload();
         	                        }
         	                    });
         	                    return false;
         	                }   	                
         	   }); 
            });    
            
            $(document).ready(function(){
  			  $("#myInput").on("keyup", function() {
  			    var value = $(this).val().toLowerCase();
  			    $("#myTable tr").filter(function() {
  			      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
  			    });
  			  });
  			});

  			
           	/* $(document).ready(function() {
           	    $('#example').DataTable( {
           	        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]]
           	    } );
           	} ); */
           	
           	var tableToExcel = (function() {
           	  var uri = 'data:application/vnd.ms-excel;base64,'
           	    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
           	    , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
           	    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
           	  return function(table, name) {
           	    if (!table.nodeType) table = document.getElementById(table)
           	    var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
           	    window.location.href = uri + base64(format(template, ctx))
           	  }
           	})()
           	
           
         	   </script>
        <script>
                        $(".deleteUnit").click(function(){
                    //    	alert("bob");
                 var result = confirm("Want to delete?");
                var id = $(this).val();
            //   alert("delete_id>>" +id);
                if (result) {
                    $.ajax({
                    type: "POST",
                    url: "DeleteUser",
                    data: {
                    	id:id
                          },
                        success: function(data){
                        //$('#successMessage2').html('Unit Details Updated Succesfully').delay(5000).fadeOut();
                        $('#successMassage2').show();
                        alert("Deleted Successfully");
                        location.reload();
                        }
                    });
                    return false;
                }
                
            }           ); 
            
            
</script>  	   
         	  
         	   
      
    </body>
</html>

<c:import url="view/UI/include/footerFinal.jsp"></c:import>
