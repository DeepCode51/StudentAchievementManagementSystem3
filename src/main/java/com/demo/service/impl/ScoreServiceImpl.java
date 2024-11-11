package com.demo.service.impl;

import com.demo.dao.ScoreMapper;
import com.demo.service.ScoreService;
import com.demo.vo.Score;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * Score模块的Service层（业务层）的具体实现类，对ScoreService接口中定义的抽象方法作出具体的功能实现
 */
@Service
public class ScoreServiceImpl implements ScoreService {

    @Autowired
    private ScoreMapper scoreMapper;


    //@Override
    public boolean insert(Score vo) {
        return this.scoreMapper.doCreate(vo) == 1;
    }

    //@Override
    public boolean delete(Collection<Serializable> ids) {
        return ids.isEmpty() ? false : this.scoreMapper.doRemoveBatch(ids) == ids.size();
    }

    //@Override
    public boolean update(Score vo) {
        return this.scoreMapper.doUpdate(vo) == 1;
    }

    //@Override
    public Score get(Serializable id) {
        return this.scoreMapper.findById(id);
    }

    //@Override
    public Map<String, Object> list(Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap();
        resultMap.put("totalCount", this.scoreMapper.getAllCount(params));
        resultMap.put("list", this.scoreMapper.findAllSplit(params));
        return resultMap;
    }
}
