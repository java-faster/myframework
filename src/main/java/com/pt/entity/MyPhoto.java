package com.pt.entity;

import java.util.Date;

public class MyPhoto {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.id
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.title
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private String title;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.description
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.group
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private String group;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.img_path
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private String imgPath;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.add_time
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private Date addTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.upt_time
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private Date uptTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column my_photo.state
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    private Integer state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.id
     *
     * @return the value of my_photo.id
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.id
     *
     * @param id the value for my_photo.id
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.title
     *
     * @return the value of my_photo.title
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.title
     *
     * @param title the value for my_photo.title
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.description
     *
     * @return the value of my_photo.description
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.description
     *
     * @param description the value for my_photo.description
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.group
     *
     * @return the value of my_photo.group
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public String getGroup() {
        return group;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.group
     *
     * @param group the value for my_photo.group
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setGroup(String group) {
        this.group = group == null ? null : group.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.img_path
     *
     * @return the value of my_photo.img_path
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public String getImgPath() {
        return imgPath;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.img_path
     *
     * @param imgPath the value for my_photo.img_path
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setImgPath(String imgPath) {
        this.imgPath = imgPath == null ? null : imgPath.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.add_time
     *
     * @return the value of my_photo.add_time
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public Date getAddTime() {
        return addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.add_time
     *
     * @param addTime the value for my_photo.add_time
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.upt_time
     *
     * @return the value of my_photo.upt_time
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public Date getUptTime() {
        return uptTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.upt_time
     *
     * @param uptTime the value for my_photo.upt_time
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setUptTime(Date uptTime) {
        this.uptTime = uptTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column my_photo.state
     *
     * @return the value of my_photo.state
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column my_photo.state
     *
     * @param state the value for my_photo.state
     *
     * @mbggenerated Sun May 08 16:35:30 CST 2016
     */
    public void setState(Integer state) {
        this.state = state;
    }
}