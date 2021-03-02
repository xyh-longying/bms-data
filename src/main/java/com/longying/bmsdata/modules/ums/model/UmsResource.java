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
 * 后台资源表
 * </p>
 *
 * @author chenglong
 * @since 2021-02-28
 */
@Data
@Builder
@EqualsAndHashCode(callSuper = false)
@TableName("ums_resource")
@ApiModel(value="UmsResource对象", description="后台资源表")
public class UmsResource implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "uuid")
    private String uuid;

    @ApiModelProperty(value = "资源分类id")
    private String categoryId;

    @ApiModelProperty(value = "资源名称")
    private String name;

    @ApiModelProperty(value = "资源url")
    private String url;

    @ApiModelProperty(value = "描述")
    private String descript;

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
