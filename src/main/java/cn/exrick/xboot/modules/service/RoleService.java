package cn.exrick.xboot.modules.service;


import cn.exrick.xboot.base.XbootBaseService;
import cn.exrick.xboot.modules.entity.Role;

import java.util.List;

/**
 * 角色接口
 *
 * @author Exrickx
 */
public interface RoleService extends XbootBaseService<Role, String> {

    /**
     * 获取默认角色
     *
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);
}
