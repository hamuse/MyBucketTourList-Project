package com.mytour.web.config;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

//@EnableAspectJAutoProxy
//@EnableTransactionManagement
@Configuration
@ComponentScan(basePackages= {"com.mytour.web"})
@Import({
	 ServletContext.class
})
public class RootContext {
	@Bean
	public DataSource dataSource() {
		  DriverManagerDataSource dataSource = new DriverManagerDataSource();

		  	dataSource.setDriverClassName("org.mariadb.jdbc.Driver");
		    dataSource.setUrl("jdbc:mariadb://:3306/hamusetour");
		    dataSource.setUsername("hamusetour");
		    dataSource.setPassword("hamusetour");

		    return dataSource;
	}
	@Bean
	public DataSourceTransactionManager txManager() {
		return new DataSourceTransactionManager(dataSource());
	}
	
	
	
}
