package com.studentmanagement.config;

import java.io.IOException;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.studentmanagement"})
public class StudentAppConfig implements WebMvcConfigurer {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	@Bean
	public JdbcTemplate jdbcTemplate() {
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource());
		return jdbcTemplate;
	}
	
	@Bean
	public DataSource dataSource() {
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		dataSource.setUrl("jdbc:mysql://localhost:3306/feesportal?useSSL=false");
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		return dataSource;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		registry
		.addResourceHandler("/UrlToReachResourceFolder/**")
		.addResourceLocations("/resources/");
		
		registry.addResourceHandler("/UrlToReachView/**")
		.addResourceLocations("/WEB-INF/view/");
		WebMvcConfigurer.super.addResourceHandlers(registry);
	}
	
	/*
	 * @Bean(name = "multipartResolver") public MultipartResolver
	 * getMultipartResolver() {
	 * 
	 * CommonsMultipartResolver resover = new CommonsMultipartResolver(); // 1MB
	 * resover.setMaxUploadSize(1 * 1024 * 1024);
	 * 
	 * return resover;
	 * 
	 * }
	 */
	
	/*
	 * @Bean public MultipartResolver multipartResolver() { CommonsMultipartResolver
	 * commonsMultipartResolver = new CommonsMultipartResolver();
	 * commonsMultipartResolver.setMaxUploadSize(100000000);
	 * commonsMultipartResolver.setDefaultEncoding("UTF-8"); return
	 * commonsMultipartResolver; }
	 */
	
	
	/*
	 * @Bean(name = "multipartResolver") public CommonsMultipartResolver
	 * multipartResolver() { CommonsMultipartResolver multipartResolver = new
	 * CommonsMultipartResolver(); multipartResolver.setMaxUploadSize(1000000000);
	 * return multipartResolver; }
	 */
	
	@Bean(name = "multipartResolver")
    public CommonsMultipartResolver getResolver() throws IOException {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        // no limit
        resolver.setMaxUploadSize(-1);
        return resolver;
    }
	
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
	    return new StandardServletMultipartResolver();
	}
	
}
