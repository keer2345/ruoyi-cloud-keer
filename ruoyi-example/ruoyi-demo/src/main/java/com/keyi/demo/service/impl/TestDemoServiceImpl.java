package com.keyi.demo.service.impl;

import com.keyi.demo.dao.TestDemoDao;
import com.keyi.demo.domain.vo.TestDemoVo;
import com.keyi.demo.service.TestDemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author keer
 * @date 2023-08-16
 */
@Service
public class TestDemoServiceImpl implements TestDemoService {

  @Autowired private TestDemoDao testDemoDao;

  @Override
  public TestDemoVo queryById(Long id) {
    return testDemoDao.selectVoById(id);
  }
}
