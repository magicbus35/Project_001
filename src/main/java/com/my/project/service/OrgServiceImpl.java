package com.my.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.project.dto.M_Page;
import com.my.project.dto.Member;
import com.my.project.repository.OrgRepository;

@Service
public class OrgServiceImpl implements OrgService{

	@Autowired OrgRepository orgRepository;
	
	@Override
	public List<Member> selectList(M_Page m_page) {
		int curPage = m_page.getCurPage(); //현재페이지
		int perPage = m_page.getPerPage(); //한페이지당 게시물수
		int perBlock = m_page.getPerBlock(); //페이지 블럭의 수
		int startNum = (curPage-1) * perPage;
		int endNum = startNum + perPage -1;
		int totalCnt = orgRepository.selectTotalCnt(m_page);
		int totPage = totalCnt/perPage;
		if (totalCnt%perPage!=0) totPage++;
		int startPage= curPage - ((curPage-1)%perBlock);
		int endPage = startPage + perBlock - 1;
		if (endPage>totPage) endPage=totPage;
		
		m_page.setStartNum(startNum);
		m_page.setEndNum(endNum);
		m_page.setStartPage(startPage);
		m_page.setEndPage(endPage);
		m_page.setTotPage(totPage);
		
		
		
		
		
		
		
		return orgRepository.selectList(m_page);
	}

	@Override
	public Member selectOne(String mid) {
		
		return orgRepository.selectOne(mid);
	}



}
