package com.my.project.service;

import java.util.List;

import com.my.project.dto.M_Page;
import com.my.project.dto.Member;

public interface OrgService {
	List<Member> selectList(M_Page m_page);
	Member selectOne(String mid);
	
}
