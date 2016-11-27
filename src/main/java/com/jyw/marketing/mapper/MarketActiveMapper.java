
package com.jyw.marketing.mapper;

import com.jyw.model.MarketActive;
import com.jyw.model.MarketActiveCriteria;
import java.util.List;

import com.jyw.model.MarketActiveEx;
import org.apache.ibatis.annotations.Param;

public interface MarketActiveMapper {
    /** 
     * 根据指定的条件获取数据库记录数
     * @param example
     */
    long countByExample(MarketActiveCriteria example);

    /** 
     * 根据指定的条件删除数据库符合条件的记录
     * @param example
     */
    int deleteByExample(MarketActiveCriteria example);

    /** 
     * 根据主键删除数据库的记录
     * @param activeId
     */
    int deleteByPrimaryKey(Integer activeId);

    /** 
     * 插入数据库记录
     * @param record
     */
    int insert(MarketActive record);

    /** 
     * 动态字段,写入数据库记录
     * @param record
     */
    int insertSelective(MarketActive record);

    /** 
     * 根据指定的条件查询符合条件的数据库记录
     * @param example
     */
    List<MarketActive> selectByExample(MarketActiveCriteria example);

    /** 
     * 根据指定主键获取一条数据库记录
     * @param activeId
     */
    MarketActive selectByPrimaryKey(Integer activeId);

    /** 
     * 动态根据指定的条件来更新符合条件的数据库记录
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") MarketActive record, @Param("example") MarketActiveCriteria example);

    /** 
     * 根据指定的条件来更新符合条件的数据库记录
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") MarketActive record, @Param("example") MarketActiveCriteria example);

    /** 
     * 动态字段,根据主键来更新符合条件的数据库记录
     * @param record
     */
    int updateByPrimaryKeySelective(MarketActive record);

    /** 
     * 根据主键来更新符合条件的数据库记录
     * @param record
     */
    int updateByPrimaryKey(MarketActive record);
    //获取活动信息
   List<MarketActiveEx> selectAllMarketActionEx(MarketActiveEx marketActiveEx);
}