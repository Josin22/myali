package com.alipay.pushsdk.a;

import android.content.Context;
import com.alipay.pushsdk.c.b;
import com.alipay.pushsdk.data.f;
import com.alipay.pushsdk.push.h;
import org.json.JSONObject;

public class c
{
  private static final String a = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.getBundle(BundlesManagerImpl.class);
  private Context b;
  private BundlesManager c;
  private Bundleable d;

  public c(Context paramContext)
  {
    this.b = paramContext;
    this.c = new BundlesManager(this.b);
    this.d = new Bundleable(this.b);
  }

  public final void initExecutor()
  {
    String str1 = this.d.getInstance();
    String str2 = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.stop();
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.e(3, AppBundle, "request() getConfigURL=" + str2);
    try
    {
      JSONObject localJSONObject = this.c.stop();
      localJSONObject.put("userId", str1);
      localJSONObject.put("lastPubMsgId", new DefaultThreadFactory(this.b).getInstance());
      localJSONObject.put("pushCfgId", this.c.getInstance().a);
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUtil.e(3, AppBundle, "getReqData() jsonRequest=" + localJSONObject.toString());
      ZLog locald = new ZLog(this);
      new HostClassLoader(this.b, locald).v(str2, localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.c
 * JD-Core Version:    0.6.2
 */