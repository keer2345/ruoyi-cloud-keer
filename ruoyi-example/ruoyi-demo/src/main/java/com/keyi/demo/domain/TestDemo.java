package com.keyi.demo.domain;

import com.baomidou.mybatisplus.annotation.OrderBy;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.Version;
import com.keyi.ommon.mybatis.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;

/**
 * @author keer
 * @date 2023-08-16
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@TableName("test_demo")
public class TestDemo extends BaseEntity {

  /** 部门id */
  private Long deptId;

  /** 用户id */
  private Long userId;

  /** 排序号 */
  @OrderBy(asc = false, sort = 1)
  private Integer orderNum;

  /** key键 */
  private String testKey;

  /** 值 */
  private String value;

  /** 版本 */
  @Version private Long version;
}
