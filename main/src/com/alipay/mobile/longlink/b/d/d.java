package com.alipay.mobile.longlink.b.d;

import com.alipay.mobile.longlink.b.a.m;
import com.alipay.mobile.longlink.b.c.f;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
  implements BundlesManagerImpl
{
  private final com.alipay.mobile.longlink.service.AppBundle a;

  public d(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.a = parama;
  }

  public final void setBundlePath(com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle parama)
  {
    String str;
    if (new DefaultThreadFactory(2).getBundle(parama))
      str = parama.getInitLevel();
    try
    {
      m.dexopt(new JSONObject(str).optInt("reconnectTime"));
      this.a.getBundleName();
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.d.d
 * JD-Core Version:    0.6.2
 */