package com.keyi.demo.mapper;

import com.keyi.demo.domain.TestDemo;
import com.keyi.demo.domain.vo.TestDemoVo;
import com.keyi.ommon.mybatis.core.mapper.BaseMapperPlus;
import org.apache.ibatis.annotations.Mapper;

/**
 * TestDemo Mapper Interface
 *
 * @author keer
 * @date 2023-08-17
 */
@Mapper
public interface TestDemoMapper extends BaseMapperPlus<TestDemo, TestDemoVo> {}
