package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IdentityHashMap;
import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

public class SerializeConfig extends IdentityHashMap<Type, ObjectSerializer>
{
  private static final SerializeConfig globalInstance = new SerializeConfig();
  private boolean asm;
  private final ASMSerializerFactory asmFactory;

  public SerializeConfig()
  {
    this(1024);
  }

  public SerializeConfig(int paramInt)
  {
    super(paramInt);
    boolean bool;
    if (!ASMUtils.isAndroid())
      bool = true;
    while (true)
    {
      this.asm = bool;
      this.asmFactory = new ASMSerializerFactory();
      put(Boolean.class, BooleanSerializer.instance);
      put(Character.class, CharacterSerializer.instance);
      put(Byte.class, ByteSerializer.instance);
      put(Short.class, ShortSerializer.instance);
      put(Integer.class, IntegerSerializer.instance);
      put(Long.class, LongSerializer.instance);
      put(Float.class, FloatSerializer.instance);
      put(Double.class, DoubleSerializer.instance);
      put(BigDecimal.class, BigDecimalSerializer.instance);
      put(BigInteger.class, BigIntegerSerializer.instance);
      put(String.class, StringSerializer.instance);
      put([B.class, ByteArraySerializer.instance);
      put([S.class, ShortArraySerializer.instance);
      put([I.class, IntArraySerializer.instance);
      put([J.class, LongArraySerializer.instance);
      put([F.class, FloatArraySerializer.instance);
      put([D.class, DoubleArraySerializer.instance);
      put([Z.class, BooleanArraySerializer.instance);
      put([C.class, CharArraySerializer.instance);
      put([Ljava.lang.Object.class, ObjectArraySerializer.instance);
      put(Class.class, ClassSerializer.instance);
      put(SimpleDateFormat.class, DateFormatSerializer.instance);
      put(Locale.class, LocaleSerializer.instance);
      put(TimeZone.class, TimeZoneSerializer.instance);
      put(UUID.class, UUIDSerializer.instance);
      put(InetAddress.class, InetAddressSerializer.instance);
      put(Inet4Address.class, InetAddressSerializer.instance);
      put(Inet6Address.class, InetAddressSerializer.instance);
      put(InetSocketAddress.class, InetSocketAddressSerializer.instance);
      put(File.class, FileSerializer.instance);
      put(URI.class, URISerializer.instance);
      put(URL.class, URLSerializer.instance);
      put(Appendable.class, AppendableSerializer.instance);
      put(StringBuffer.class, AppendableSerializer.instance);
      put(StringBuilder.class, AppendableSerializer.instance);
      put(Pattern.class, PatternSerializer.instance);
      put(Charset.class, CharsetSerializer.instance);
      put(AtomicBoolean.class, AtomicBooleanSerializer.instance);
      put(AtomicInteger.class, AtomicIntegerSerializer.instance);
      put(AtomicLong.class, AtomicLongSerializer.instance);
      put(AtomicReference.class, AtomicReferenceSerializer.instance);
      put(AtomicIntegerArray.class, AtomicIntegerArraySerializer.instance);
      put(AtomicLongArray.class, AtomicLongArraySerializer.instance);
      try
      {
        put(Class.forName("java.awt.Color"), ColorSerializer.instance);
        put(Class.forName("java.awt.Font"), FontSerializer.instance);
        put(Class.forName("java.awt.Point"), PointSerializer.instance);
        put(Class.forName("java.awt.Rectangle"), RectangleSerializer.instance);
        return;
        bool = false;
      }
      catch (Throwable localThrowable)
      {
      }
    }
  }

  public static final SerializeConfig getGlobalInstance()
  {
    return globalInstance;
  }

  public final ObjectSerializer createASMSerializer(Class<?> paramClass)
  {
    return this.asmFactory.createJavaBeanSerializer(paramClass);
  }

  public ObjectSerializer createJavaBeanSerializer(Class<?> paramClass)
  {
    if (!Modifier.isPublic(paramClass.getModifiers()))
      return new JavaBeanSerializer(paramClass);
    boolean bool = this.asm;
    if (((bool) && (this.asmFactory.isExternalClass(paramClass))) || (paramClass == Serializable.class) || (paramClass == Object.class));
    for (int i = 0; ; i = bool)
    {
      JSONType localJSONType = (JSONType)paramClass.getAnnotation(JSONType.class);
      if ((localJSONType != null) && (!localJSONType.asm()))
        i = 0;
      if (i != 0)
        try
        {
          ObjectSerializer localObjectSerializer = createASMSerializer(paramClass);
          return localObjectSerializer;
        }
        catch (ClassCastException localClassCastException)
        {
          return new JavaBeanSerializer(paramClass);
        }
        catch (Throwable localThrowable)
        {
          throw new JSONException("create asm serializer error, class " + paramClass, localThrowable);
        }
      return new JavaBeanSerializer(paramClass);
    }
  }

  public boolean isAsmEnable()
  {
    return this.asm;
  }

  public void setAsmEnable(boolean paramBoolean)
  {
    this.asm = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.SerializeConfig
 * JD-Core Version:    0.6.2
 */