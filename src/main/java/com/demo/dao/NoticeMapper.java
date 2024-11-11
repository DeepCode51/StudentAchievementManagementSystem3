package com.demo.dao;

import com.demo.vo.Notice;
import org.apache.ibatis.annotations.Mapper;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Notice模块的DAO层（数据层）接口，提供增删改查等数据库操作的方法抽象
 */
@Mapper
public interface NoticeMapper {
    /**
     * 增加公告 表记录
     *
     * @param vo
     * @return
     */
    int doCreate(Notice vo);

    /**
     * 根据主键id的集合，批量删除对应的公告 表记录
     *
     * @param ids
     * @return
     */
    int doRemoveBatch(Collection<Serializable> ids);

    /**
     * 更新公告 表记录
     *
     * @param vo
     * @return
     */
    int doUpdate(Notice vo);

    /**
     * 根据主键id获取公告 表记录的详情
     *
     * @param id
     * @return
     */
    Notice findById(Serializable id);

    /**
     * 根据条件查询公告 表集合
     *
     * @param params
     * @return
     */
    List<Notice> findAllSplit(Map<String, Object> params);

    /**
     * 根据条件查询公告 数量
     *
     * @param params
     * @return
     */
    Integer getAllCount(Map<String, Object> params);
}
