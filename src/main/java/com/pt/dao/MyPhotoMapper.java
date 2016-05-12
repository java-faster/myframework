package com.pt.dao;

import java.util.HashMap;
import java.util.List;

import com.pt.entity.MyPhoto;

public interface MyPhotoMapper {
    /**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table my_photo
	 * @mbggenerated  Wed May 11 12:19:34 CST 2016
	 */
	int deleteByPrimaryKey(Long id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table my_photo
	 * @mbggenerated  Wed May 11 12:19:34 CST 2016
	 */
	int insert(MyPhoto record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table my_photo
	 * @mbggenerated  Wed May 11 12:19:34 CST 2016
	 */
	int insertSelective(MyPhoto record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table my_photo
	 * @mbggenerated  Wed May 11 12:19:34 CST 2016
	 */
	MyPhoto selectByPrimaryKey(Long id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table my_photo
	 * @mbggenerated  Wed May 11 12:19:34 CST 2016
	 */
	int updateByPrimaryKeySelective(MyPhoto record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table my_photo
	 * @mbggenerated  Wed May 11 12:19:34 CST 2016
	 */
	int updateByPrimaryKey(MyPhoto record);

	List<MyPhoto> getPhotoGroupList(HashMap map);

	List<MyPhoto> getMyPhotoGroupAllLst();
	
	List<MyPhoto> getMyPhotoLastGroupLst();
}