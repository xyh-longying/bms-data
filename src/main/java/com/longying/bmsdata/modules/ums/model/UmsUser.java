package com.longying.bmsdata.modules.ums.model;

import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 后台管理用户表
 * </p>
 *
 * @author chenglong
 * @since 2021-02-28
 */
@Data
@Builder
@EqualsAndHashCode(callSuper = false)
@TableName("ums_user")
@ApiModel(value="UmsUser对象", description="后台管理用户表")
public class UmsUser implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "uuid")
    private String uuid;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "用户类型")
    private String userType;

    @ApiModelProperty(value = "状态")
    private String status;

    @ApiModelProperty(value = "手机号码")
    private String phone;

    @ApiModelProperty(value = "电子邮箱")
    private String email;

    @ApiModelProperty(value = "昵称")
    private String nickname;

    @ApiModelProperty(value = "真实姓名")
    private String realname;

    @ApiModelProperty(value = "身份证号")
    private String idcard;

    @ApiModelProperty(value = "性别")
    private String gender;

    @ApiModelProperty(value = "生日")
    private String birthday;

    @ApiModelProperty(value = "个人网站地址")
    private String webUrl;

    @ApiModelProperty(value = "头像url")
    private String imgUrl;

    @ApiModelProperty(value = "个人介绍")
    private String selfIntro;

    @ApiModelProperty(value = "上次登录时间")
    private Date loginTime;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "创建人")
    private String createBy;

    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @ApiModelProperty(value = "更新人")
    private String updateBy;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;

    @ApiModelProperty(value = "是否删除")
    private String isDelete;


}
