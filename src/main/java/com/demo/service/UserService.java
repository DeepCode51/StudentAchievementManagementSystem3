package com.demo.service;

import com.demo.vo.User;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

/**
 * User模块的Service层（业务层）接口，提供业务方法的抽象
 */
public interface UserService {
    /**
     * 增加用户 
     *
     * @param vo
     * @return
     */
    boolean insert(User vo);

    /**
     * 删除用户 
     *
     * @param ids
     * @return
     */
    boolean delete(Collection<Serializable> ids);

    /**
     * 修改用户 
     *
     * @param vo
     * @return
     */
    boolean update(User vo);

    /**
     * 根据主键Id查询用户 详情
     *
     * @param id
     * @return
     */
    User get(Serializable id);

    /**
     * 根据条件查询用户 的列表与数量
     *
     * @param params
     * @return
     */
    Map<String, Object> list(Map<String, Object> params);
}
