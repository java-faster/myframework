package com.pt.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * 安全登陆配置类
 * @author Administrator
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		// 启用内存用户存储
		auth.inMemoryAuthentication().withUser("ptghb").password("ptghb@12345").roles("ADMIN");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN").anyRequest().permitAll()
		.and().formLogin().loginPage("/user/login").usernameParameter("username")
		.passwordParameter("password").failureUrl("/user/login?error")
		.loginProcessingUrl("/login")
		.defaultSuccessUrl("/admin/main")
		/** iframe加载问题（x-frame-options）
			当我们的jsp页面中使用了iframe时，可能出现该iframe中的内容无法加载的问题。
			这是因为SpringSecurity提供的HeaderWriterFilter为response添加安全header信息。
			其中就有一项是：X-Frame-Options选项。
			该选项有三个值：
			DENY：浏览器拒绝当前页面加载任何frame页面。
			SAMEORIGHT：允许加载本站点内的页面。
			ALLOW-FROM：允许frame加载任何页面。
			SpringSecurity中默认设置X-Frame-Options的值为DENY
		**/
		.and().headers().frameOptions().disable().and().csrf().disable();
	}
}
