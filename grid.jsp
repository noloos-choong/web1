<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>
th{
	background: purple;
}
</style>
<script type="text/javascript">
var setTitle="";
var num =2;
var confirmNum;
$(document).ready(function(){
	// �� �߰� ���
    $("#asd").click(function(){
    	$("#addtable").append("<tr><th>����</th><td><input type='text'></input></td><th>�ٰŸ�</th><td><button name="+"'"+num+"'"+" id='search' data-toggle='modal' data-target='#myModal'>�˻�</button></td></tr>");
    	num++;
    });
	
	// �ش� �˻� ��ư Ŭ���ϸ� 
    $(document).on("click","#search", function() {
    	confirmNum=$(this).attr("name");
	});
	
	
	$(document).on("click","#sel", function() {
		alert($(this).parents("td").parents("tr").attr("id"));
		alert($(this).parents("td").parents("tr").children("td").text());
		setTitle = $(this).parents("td").parents("tr").children("td").text();
		$("[name="+confirmNum+"]").parents("td").parents("tr").children("td").children("input").val(setTitle);
		/* alert($(this).parents("td").parents("tr").children("td:eq(1)").html()); */
	});
	
	 $("#con").click(function(){
	    	alert(confirmNum+""+setTitle);
	    });
    
});

</script>
<body>
<button id="asd"> ��ư</button>
<button id="con"> Ȯ��</button>
<table id="addtable">
		<tr>
			<th>����</th>
			<td name="input" ><input name="sss" type="text" value="sss"></input></td>
			<th>�ٰŸ�</th>
			<td><button name="1" id="search" data-toggle="modal" data-target="#myModal">�˻�</button></td>
		</tr>
</table>


  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <table>
          <%for(int i=0; i<5; i++) { %>
          	<tr id="a">
          		<th>�̸�</th>
          		<td id="a">��ȯ<%=i%></td>
          		<th>����</th>
          		<td>12</td>
          		<td><button id="sel"> ���� </button></td>
          	</tr>
          	<%} %>
          	
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
 

</body>
</html>