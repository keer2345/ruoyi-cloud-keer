package com.keyi.auth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.metrics.buffering.BufferingApplicationStartup;

/**
 * 认证授权中心
 *
 * @author keer
 * @date 2023-08-19
 */
@SpringBootApplication
public class RuoYiAuthApplication {
  public static void main(String[] args) {
    SpringApplication application = new SpringApplication(RuoYiAuthApplication.class);
    application.setApplicationStartup(new BufferingApplicationStartup(2048));
    application.run(args);
    System.out.println("(♥◠‿◠)ﾉﾞ  认证授权中心启动成功   ლ(´ڡ`ლ)ﾞ  ");
  }
}
