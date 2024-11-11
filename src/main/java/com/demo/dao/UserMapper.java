package com.demo.dao;

import com.demo.vo.User;
import org.apache.ibatis.annotations.Mapper;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * User模块的DAO层（数据层）接口，提供增删改查等数据库操作的方法抽象
 */
@Mapper
public interface UserMapper {
    /**
     * 增加用户 表记录
     *
     * @param vo
     * @return
     */
    int doCreate(User vo);

    /**
     * 根据主键id的集合，批量删除对应的用户 表记录
     *
     * @param ids
     * @return
     */
    int doRemoveBatch(Collection<Serializable> ids);

    /**
     * 更新用户 表记录
     *
     * @param vo
     * @return
     */
    int doUpdate(User vo);

    /**
     * 根据主键id获取用户 表记录的详情
     *
     * @param id
     * @return
     */
    User findById(Serializable id);

    /**
     * 根据条件查询用户 表集合
     *
     * @param params
     * @return
     */
    List<User> findAllSplit(Map<String, Object> params);

    /**
     * 根据条件查询用户 数量
     *
     * @param params
     * @return
     */
    Integer getAllCount(Map<String, Object> params);
}
