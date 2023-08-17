package com.keyi.ommon.mybatis.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import java.io.Serial;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import lombok.Data;

/**
 * Entity基类
 *
 * @author keer
 * @date 2023-08-16
 */
@Data
public class BaseEntity implements Serializable {

  @Serial private static final long serialVersionUID = 1L;

  /** 主键 */
  @TableId(type = IdType.ASSIGN_UUID) // 如果使用 IdType.ASSIGN_UUID 策略，则会自动生成不含中划线的 UUID
  private String id;

  /** 搜索值 */
  @JsonIgnore
  @TableField(exist = false)
  private String searchValue;

  /** 创建部门 */
  @TableField(fill = FieldFill.INSERT)
  private Long createDept;

  /** 创建者 */
  @TableField(fill = FieldFill.INSERT)
  private String createBy;

  /** 创建时间 */
  @TableField(fill = FieldFill.INSERT)
  private Date createTime;

  /** 更新者 */
  // @TableField(fill = FieldFill.INSERT_UPDATE)
  @TableField(fill = FieldFill.UPDATE)
  private String updateBy;

  /** 更新时间 */
  // @TableField(fill = FieldFill.INSERT_UPDATE)
  @TableField(fill = FieldFill.UPDATE)
  private Date updateTime;

  /** 删除标识（0：正常；1：已删除） */
  @TableLogic private String delFlag;

  /** 请求参数 */
  @JsonInclude(JsonInclude.Include.NON_EMPTY)
  @TableField(exist = false)
  private Map<String, Object> params = new HashMap<>();
}
