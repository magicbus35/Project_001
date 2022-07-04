package com.my.project.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.project.dto.M_Page;
import com.my.project.dto.Member;

@Repository
public class OrgRepositoryImpl implements OrgRepository{

	@Autowired SqlSession sqlSession;
	
	@Override
	public Member selectOne(String mid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.my.project.OrgMapper.selectOne", mid);
	}

	@Override
	public List<Member> selectList(M_Page m_page) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("com.my.project.OrgMapper.selectList", m_page);
	}

	
	@Override 
	public int selectTotalCnt(M_Page m_page) {
		return sqlSession.selectOne("com.my.project.OrgMapper.selectTotalCnt", m_page); 
		}


	 
}
