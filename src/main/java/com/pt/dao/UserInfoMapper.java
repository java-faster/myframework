package com.pt.dao;

import com.pt.entity.UserInfo;

public interface UserInfoMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user_info
	 * @mbggenerated  Sun May 08 16:35:30 CST 2016
	 */
	int deleteByPrimaryKey(Long id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user_info
	 * @mbggenerated  Sun May 08 16:35:30 CST 2016
	 */
	int insert(UserInfo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user_info
	 * @mbggenerated  Sun May 08 16:35:30 CST 2016
	 */
	int insertSelective(UserInfo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user_info
	 * @mbggenerated  Sun May 08 16:35:30 CST 2016
	 */
	UserInfo selectByPrimaryKey(Long id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user_info
	 * @mbggenerated  Sun May 08 16:35:30 CST 2016
	 */
	int updateByPrimaryKeySelective(UserInfo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user_info
	 * @mbggenerated  Sun May 08 16:35:30 CST 2016
	 */
	int updateByPrimaryKey(UserInfo record);
}