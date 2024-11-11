package com.demo.service;

import com.demo.vo.Score;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

/**
 * Score模块的Service层（业务层）接口，提供业务方法的抽象
 */
public interface ScoreService {
    /**
     * 增加成绩 
     *
     * @param vo
     * @return
     */
    boolean insert(Score vo);

    /**
     * 删除成绩 
     *
     * @param ids
     * @return
     */
    boolean delete(Collection<Serializable> ids);

    /**
     * 修改成绩 
     *
     * @param vo
     * @return
     */
    boolean update(Score vo);

    /**
     * 根据主键Id查询成绩 详情
     *
     * @param id
     * @return
     */
    Score get(Serializable id);

    /**
     * 根据条件查询成绩 的列表与数量
     *
     * @param params
     * @return
     */
    Map<String, Object> list(Map<String, Object> params);
}
