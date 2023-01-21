package com.gdj.music.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.gdj.music.member.model.vo.Member;

public interface MemberDao {

	Member loginEnd(Member m, SqlSessionTemplate session);

	int join(Member m, SqlSessionTemplate session);

	Member findidEnd(Member member, SqlSessionTemplate session);

	Member findpwEnd(Member member, SqlSessionTemplate session);

	int newPw(String newPw, String repwid, SqlSessionTemplate session);


}
