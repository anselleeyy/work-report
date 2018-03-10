package com.ansel.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ansel.dao.BuMenDao;
import com.ansel.dao.HuiBaoDao;
import com.ansel.dao.NextTaskDao;
import com.ansel.dao.NowTaskDao;
import com.ansel.dao.PiWenDao;
import com.ansel.dao.UserDao;
import com.ansel.dao.WenTiDao;

public class ConnectionUtil {
	
	public UserDao getUserDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		UserDao userDao = session.getMapper(UserDao.class);
		return userDao;

	}
	
	public BuMenDao getBuMenDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		BuMenDao buMenDao = session.getMapper(BuMenDao.class);
		return buMenDao;

	}
	
	public HuiBaoDao getHuiBaoDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		HuiBaoDao huiBaoDao = session.getMapper(HuiBaoDao.class);
		return huiBaoDao;

	}
	
	public NowTaskDao getNowTaskDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		NowTaskDao nowTaskDao = session.getMapper(NowTaskDao.class);
		return nowTaskDao;

	}
	
	public NextTaskDao getNextTaskDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		NextTaskDao nextTaskDao = session.getMapper(NextTaskDao.class);
		return nextTaskDao;

	}
	
	public WenTiDao getWenTiTaskDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		WenTiDao wenTiDao = session.getMapper(WenTiDao.class);
		return wenTiDao;

	}
	
	public PiWenDao getPiWenDao() throws IOException {

		String resource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(reader);
		SqlSession session = factory.openSession(true);
		PiWenDao piWenDao = session.getMapper(PiWenDao.class);
		return piWenDao;

	}

}
