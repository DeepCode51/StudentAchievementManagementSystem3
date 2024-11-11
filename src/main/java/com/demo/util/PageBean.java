package com.demo.util;

import java.util.List;

/**
 * 列表页面的显示对象
 *
 * @param <T>
 */
public class PageBean<T> {
    private List<T> list;//根据条件查询出来的list集合
    private int totalRecord;//根据条件查询出来的数量

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    //--分页逻辑
    //已知数据
    private int pageNum;//当前页,从请求那边传过来。
    private int pageSize;//每页显示的数据条数。
    //需要计算得来
    private int totalPage;    //总页数，通过totalRecord和pageSize计算可以得来
    //开始索引，也就是我们在数据库中要从第几行数据开始拿，有了startIndex和pageSize，
    //就知道了limit语句的两个数据，就能获得每页需要显示的数据了
    private int startIndex;
    //分页显示的页数,比如在页面上显示1，2，3，4，5页，start就为1，end就为5，这个也是算过来的
    private int start;
    private int end;

    private String servlet;//查询时要请求的接口
    private String searchColumn;//待模糊查询的列
    private String keyword;//待模糊查询的关键字

    //通过pageNum，pageSize，totalRecord计算得来tatalPage和startIndex，构造方法中将pageNum，pageSize，totalRecord获得
    public PageBean(int pageNum, int totalRecord) {
        this.pageNum = (pageNum = Math.max(pageNum, 1));
        this.pageSize = 10;//默认为10
        this.totalRecord = totalRecord;
        //totalPage 总页数
        if (totalRecord % pageSize == 0) {
            //说明整除，正好每页显示pageSize条数据，没有多余一页要显示少于pageSize条数据的
            this.totalPage = totalRecord / pageSize;
        } else {
            //不整除，就要在加一页，来显示多余的数据。
            this.totalPage = totalRecord / pageSize + 1;
        }
        //开始索引
        this.startIndex = (pageNum - 1) * pageSize;
        //显示5页，这里自己可以设置，想显示几页就自己通过下面算法修改
        this.start = 1;
        this.end = 5;
        //显示页数的算法
        if (totalPage <= 5) {
            //总页数都小于5，那么end就为总页数的值了。
            this.end = this.totalPage;
        } else {
            //总页数大于5，那么就要根据当前是第几页，来判断start和end为多少了，
            this.start = pageNum - 2;
            this.end = pageNum + 2;
            if (start < 0) {
                //比如当前页是第1页，或者第2页，那么就不如和这个规则，
                this.start = 1;
                this.end = 5;
            }
            if (end > this.totalPage) {
                //比如当前页是倒数第2页或者最后一页，也同样不符合上面这个规则
                this.end = totalPage;
                this.start = end - 5;
            }
        }
    }

    //get、set方法。
    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }


    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public String getServlet() {
        return servlet;
    }

    public void setServlet(String servlet) {
        this.servlet = servlet;
    }

    public String getSearchColumn() {
        return searchColumn;
    }

    public void setSearchColumn(String searchColumn) {
        this.searchColumn = searchColumn;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}