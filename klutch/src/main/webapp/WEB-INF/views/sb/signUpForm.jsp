<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/bootstrap-3.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
// $(function(){
//     $('#id').blur(function(){
// 		$.post('idCheck', {memid: $('#id').val()},
				
// 		function(data){
			
// 		}
// 		);	
//     });
   
// });
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="list">소원보드</a>
        </div>
        <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
                <li><a href="list">목록</a></li>
                <li ><a href="insertForm">글쓰기</a></li>
                <li class="active"><a href="signUpForm">가입하기</a></li>
<!--                 <li class="dropdown"> -->
<!--                   <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a> -->
<!--                   <ul class="dropdown-menu"> -->
<!--                     <li><a href="#">Action</a></li> -->
<!--                     <li><a href="#">Another action</a></li> -->
<!--                     <li><a href="#">Something else here</a></li> -->
<!--                     <li class="divider"></li> -->
<!--                     <li class="dropdown-header">Nav header</li> -->
<!--                     <li><a href="#">Separated link</a></li> -->
<!--                     <li><a href="#">One more separated link</a></li> -->
<!--                   </ul> -->
<!--                 </li> -->
              </ul>
              <div>
              <%if(session.getAttribute("id")==null){ %>
          <form class="navbar-form navbar-right" role="form" action="login" method="post">
            <div class="form-group">
              <input type="text" placeholder="아이디" class="form-control" name="memid">
            </div>
            <div class="form-group">
              <input type="password" placeholder="패스워드" class="form-control" name="mempass">
            </div>
            <button type="submit" class="btn btn-success">로그인</button>
          </form>
          <%}else{ %>

          
          <ul class="nav navbar-nav navbar-right">
          	<li>
          		<form action="search" method="post" class="navbar-form navbar-right">
					<select name="type" class="form-control">
						<option value="subject">제목</option>
						<option value="content">내용</option>
						<option value="userid">글쓴이</option>
					</select>		
					
					<input type="text" name="search"  class="form-control" placeholder="Search..." style="width:50%; margin: 0 auto; display:inline-block;"></input>
					
					<input type="submit" value="검색" class="btn btn-success" style="display:inline-block"></input>
					
				</form>
			</li>
            <li><a>${id} 님, 안녕하세요!</a></li>
            <li><a href="logout">로그아웃</a></li>    
          </ul>        
          <%} %>
            </div>
        </div><!--/.navbar-collapse -->
      </div>   
    </div>	
    
    </br></br></br>
    <div class="container">
    <div class="jumbotron">
    
<form action="signUp" method="post" name="members" role="form" enctype="multipart/form-data">

<div class="form-group">
	<label for=""><span class="glyphicon glyphicon-search"></span>아이디</label>
	<input type="text" name="memid" id="id" class="form-control input-sm"></input>
	<small id="checkId"></small>
</div>

<div class="form-group">
	<label for="">비밀번호</label>
	<input type="password" name="mempass" class="form-control input-sm"></input>
</div>

<div class="form-group">
	<label for="">이름</label>
	<input type="text" name="memname" class="form-control input-sm"></input>
</div>

<div class="form-group">
	<label for="">이메일</label>
	<div class="row">
	
	<div class="col-xs-2">
		<input type="text" name="mememail1" class="form-control input-sm"></input>
		</div>
		<div class="col-xs-2"> 
		<input type="text" name="mememail2" class="form-control input-sm"></input>
	</div>
	</div>
</div>

<div class="form-group">
<label for="">휴대전화</label>
	
	<div class="row">
	
	<div class="col-xs-2">
	<input type="text" name="memphone1" class="form-control input-sm"></input>
	</div>
	 
	<div class="col-xs-2">
	<input type="text" name="memphone2" class="form-control input-sm"></input>
	</div>
	<div class="col-xs-2">
	<input type="text" name="memphone3" class="form-control input-sm"></input>
	</div>
	</div>
	
</div>

<div class="form-group">
		<label for="">성별</label>
		<label class="radio-inline">
			<input type="radio" name="memgender" value="male" class="form-control input-sm"/>남자
		</label>
		<label class="radio-inline">
	    	<input type="radio" name="memgender" value="female" class="form-control input-sm"/>여자
	    </label>
	
</div>

<div class="form-group">
	<label for="">생년월일</label>
	<div class="row">
	
	<div class="col-xs-2">
	<label for="">년</label>
	<input type="text" name="membirthday1" class="form-control input-sm"></input>
	</div>
	<div class="col-xs-2">
	<label for="">월</label>
	<input type="text" name="membirthday2" class="form-control input-sm"></input>
	</div>
	<div class="col-xs-2"> 
	<label for="">일</label>
	<input type="text" name="membirthday3" class="form-control input-sm"></input>
	</div>
	</div>
</div>

<div class="form-group">
	<label for="">주소</label>
	<input type="text" name="memaddress" class="form-control input-sm"></input>
</div>

<div class="form-group">
	<label for="">사진</label>
	<input type="file" name="uploadFile" class="form-control input-sm"></input>
</div>
<div class="form-group">
	<input type="submit" class="btn btn-success"/>
</div>

</form>
</div>
    </div>
<!-- 			footer -->
			 <footer>
        			<p style="text-align: center">&copy; Klutch 2014</p>
      		</footer>
<!-- 			loading js -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
			<script src="/resources/bootstrap-3.1.1/dist/js/bootstrap.min.js"></script>
</body>
</html>