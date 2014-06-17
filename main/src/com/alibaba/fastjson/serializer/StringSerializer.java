package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class StringSerializer
  implements ObjectSerializer
{
  public static StringSerializer instance = new StringSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    write(paramJSONSerializer, (String)paramObject1);
  }

  public void write(JSONSerializer paramJSONSerializer, String paramString)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramString == null)
    {
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullStringAsEmpty))
      {
        localSerializeWriter.writeString("");
        return;
      }
      localSerializeWriter.writeNull();
      return;
    }
    localSerializeWriter.writeString(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.StringSerializer
 * JD-Core Version:    0.6.2
 */