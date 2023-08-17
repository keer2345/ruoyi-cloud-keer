package com.keyi.demo.dao;

import com.keyi.demo.domain.TestDemo;
import com.keyi.demo.domain.vo.TestDemoVo;
import com.keyi.demo.mapper.TestDemoMapper;
import com.keyi.ommon.mybatis.core.dao.BaseDao;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author keer
 * @date 2023-08-17
 */
@Repository
public class TestDemoDao extends BaseDao<TestDemoMapper, TestDemo, TestDemoVo> {

  @Autowired private TestDemoMapper testDemoMapper;

  public TestDemoVo selectVoById(Long id) {
    return testDemoMapper.selectVoById(id);
  }
}
