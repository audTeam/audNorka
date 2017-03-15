package com.aud.jedisTest;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.aud.component.JedisClient;
import com.aud.mapper.UserMapper;
import com.aud.service.IUserService;
import com.aud.service.impl.UserServiceImpl;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class JedisTest {
	@Test
	public void singleJedisSingle() throws Exception{
		Jedis jedis = new Jedis("127.0.0.1", 6379);
		jedis.set("name", "zhangsan");
		System.out.println("----jedis.get('name'): "+jedis.get("name"));
		jedis.close();
	}

	@Test
	public void testJedisPool() throws Exception{
		JedisPool jedisPool = new JedisPool("127.0.0.1", 6379);
		Jedis jedis = jedisPool.getResource();
		jedis.set("name", "wangwu");
		System.out.println("----jedis.get('name'): "+jedis.get("name"));
		jedis.close();
		jedisPool.close();
	}

	@Test
	public void testJedisSpring() throws Exception{
		ApplicationContext ac =new ClassPathXmlApplicationContext("classpath:spring-*.xml");
		JedisClient jedisClient = ac.getBean(JedisClient.class);

		jedisClient.set("userName", "zhangsan");
		System.out.println("--------jedisClient: "+jedisClient.get("userName"));
	}

	@Test
	public void testUserMapper() throws Exception{
		ApplicationContext ac =new ClassPathXmlApplicationContext(new String[]{"classpath*:*.xml", 
				"classpath*.properties"});
		//IUserService jedisClient = (IUserService)ac.getBean("userService");

		System.out.println("----------jedisClient.all();: ");
		//System.out.println("--------jedisClient: "+jedisClient.get("userName"));
	}
	
}
