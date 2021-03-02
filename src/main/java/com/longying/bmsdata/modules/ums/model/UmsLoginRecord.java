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
 * 后台用户登录记录表
 * </p>
 *
 * @author chenglong
 * @since 2021-02-28
 */
@Data
@Builder
@EqualsAndHashCode(callSuper = false)
@TableName("ums_login_record")
@ApiModel(value="UmsLoginRecord对象", description="后台用户登录记录表")
public class UmsLoginRecord implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "uuid")
    private String uuid;

    @ApiModelProperty(value = "用户id")
    private String userId;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "登录终端")
    private String terminal;

    @ApiModelProperty(value = "登录ip")
    private String ip;

    @ApiModelProperty(value = "登录地址")
    private String address;

    @ApiModelProperty(value = "登录时间")
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
