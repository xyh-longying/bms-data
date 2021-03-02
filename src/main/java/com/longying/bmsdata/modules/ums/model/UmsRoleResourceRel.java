package com.longying.bmsdata.modules.ums.model;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author chenglong
 * @since 2021-02-28
 */
@Data
@Builder
@EqualsAndHashCode(callSuper = false)
@TableName("ums_role_resource_rel")
@ApiModel(value="UmsRoleResourceRel对象", description="")
public class UmsRoleResourceRel implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "uuid")
    private String uuid;

    @ApiModelProperty(value = "角色id")
    private String roleId;

    @ApiModelProperty(value = "资源id")
    private String resourceId;


}
