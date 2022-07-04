/**
 * 게시물 상세 조회
 */
 //삭제버튼 클릭시
function removeCheck(path, nnum){
	if(!confirm('삭제 하시겠습니까?')) return ;

	location.href=path+'/board/noticeRemove?nnum='+nnum;
}

