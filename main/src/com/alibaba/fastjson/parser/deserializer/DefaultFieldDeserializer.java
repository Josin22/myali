package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.Type;
import java.util.Map;

public class DefaultFieldDeserializer extends FieldDeserializer
{
  private ObjectDeserializer fieldValueDeserilizer;

  public DefaultFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    super(paramClass, paramFieldInfo);
  }

  public int getFastMatchToken()
  {
    if (this.fieldValueDeserilizer != null)
      return this.fieldValueDeserilizer.getFastMatchToken();
    return 2;
  }

  public void parseField(DefaultJSONParser paramDefaultJSONParser, Object paramObject, Type paramType, Map<String, Object> paramMap)
  {
    if (this.fieldValueDeserilizer == null)
      this.fieldValueDeserilizer = paramDefaultJSONParser.getConfig().getDeserializer(this.fieldInfo);
    Object localObject = this.fieldValueDeserilizer.deserialze(paramDefaultJSONParser, getFieldType(), this.fieldInfo.getName());
    if (paramDefaultJSONParser.getResolveStatus() == 1)
    {
      DefaultJSONParser.ResolveTask localResolveTask = paramDefaultJSONParser.getLastResolveTask();
      localResolveTask.setFieldDeserializer(this);
      localResolveTask.setOwnerContext(paramDefaultJSONParser.getContext());
      paramDefaultJSONParser.setResolveStatus(0);
      return;
    }
    if (paramObject == null)
    {
      paramMap.put(this.fieldInfo.getName(), localObject);
      return;
    }
    setValue(paramObject, localObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer
 * JD-Core Version:    0.6.2
 */