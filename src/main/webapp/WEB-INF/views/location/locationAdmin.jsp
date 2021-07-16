<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <br>
	<button type="button" id="insertBtn">apiInsert</button>
	<br>
	<br>
	<button type="button" id="updateBtn">apiUpdate</button>
	<br>
	
	<script type="text/javascript">
		$("#insertBtn").click(function getFetch() {
			fetch("http://openapi.seoul.go.kr:8088/4f4975567873657534395075496a44/json/bikeList/1/10/")
				.then(function(response) {
					if (response.status != 200) {
						alert("네트워크상 오류가 발생했습니다. 다시 시도하세요");
						return;
					} else {
						return response.json();
					}
				}).then(
					function(data) {
						var list = data["rentBikeStatus"]["row"];
						console.log(list[0]);
						$.ajax({
							type : "post", //요청방식
							url : "setMarkInfo",
							dataType : "json", //요청 데이터 형식
							contentType : "application/json",//보내는 데이터에 대한 타입
							data : JSON.stringify(list),
							success : function(kickInfo) {//성공시 돌려받을 콜백
								alert("성공적으로 데이터가 추가 되었습니다.");
							},
							error : function(status, error) {//실패시 결과를 돌려받을 콜백
								console.log(status,
								error);
							}
						})
					})
			})
</script>