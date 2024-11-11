package com.demo.service;

import com.demo.vo.Notice;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

/**
 * Notice模块的Service层（业务层）接口，提供业务方法的抽象
 */
public interface NoticeService {
    /**
     * 增加公告 
     *
     * @param vo
     * @return
     */
    boolean insert(Notice vo);

    /**
     * 删除公告 
     *
     * @param ids
     * @return
     */
    boolean delete(Collection<Serializable> ids);

    /**
     * 修改公告 
     *
     * @param vo
     * @return
     */
    boolean update(Notice vo);

    /**
     * 根据主键Id查询公告 详情
     *
     * @param id
     * @return
     */
    Notice get(Serializable id);

    /**
     * 根据条件查询公告 的列表与数量
     *
     * @param params
     * @return
     */
    Map<String, Object> list(Map<String, Object> params);
}
