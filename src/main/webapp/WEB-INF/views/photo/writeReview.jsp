<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <section class="sect-main">
        <div class="container" style="margin-bottom: 75px;">
            <div class="row">
                <div class="write-wrap">
                        <div class="titlebox">
                            <p>Review</p>
                        </div>
                        
                        <form action="freeUpdate" method="post">
                            <div>
                                <label>날짜</label>
                                <input class="form-control" name='date' value="${board.date}" >
                            </div>   
                            
                            <div class="form-group">
                                <label>작성자(회원ID)</label>
                                <input class="form-control" name='writer' value="${boardVO.writer }" >
                            </div>    

                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='title' value="${boardVO.title }">
                            </div>

                            <div class="form-group">
                                <label>별점</label>
                                <select class="sel-star form-control" name="star">
                                    <option value="fiveGrade">★★★★★(5점)</option>
                                    <option value="fourGrade">★★★★(4점)</option>
                                    <option value="threeGrade">★★★(3점)</option>
                                    <option value="twoGrade">★★(2점)</option>
                                    <option value="oneGrade">★(1점)</option>
                                    <option value="zeroGrade">0점</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name="content">

                                </textarea>
                            </div>
                                
                            <div class="form group">
                                <label>첨부파일1</label>
                                    <input class="attach_file[]" name="file" type="file">
                            </div>

                            <div class="form-group">
                                <label>첨부파일2</label>
                                <input class="attach_file[]" name="file" type="file">
                            </div>
                                        
                
                            <div class="form-group">
                                <label>비밀번호</label>
                                <td>
                                    <input id="password" name="password" fw-filter="isFill" fw-label="비밀번호" fw-msg value type="password">
                                    <span class>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
                                </td>
                            </div>                                        
                                    
                                                             
                            <div class="form-group">
                                <label>
                                    개인정보 수집 및
                                    이용 동의
                                </label>
                                        
                                    <td>
                                        <textarea class="form-control" rows="10" name="content">
                                            1. 개인정보의 수집·이용 목적
                                            서비스 제공 및 계약의 이행, 구매 및 대금결제,
                                            물품배송 또는 청구지 발송, 회원관리 등을 위한 목적
                                                
                                            2. 수집하려는 개인정보의 항목
                                            이름, 주소, 연락처, 이메일 등
                                                
                                            3. 개인정보의 보유 및 이용 기간
                                            회사는 개인정보 수집 및 이용목적이
                                            달성된 후에는 예외없이 해당정보를S 파기합니다.
                                        </textarea> 
                                        <br>
                                            개인정보 수집 및 이용에 동의하십니까?
                                            <input id="privacy_agreement_radio0" name="privacy_agreement_radio" fw-filter="isFill" fw-label="개인정보보호정책" fw-msg="" value="T" type="radio" >
                                            <label for="privacy_agreement_radio0">동의함</label>
                                            
                                            <input id="privacy_agreement_radio1" name="privacy_agreement_radio" fw-filter="isFill" fw-label="개인정보보호정책" fw-msg="" value="F" type="radio">
                                            <label for="privacy_agreement_radio1">동의안함</label>
                                        </td>
                                    </div>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                        
                        <div class="titlefoot">
                            <button type="button" class="btn btn-default reviewListBtn" onclick="location.href='photoList'">목록</button>
                            <button type="submit" class="btn btn-default reviewRegistBtn" >등록</button>
                            <button type="submit" class="btn btn-default reviewCancelBtn">취소</button>
                            </div>
                        </span>
                    </div>
                </div>
                    </form>
                </div>
            </div>
 