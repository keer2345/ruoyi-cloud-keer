package com.keyi.demo.service;

import com.keyi.demo.domain.vo.TestDemoVo;

/**
 * 测试单表Service接口
 *
 * @author keer
 * @date 2023-08-16
 */
public interface TestDemoService {

  /**
   * 查询单个
   *
   * @param id
   * @return
   */
  TestDemoVo queryById(Long id);
}
