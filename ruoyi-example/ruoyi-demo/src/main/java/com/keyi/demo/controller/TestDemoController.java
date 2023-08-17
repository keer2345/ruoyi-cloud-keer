package com.keyi.demo.controller;

import com.keyi.common.core.domain.R;
import com.keyi.demo.domain.vo.TestDemoVo;
import com.keyi.demo.service.TestDemoService;
import jakarta.validation.constraints.NotNull;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author keer
 * @date 2023-08-16
 */
@Slf4j
@Validated
@RestController
@RequestMapping("/demo")
public class TestDemoController {

  @Autowired private TestDemoService testDemoService;

  @GetMapping("{id}")
  public R<TestDemoVo> getInfo(@NotNull(message = "主键不能为空") @PathVariable("id") Long id) {
    TestDemoVo vo = testDemoService.queryById(id);
    log.info("aaa {}", id);
    return R.ok(vo);
  }
}
