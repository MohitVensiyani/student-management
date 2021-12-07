package com.studentmanagement.config;

import java.io.IOException;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.GenericWebApplicationContext;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.view.ResourceBundleViewResolver;

public class MainWebAppInitializer implements WebApplicationInitializer {

    private String TMP_FOLDER = "/tmp"; 
    private int MAX_UPLOAD_SIZE = 5 * 1024 * 1024;
    public static final String ENCODING_UTF_8 = "UTF-8";
    public static final long MAX_UPLOAD_FILE_SIZE = 52428807;
    public static final long MAX_UPLOAD_PER_FILE_SIZE = 5242880;
    
    @Override
    public void onStartup(ServletContext sc) throws ServletException {
        
        ServletRegistration.Dynamic appServlet = sc.addServlet("mvc", new DispatcherServlet(
          new GenericWebApplicationContext()));

        appServlet.setLoadOnStartup(1);
        
        MultipartConfigElement multipartConfigElement = new MultipartConfigElement(TMP_FOLDER, 
          MAX_UPLOAD_SIZE, MAX_UPLOAD_SIZE * 2, MAX_UPLOAD_SIZE / 2);
        
        appServlet.setMultipartConfig(multipartConfigElement);
    }
	
	 
	    /* CommonsMultipartResolver class provide function that can parse and get the upload file name, data etc. */
	    @Bean(name = "multipartResolver")
	    public CommonsMultipartResolver getMultipartFormResolver() throws IOException{
	        CommonsMultipartResolver ret = new CommonsMultipartResolver();
	        ret.setMaxUploadSize(MAX_UPLOAD_FILE_SIZE);
	        ret.setMaxUploadSizePerFile(MAX_UPLOAD_PER_FILE_SIZE);
	        ret.setDefaultEncoding(ENCODING_UTF_8);
	        return ret;
	    }
	    /* ResourceBundleViewResolver is used to create the returned view object based on the configuration file src/main/resources/config/views.properties. */
	    @Bean
	    public ResourceBundleViewResolver getBundleViewResolver() {
	        ResourceBundleViewResolver ret = new ResourceBundleViewResolver();
	        ret.setBasename("config.views");
	        ret.setOrder(0);
	        return ret;
	    }
	    /* messageSource method name can not be change to others, else there will has errors when browse web page.
	     * MessageSource can help jsp page display the messages defined in the src/main/resources/config/messages_en_US.properties file easily.
	     * */
	    @Bean(name = "messageSource")
	    public MessageSource getMessageSource() {
	        ReloadableResourceBundleMessageSource ret = new ReloadableResourceBundleMessageSource();
	        ret.setBasename("classpath:config/messages_en_US");
	        ret.setCacheSeconds(1);
	        ret.setUseCodeAsDefaultMessage(true);
	        ret.setDefaultEncoding(ENCODING_UTF_8);
	        return ret;
	    }
	
	}