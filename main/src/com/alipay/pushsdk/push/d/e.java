package com.alipay.pushsdk.push.d;

import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.c.a;
import com.alipay.pushsdk.push.f;
import com.alipay.pushsdk.push.j;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  implements BundlesManagerImpl
{
  private static final String a = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.getBundle(HostClassLoader.class);
  private final j b;

  public e(j paramj)
  {
    this.b = paramj;
  }

  public final void setBundlePath(AppBundle parama)
  {
    String str1;
    if (new DefaultThreadFactory(0).getBundle(parama))
    {
      this.b.getBundle(true);
      o.getBundle(System.currentTimeMillis());
      this.b.dexopt(System.currentTimeMillis());
      str1 = parama.hasResource();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str1);
      o.getBundleByComponentName(localJSONObject.optInt("keepLiveTime"));
      o.dexopt(localJSONObject.optInt("reconnectTime"));
      o.d(localJSONObject.optBoolean("updateLBSInfo"));
      String str2 = localJSONObject.optString("heartTimeout");
      if ((str2 != null) && (str2.length() > 0))
        o.getBundle(Integer.parseInt(str2));
      String str3 = localJSONObject.optString("ctrlSelf");
      if ((str3 != null) && (str3.equalsIgnoreCase("false")))
        o.getBundle(false);
      while (true)
      {
        com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.e(3, AppBundle, "processPacket ctrlSelf=" + o.g());
        String str4 = localJSONObject.optString("ctrlAlways");
        if ((str4 == null) || (!str4.equalsIgnoreCase("false")))
          break;
        o.dexopt(false);
        com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.e(3, AppBundle, "processPacket ctrlAlways=" + o.hasResource());
        j.q();
        com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.e(3, AppBundle, "processPacket() reconnectTime=" + o.getBundleName() + "s, keepLiveTime=" + o.l() + "s, updateLBSInfo=" + o.getRequireBundleName());
        ZLog.a(ZLog.s, ZLog.y, System.currentTimeMillis(), ZLog.y, 1000L + System.currentTimeMillis(), "RegisterPacketListener_processPacket:reconnectTime=" + o.getBundleName() + " keepLiveTime=" + o.l());
        this.b.v();
        com.alipay.pushsdk.BundlesManagerImpl.AppBundle.HostClassLoader.e("32", "01", "3");
        return;
        o.getBundle(true);
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        this.b.getBundle(false);
        localJSONException.printStackTrace();
        continue;
        o.dexopt(true);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.d.e
 * JD-Core Version:    0.6.2
 */