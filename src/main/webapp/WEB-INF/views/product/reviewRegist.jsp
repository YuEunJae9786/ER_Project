<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/hyungki.css">
</head>

<!-- 후기 작성 및 등록하기 -->
<section class="sect-main">
	<div class="container" style="margin-bottom: 75px;">
		<div class="row">
			<div class="content-wrap">
				<div class="titlebox">
					<p>후기 작성하기</p>
				</div>
				<form action="registForm" method="post">
					<table class="table">
						<tbody class="t-control">
							<tr>
								<td class="t-title">작성자</td>
								<td><input class="form-control input-sm" name="writer"
									value="${sessionScope.userVO.userId }" readonly required></td>
							</tr>
							<tr>
								<td class="t-title">제목</td>
								<td><input class="form-control input-sm" name="title"
									required></td>
							</tr>
							<tr>
								<td class="t-title">별점주기</td>
								<td><select class="sel-star form-control" style="width: 200px;">
										<option value="fiveGrade">★★★★★(5점)</option>
										<option value="fourGrade">★★★★(4점)</option>
										<option value="threeGrade">★★★(3점)</option>
										<option value="twoGrade">★★(2점)</option>
										<option value="oneGrade">★(1점)</option>
										<option value="zeroGrade">0점</option>
								</select></td>
							</tr>
							<tr>
								<td class="t-title">내용</td>
								<td><textarea class="form-control" rows="7" name="content"
										required></textarea></td>
							</tr>
						</tbody>
					</table>

					<div class="titlefoot">
						<button type="submit" class="btn btn-default reviewRegistBtn">등록</button>
						<button type="button" class="btn btn-default reviewListBtn"
							onclick="test();">목록</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</section>

<script>
         function test() {
            var selStar = document.querySelector(".sel-star");
            console.log(selStar.value);
         }
     </script>