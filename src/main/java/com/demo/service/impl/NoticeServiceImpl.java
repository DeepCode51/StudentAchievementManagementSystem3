package com.demo.service.impl;

import com.demo.dao.NoticeMapper;
import com.demo.service.NoticeService;
import com.demo.vo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * Notice模块的Service层（业务层）的具体实现类，对NoticeService接口中定义的抽象方法作出具体的功能实现
 */
@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;


    //@Override
    public boolean insert(Notice vo) {
        return this.noticeMapper.doCreate(vo) == 1;
    }

    //@Override
    public boolean delete(Collection<Serializable> ids) {
        return ids.isEmpty() ? false : this.noticeMapper.doRemoveBatch(ids) == ids.size();
    }

    //@Override
    public boolean update(Notice vo) {
        return this.noticeMapper.doUpdate(vo) == 1;
    }

    //@Override
    public Notice get(Serializable id) {
        return this.noticeMapper.findById(id);
    }

    //@Override
    public Map<String, Object> list(Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap();
        resultMap.put("totalCount", this.noticeMapper.getAllCount(params));
        resultMap.put("list", this.noticeMapper.findAllSplit(params));
        return resultMap;
    }
}
