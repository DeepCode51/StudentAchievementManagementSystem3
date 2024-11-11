package com.demo.dao;

import com.demo.vo.Score;
import org.apache.ibatis.annotations.Mapper;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Score模块的DAO层（数据层）接口，提供增删改查等数据库操作的方法抽象
 */
@Mapper
public interface ScoreMapper {
    /**
     * 增加成绩 表记录
     *
     * @param vo
     * @return
     */
    int doCreate(Score vo);

    /**
     * 根据主键id的集合，批量删除对应的成绩 表记录
     *
     * @param ids
     * @return
     */
    int doRemoveBatch(Collection<Serializable> ids);

    /**
     * 更新成绩 表记录
     *
     * @param vo
     * @return
     */
    int doUpdate(Score vo);

    /**
     * 根据主键id获取成绩 表记录的详情
     *
     * @param id
     * @return
     */
    Score findById(Serializable id);

    /**
     * 根据条件查询成绩 表集合
     *
     * @param params
     * @return
     */
    List<Score> findAllSplit(Map<String, Object> params);

    /**
     * 根据条件查询成绩 数量
     *
     * @param params
     * @return
     */
    Integer getAllCount(Map<String, Object> params);
}
