<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div>
		왜또안나오고 지뤌이여
		<button type="button" id="insertBtn">apiInsert</button>
		<button type="button" id="updateBtn">apiUpdate</button>
    </div>

	<script type="text/javascript">
		console.log("나와야지?");
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
								kickInfos = kickInfo;
								console.log(kickInfos[0].location_x);
							},
							error : function(status, error) {//실패시 결과를 돌려받을 콜백
								console.log(status,
								error);
							}
						})
					})
			})
</script>