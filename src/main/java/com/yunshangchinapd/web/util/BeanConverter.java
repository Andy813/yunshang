package com.yunshangchinapd.web.util;

import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * User: Peter
 * Date: 13-10-30
 * Time: 下午4:46
 */
public class BeanConverter {

    /**
     * 把java Bean转换为HashMap的工具类,如果bean的某个属性值是空值,将会忽略
     * @param bean 任意的java bean
     * @return  HashMap<String,Object>
     */
    public static Map<String,Object> beanToMapWithNotNull(Object bean){
        Map beanMap = null;
        Map<String, Object> resultMap = new HashMap<String, Object>();
        try {
            beanMap = BeanUtils.describe(bean);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        Set set = beanMap.keySet();
        for (Object o : set) {
            if (beanMap.get(o) != null) {
                resultMap.put(o.toString(),beanMap.get(o));
            }
        }
        resultMap.remove("class");
        return  resultMap;
    }
    private BeanConverter(){}
}
