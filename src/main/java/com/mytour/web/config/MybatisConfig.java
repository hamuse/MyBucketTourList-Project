package com.mytour.web.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages= {"com.mytour.web"})
public class MybatisConfig {
	@Autowired
	ApplicationContext applicationContext;
	
	
	@Bean
    public SqlSessionFactoryBean sqlSessionFactory(DataSource dataSource) throws Exception {
      SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
      factoryBean.setDataSource(dataSource);
      factoryBean.setConfigLocation(applicationContext.getResource("classpath:META-INF/mybatis-config.xml"));
      factoryBean.setMapperLocations(applicationContext.getResources("classpath:com/mytour/web/**/*Mapper.xml"));
      return factoryBean;
    }
    
    @Bean
    public SqlSessionTemplate sqlSession(SqlSessionFactory sessionFactory )  {
      return new SqlSessionTemplate(sessionFactory);
    }
}