package com.alipay.pushsdk.a;

import android.content.Context;
import android.os.Messenger;
import com.alipay.pushsdk.b.b;
import com.alipay.pushsdk.b.c;

public final class e
{
  private g a;
  private DefaultThreadFactory b;
  private BundlesManagerImpl c;

  public e(Context paramContext, g paramg)
  {
    this.a = paramg;
    this.b = new DefaultThreadFactory(this);
    this.c = BundlesManagerImpl.getBundle(paramContext);
  }

  public final void put(String paramString, Object paramObject)
  {
    BundlesManager localb = new BundlesManager(new Messenger(this.b));
    localb.getBundle(paramString);
    localb.getBundle(paramObject);
    this.c.getBundle(localb);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.e
 * JD-Core Version:    0.6.2
 */