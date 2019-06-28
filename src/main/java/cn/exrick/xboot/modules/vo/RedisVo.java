package cn.exrick.xboot.modules.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @author Exrickx
 */
@Data
@AllArgsConstructor
public class RedisVo {

    private String key;

    private String value;
}
