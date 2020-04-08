package com.soecode.jt.dao;

import com.soecode.jt.entity.Shose;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface ShoseDao {
    List<Shose> findAll();//查找所有鞋子

    Shose findByShoseId(long shoseId);//根据鞋子ID找

    /**
     * 减少馆藏数量
     *
     * @param shoseId
     * @return 如果影响行数等于>1，表示更新的记录行数
     */
    int reduceNumber(long shoseId);
}
