package com.gdj.music.admin.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gdj.music.admin.model.dao.AdminPerforDao;
import com.gdj.music.perfor.model.vo.Performance;
import com.gdj.music.perfor.model.vo.Performance2;
import com.gdj.music.perfor.model.vo.PerformancePhoto;
import com.gdj.music.perfor.model.vo.Schedule;

@Service
public class AdminPerforServiceImpl implements AdminPerforService{
	
	private SqlSessionTemplate session;
	private AdminPerforDao dao;
	
	@Autowired
	public AdminPerforServiceImpl(SqlSessionTemplate session, AdminPerforDao dao) {
		super();
		this.session = session;
		this.dao = dao;
	}
	
	@Override
	@Transactional
	public int insertPerformance(Performance2 p,List<Schedule> sc,List<PerformancePhoto> files) {
		int result=dao.insertPerformance(session,p);
		if(result>0) {
			int result2=0;
			for(Schedule s:sc) {
				result2+=dao.insertSchedule(session,s);
				System.out.println("insert 스케줄:"+s);	
			}
			if(result2==sc.size()) {
				int result3=0;
				for(PerformancePhoto pp:files) {
					result3+=dao.insertPhoto(session,pp);
					System.out.println("insert 사진:"+pp);
				}
				if(result3!=files.size()) throw new RuntimeException("공연등록실패");
			}else {
				throw new RuntimeException("공연등록실패");
			}
		}
		return result;
	}
	
	@Override
	public List<PerformancePhoto> selectPerforList(){
		return dao.selectPerforList(session);
	}
	
	@Override
	public Performance2 selectPerformanceView(int mCode) {
		return dao.selectPerformanceView(session, mCode);
	}
	
	@Override
	public List<Map<String, Schedule>> selectSchedule(int mCode) {
		return dao.selectSchedule(session, mCode);
	}
	
	@Override
	public List<PerformancePhoto> selectPhoto(int mCode) {
		return dao.selectPhoto(session, mCode);
	}
	

	
	
}
