package com.demo.controller;

import com.demo.util.Util;
import com.demo.service.ScoreService;
import com.demo.vo.Score;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    /**
     * 增加成绩 
     *
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping("scoreAdd")
    public void add(HttpServletResponse response, HttpServletRequest request) throws IOException {
        Score vo = new Score();
        //取出页面传进来的参数
        String scoreName = Util.decode(request, "scoreName");
        if (scoreName != null && !scoreName.equals("")) {
            vo.setScoreName(scoreName);
        }
        String scoreSex = Util.decode(request, "scoreSex");
        if (scoreSex != null && !scoreSex.equals("")) {
            vo.setScoreSex(scoreSex);
        }
        String scoreClass = Util.decode(request, "scoreClass");
        if (scoreClass != null && !scoreClass.equals("")) {
            vo.setScoreClass(scoreClass);
        }
        String scoreSubject = Util.decode(request, "scoreSubject");
        if (scoreSubject != null && !scoreSubject.equals("")) {
            vo.setScoreSubject(scoreSubject);
        }
        String scoreTeacher = Util.decode(request, "scoreTeacher");
        if (scoreTeacher != null && !scoreTeacher.equals("")) {
            vo.setScoreTeacher(scoreTeacher);
        }
        String scoreScore = Util.decode(request, "scoreScore");
        if (scoreScore != null && !scoreScore.equals("")) {
            vo.setScoreScore(scoreScore);
        }
        String scoreText = Util.decode(request, "scoreText");
        if (scoreText != null && !scoreText.equals("")) {
            vo.setScoreText(scoreText);
        }

        //调用Service层的增加（insert）方法
        scoreService.insert(vo);
        this.redirectList(request, response);
    }

    /**
     * 删除成绩 
     *
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping("scoreDelete")
    public void delete(HttpServletResponse response, HttpServletRequest request) throws IOException {
        Serializable id = Util.decode(request, "id");
        scoreService.delete(Arrays.asList(id));
        this.redirectList(request, response);
    }

    /**
     * 编辑成绩 
     *
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping("scoreEdit")
    public void edit(HttpServletResponse response, HttpServletRequest request) throws IOException {
        Score vo = new Score();
        String id = Util.decode(request, "id");
        if (id != null && !id.equals("")) {
            vo.setId(Long.valueOf(id));
        }
        String scoreName = Util.decode(request, "scoreName");
        if (scoreName != null && !scoreName.equals("")) {
            vo.setScoreName(scoreName);
        }
        String scoreSex = Util.decode(request, "scoreSex");
        if (scoreSex != null && !scoreSex.equals("")) {
            vo.setScoreSex(scoreSex);
        }
        String scoreClass = Util.decode(request, "scoreClass");
        if (scoreClass != null && !scoreClass.equals("")) {
            vo.setScoreClass(scoreClass);
        }
        String scoreSubject = Util.decode(request, "scoreSubject");
        if (scoreSubject != null && !scoreSubject.equals("")) {
            vo.setScoreSubject(scoreSubject);
        }
        String scoreTeacher = Util.decode(request, "scoreTeacher");
        if (scoreTeacher != null && !scoreTeacher.equals("")) {
            vo.setScoreTeacher(scoreTeacher);
        }
        String scoreScore = Util.decode(request, "scoreScore");
        if (scoreScore != null && !scoreScore.equals("")) {
            vo.setScoreScore(scoreScore);
        }
        String scoreText = Util.decode(request, "scoreText");
        if (scoreText != null && !scoreText.equals("")) {
            vo.setScoreText(scoreText);
        }
        scoreService.update(vo);
        this.redirectList(request, response);
    }

    /**
     * 获取成绩 的详细信息（详情页面与编辑页面要显示该成绩 的详情）并跳转回页面
     *
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping({"scoreGet", "scoreEditPre"})
    public void get(HttpServletResponse response, HttpServletRequest request) throws IOException {
        Serializable id = Util.decode(request, "id");//取出主键id
        Score vo = scoreService.get(id);
        request.getSession().setAttribute("vo", vo);
        String to = request.getRequestURI().toLowerCase().contains("get") ? "info" : "edit";//判断是去详情显示页面还是编辑页面
        response.sendRedirect("score_" + to + ".jsp");
    }

    /**
     * 根据条件查询成绩 的列表并跳转回页面
     *
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping("scoreList")
    public void list(HttpServletResponse response, HttpServletRequest request) throws IOException {
        this.redirectList(request, response);
    }

    /**
     * 跳转到列表页面
     *
     * @param request
     * @param response
     */
    private void redirectList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //查询列和关键字
        String searchColumn = Util.decode(request, "searchColumn");
        String keyword = Util.decode(request, "keyword");
        Map<String, Object> params = new HashMap();//用来保存控制层传进来的参数(查询条件)
        params.put("searchColumn", searchColumn);//要查询的列
        params.put("keyword", keyword);//查询的关键字
        Map<String, Object> map = scoreService.list(params);
        request.getSession().setAttribute("list", map.get("list"));

        Integer totalRecord = (Integer) map.get("totalCount");//根据查询条件取出对应的总记录数，用于分页
        String pageNum = Util.decode(request, "pageNum");//封装分页参数
        com.demo.util.PageBean<Object> pb = new com.demo.util.PageBean(Integer.valueOf(pageNum != null ? pageNum : "1"), totalRecord);
        params.put("startIndex", pb.getStartIndex());
        params.put("pageSize", pb.getPageSize());
        List list = (List) scoreService.list(params).get("list");//根据分页参数startIndex、pageSize查询出来的最终结果list
        pb.setServlet("scoreList");
        pb.setSearchColumn(searchColumn);
        pb.setKeyword(keyword);
        pb.setList(list);
        request.getSession().setAttribute("pageBean", pb);
        request.getSession().setAttribute("list", pb.getList());

        response.sendRedirect("score_list.jsp");
    }
}
