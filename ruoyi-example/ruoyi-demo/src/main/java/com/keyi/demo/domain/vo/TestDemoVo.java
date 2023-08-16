package com.keyi.demo.domain.vo;

import lombok.Data;

import java.io.Serial;
import java.util.Date;

/**
 * 测试单表视图对象 test_demo
 *
 * @author keer
 * @date 2023-08-16
 */
// todo
@Data
public class TestDemoVo {

  @Serial private static final long serialVersionUID = 1L;

  /** 主键 */
  private Long id;

  /** 部门id */
  private Long deptId;

  /** 用户id */
  private Long userId;

  /** 排序号 */
  private Integer orderNum;

  /** key键 */
  private String testKey;

  /** 值 */
  private String value;

  /** 创建时间 */
  private Date createTime;

  /** 创建人 */
  private String createBy;

  /** 更新时间 */
  private Date updateTime;

  /** 更新人 */
  private String updateBy;
}
