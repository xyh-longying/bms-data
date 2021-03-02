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
 * 后台角色表
 * </p>
 *
 * @author chenglong
 * @since 2021-02-28
 */
@Data
@Builder
@EqualsAndHashCode(callSuper = false)
@TableName("ums_role")
@ApiModel(value="UmsRole对象", description="后台角色表")
public class UmsRole implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "uuid")
    private String uuid;

    @ApiModelProperty(value = "角色名称")
    private String name;

    @ApiModelProperty(value = "角色描述")
    private String descript;

    @ApiModelProperty(value = "角色状态")
    private String status;

    @ApiModelProperty(value = "排序")
    private Integer sort;

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
