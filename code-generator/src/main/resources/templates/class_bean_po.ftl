package ${cfg.beanPoPackage};

import ${cfg.basePoPackage}.BasePO;

import lombok.Data;
import java.io.Serializable;

<#if table.importBeanList??>
<#list table.importBeanList as item>
import ${item};
</#list>
</#if>

/**
 * ${table.tableComment}
 * @author BOY_Code_Generator
 * @date ${.now?string("yyyy-MM-dd HH:mm:ss")}
 */
@Data
public class ${table.beanName}PO extends BasePO implements Serializable {

    private static final long serialVersionUID = 1L;

<#list table.propertyList as col>
  <#if col.columnComment?has_content>
  /**
   * ${col.columnComment}
   */
  </#if>
  private ${col.propertyType} ${col.propertyName};
</#list>
}