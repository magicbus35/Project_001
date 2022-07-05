/**
 * 게시물 상세 조회
 */

//삭제버튼 클릭시
function removeCheck(path, bnum){
	if(!confirm('삭제 하시겠습니까?')) return ;

	location.href=path+'/board/boardRemove?bnum='+bnum;
}

//로딩이 완료된후
$(()=>{
	//컨택스트 패스
	const path = $('#contextpath').val();
	console.log(path);
	
	$('#boardModify').css('display', 'none');
	$('#boardRemove').css('display', 'none');
	$('#reReplyModify').css('display', 'none');
	$('#reReplyRemove').css('display', 'none');
	
	if ($('#curMid').text() == $('#boardMid').text()){
		$('#boardModify').css('display', '');
		$('#boardRemove').css('display', '');
	}
	
	//파일다운로드 버튼을 클릭시
	$('.iconDownload').click((e)=>{
		const filename = e.target.innerText;
		console.log(filename);
		location.href = path+`/board/filedownload?filename=${filename}`;
	});
	
	$('#btnRecommend').click(function(){
		if(confirm("해당 글을 추천하시겠습니까?")){
			document.form1.action="recommend";
			document.form1.submit();
			
			alert("해당 글을 추천하였습니다")
		}
	});

}); 
 
