package cn.exrick.xboot.modules.utils;

import cn.exrick.xboot.modules.entity.Permission;
import cn.exrick.xboot.modules.vo.MenuVo;

/**
 * @author Exrick
 */
public class DtoUtil {

    public static MenuVo permissionToMenuVo(Permission p){
        MenuVo menuVo = new MenuVo();

        menuVo.setId(p.getId());
        menuVo.setParentId(p.getParentId());
        menuVo.setName(p.getName());
        menuVo.setType(p.getType());
        menuVo.setTitle(p.getTitle());
        menuVo.setComponent(p.getComponent());
        menuVo.setPath(p.getPath());
        menuVo.setIcon(p.getIcon());
        menuVo.setUrl(p.getUrl());
        menuVo.setButtonType(p.getButtonType());

        return menuVo;
    }
}
