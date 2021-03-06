<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
<style>
.popupLayer {
	position: relative;
	display: none;
	background-color: #ffffff;
	border: solid 2px #d0d0d0;
	width: 340px;
	height: 80%;
	z-index: 1;
	padding: 10px;
	height: 700px;
	margin-top: 10px;
}
.popupLayer div {
	position: relative;
	top: 5px;
	right: 5px;
}
#selfimg {
	width: 60px;
	height: 60px;
	margin: 20px;
	background: #ababab;
	float: left;
	display: inline-block;
}
#msgname {
	font-weight: 700px;
	font-size: 14px;
	float: left;
	padding-top: 60px;
}
#myself {
	border-bottom: 1px solid #d0d0d0;
	width: 100%;
	margin: 0 auto;
	height: 120px;
	display: block;
}
#count_friend_div {
	width: 80%;
	float: right;
	display: block;
	margin-bottom: 10px;
}
#count_friend_div span {
	float: right;
}
#count_friend {
	font-weight: 600;
	font-size: 18px;
	color: #ababab;
	padding: 0;
	display: inline-block;
	float: left;
	margin-bottom: 10px;
}
#friend {
	border-bottom: 1px solid #d0d0d0;
	width: 100%;
	height: 80px;
	float: left;
}
#friend_img {
	width: 50px;
	height: 50px;
	margin: 10px 10px 10px 20px;
	background: #d0d0d0;
	float: left;
	display: inline-block;
}
#msg_serch {
	width: 100%;
	border-top: 1px solid #d0d0d0;
	margin: 0 auto;
	padding: 5px;
}
#msg_friend_name {
	font-weight: 700px;
	font-size: 14px;
	float: left;
	padding-top: 40px;
}
#msg_parent {
	height: 80%;
	overflow: auto;
}
#friend:last-child {
	border: none;
}
@media ( min-width : 1200px) {
#navlinone1{
display: none;
}
}
</style>

</head>

<div id="left_navi" style="padding: 0%;" class="sidebar-sticky ">

	<div id="usericon">
		<div id="person_img_div" class="rounded-circle"></div>



		<span style="font-size: 16px; color: #fff;">user </span>

		<div id="left_nav_msg_div">
			<a href="#" class="imgSelect"
				onclick="SirenFunction('SirenDiv'); return false;"
				class="blind_view"> <i id="left_nav_msg" class="fas fa-comment"></i>
				<span id="left_nav_msg_count"><b>2</b></span></a>
			<!--  ????????? ?????? ?????? -->
		</div>




		<div class="popupLayer">

			<div style="height: 40px;">
				<span id="count_friend">??????&nbsp;&nbsp;20</span> <span
					onClick="closeLayer(this)"
					style="cursor: pointer; font-size: 1.5em; float: right;" title="??????">X</span>

			</div>

			<div id="msg_serch">
				<input style="width: 100%;" type="text" placeholder="???????????? ??????">
			</div>
			<div id="msg_parent">
				<div id="myself">
					<p style="margin: 0; padding-left: 10px">??? ?????????</p>
					<div id="selfimg" class="rounded-circle"></div>
					<span id="msgname">user</span>
				</div>


				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>

				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>

				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>

				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>

				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>

				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>

				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<span id="msg_friend_name">user</span>
				</div>
			</div>
		</div>
		<!-- //??? ?????????  -->

		<p>
			<br />
		</p>
	</div>


	<button type="button" class="btn" data-toggle="modal" data-target="#myModal"
            		style="width: 100%; border: none; margin-top: 10px; color: darknavy; font-size: 14px;">
			    ???????????? ?????? ??????
			</button>


	<div id="logoutdiv">
		<button id="note_loginbtn" type="button" class="btn-sm">????????????</button>

	</div>
	<div id="noticenav">

		<ul id="navul">
		<a href="${pageContext.request.contextPath}/note/newNote.do">
			<li id="newnote" class="navlinone">&nbsp;&nbsp;<i
				class="fas fa-plus-circle "
				style="font-size: 20px; color: #fff; margin-right: 10px;"> </i>?????????
			</li>
		</a>
			<!-- - ??????????????? ?????? ?????? ???????????? -->
			<li class="nav-item dropdown"><a id="drop_1"
				style="color: #fff; float: left;" class="nav-link dropdown-toggle"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
				aria-expanded="false"><i id="navli_icon" class="fas fa-cog"></i>??????</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#"><i id="navli_icon"
						class="fas fa-caret-up">
						</i>????????????</a> 
						<a class="dropdown-item" href="#"><i
						id="navli_icon" class="fas fa-cog"></i>
						?????????</a> <a
						class="dropdown-item" href="#">
						<i id="navli_icon"
						class=" fas fa-plus-circle"></i>?????????</a>
						</div></li>
		</ul>
		
		</div>
		
	<div id="noticenav">

		<ul id="navul">
		
			<!-- - ??????????????? ?????? ?????? ???????????? -->
			<li class="nav-item dropdown"><a id="drop_1"
				style="color: #fff; float: left;" class="nav-link dropdown-toggle"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
				aria-expanded="false">??????</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#"><i id="navli_icon"
						class="fas fa-cog">
						</i>??????</a> 
						<a class="dropdown-item" href="#"><i
						id="navli_icon" class="fas fa-caret-up "></i>
						???????????????</a> <a
						class="dropdown-item" href="#">
						<i id="navli_icon"
						class="far fa-question-circle"></i>????????????</a>
						</div></li>
		</ul>
		
		</div>
		
	<div>


<ul style="padding:0;">
		<a href="${pageContext.request.contextPath}/note/note.do?mno=${member.mNo}&trashcan=N">
		<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
			class="fas fa-sticky-note"></i>?????? ??????
		</li>
		</a>
		<a href="${pageContext.request.contextPath}/notebook/notebook.do?mno=${member.mNo}">
		<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
			class="far fa-sticky-note"></i>?????????
		</li>
		</a>
		<a href="${pageContext.request.contextPath}/note/nShare.do">
		<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
			class="fas fa-folder"></i>?????? ?????????
		</li>
		</a>
		<a href="${pageContext.request.contextPath}/note/tag.do">
		<li id="navli" class="navlinone">&nbsp;&nbsp;<i id="navli_icon"
			class="fas fa-tags"></i>??????
		</li>
		</a>
		<a href="${pageContext.request.contextPath}/note/note.do?mno=${member.mNo}&trashcan=Y">
		<li id="navli" class="navlinone">&nbsp;&nbsp;<i id="navli_icon"
			class="fas fa-trash-alt"></i>?????????
		</li>
		</a>



		<!-- --???????????? ?????? -->
			<li class="sidebar-item showw"><a href="#pages"
				data-toggle="collapse" class="sidebar-link collapsed">
					&nbsp;&nbsp; <i class="fas fa-th-large"
					style="font-size: 20px; color: #fff; margin-right: 10px; padding-top: 10px;"></i><span
					style="color: #fff;" class="align-middle">????????????</span>
			    </a>
			    
				<ul id="pages" class="sidebar-dropdown list-unstyled collapse ">
					<li style="padding: 10px; height: 40px;" class="sidebar-link"><a
						class="sidebar-link" href="#"
						style="text-decoration: none; color: #fff; display: block;" data-toggle="modal" data-target="#exampleModal">????????????
							?????????</a></li>
							
					     <c:forEach items="${spaceList}" var="sList">
              				<li style="padding: 10px; height: 40px;" class="sidebar-link">
              				<a class="sidebar-link" style="text-decoration: none; color: #fff; display: block; cursor:pointer;" onclick="goToSpace(${sList.spaceNo});">${sList.spaceName}</a>
							</li>
             			 </c:forEach>	
				</ul>
			</li>
	<!-------------------------------- ???????????? ???????????? ?????? ------------------------------>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content" style="width:650px; height:400px;">
		      <div class="modal-header" style="border:none;">
		        <h5 class="modal-title" id="exampleModalLabel">???????????? ??????</h5>
		        <button type="button" id="xBtn" class="close" data-dismiss="modal" aria-label="Close">
		           <span aria-hidden="true" >&times;</span>
		        </button>
		      </div>
		      
		      <form action="${pageContext.request.contextPath}/space/createSpace.do" method="post">
		        <div class="modal-body">
		      	
		       	  <div class="form-group">
			    	<input type="text" class="form-control" id="spaceName" name="spaceName" placeholder="???????????? ????????? ???????????????">
			  	  </div>
			  	  
			  	   <div class="form-group">
			    	<input type="text" class="form-control" id="spaceExplain" name="spaceExplain" placeholder="??????????????? ?????? ????????? ???????????????" style="height:60px; margin:0px;">
			  	   </div>
			  	   
			  	   <div class="form-group form-check" >
					  <input type="checkbox" class="form-check-input" id="postSpaceDir" name="postSpaceDir">
				 	  <label class="form-check-label" for="dirPostCheck">???????????? ??????????????? ??????</label>
				   </div>
 				   
 				   <label>?????? ?????? ?????? </label>
 				   <select class="form-control form-control-sm" id="rightSet" name="rightSet">
 				   <option value="none">??????</option>
				   <option value="A1">?????? ???????????? ?????? ????????? ?????????????????????.</option>
				   <option value="A2">?????? ???????????? ?????? ????????? ????????? ????????? ??? ????????????.</option>
				   <option value="A3">?????? ???????????? ?????? ????????? ????????? ????????? ??? ????????????.</option>
				   <option value="A4">?????? ???????????? ?????? ?????? ??? ?????? ????????? ??????????????? ????????? ????????? ??? ????????????.</option>
				   </select>

		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="cancelCreateSpace();">??????</button>
		        <button type="submit" class="btn btn-primary" onclick="createSpace();">?????????</button>
		      </div>
		    </form>
		      
		    </div>
		  </div>
		</div>
	
		
		<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
			class="fas fa-caret-up"></i>???????????????
		</li>
		<!---?????? ??????-->
		<!--  <a href="community.html" target="_blank" style="list-style:none; text-decoration: none; color: #fff;"> -->
		<li id="navli" onclick="goToComunity();">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-comment"></i>????????????
		</li>


		<li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-cog"></i>??????
		</li>
		<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
			class="far fa-question-circle"></i>????????????
		</li>
		</ul>
	</div>
	</div>
	<!-- ------ ?????? div ????????? -->
	<script>
function closeLayer( obj ) {
	$(obj).parent().parent().hide();
}
$(function(){
	/* ?????? ????????? ????????? ????????? ?????? ????????? ???????????? ????????????. */
	$('.imgSelect').click(function(e)
	{
		var sWidth = window.innerWidth;
		var sHeight = window.innerHeight;
		var oWidth = $('.popupLayer').width();
		var oHeight = $('.popupLayer').height();
		// ???????????? ????????? ????????? ????????????.
		var divLeft = e.clientX + 10;
		var divTop = e.clientY + 5;
		// ???????????? ?????? ????????? ???????????? ????????? ????????? ????????????.
		if( divLeft + oWidth > sWidth ) divLeft -= oWidth;
		if( divTop + oHeight > sHeight ) divTop -= oHeight;
		// ????????? ????????? ??????????????? ???????????????(0,0) ????????? ??????????????? ???????????????(0,0)??? ????????????.
		if( divLeft < 0 ) divLeft = 0;
		if( divTop < 0 ) divTop = 0;
		$('.popupLayer').css({
			"top": divTop,
			"left": divLeft,
			"z-index": 1,
			"position": "absolute"
		}).show();
	});
});

function goToComunity(){
			window.open("${pageContext.request.contextPath}/board/board.do");
		}
		
function goToSpace(spaceNo){
	location.href="${pageContext.request.contextPath}/space/selectOneSpace.do?spaceNo=" + spaceNo;
}
</script>
