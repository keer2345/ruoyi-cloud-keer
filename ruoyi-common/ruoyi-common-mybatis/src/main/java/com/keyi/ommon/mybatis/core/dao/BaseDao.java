package com.keyi.ommon.mybatis.core.dao;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.keyi.ommon.mybatis.core.mapper.BaseMapperPlus;

/**
 * 公共DAO
 *
 * <p>参考
 *
 * <p>https://gitee.com/dcy421/dcy-fast/blob/master/dcy-common/src/main/java/com/dcy/common/base/dao/DcyBaseDao.java
 *
 * @author keer
 * @date 2023-08-17
 */
public class BaseDao<M extends BaseMapperPlus<T, V>, T, V> extends ServiceImpl<M, T> {

  // todo

}
