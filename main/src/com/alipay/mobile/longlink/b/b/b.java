package com.alipay.mobile.longlink.b.b;

import com.alipay.mobile.longlink.b.a.k;

public class b
  implements AppBundle
{
  private static final String b = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(BundlesManager.class);
  com.alipay.mobile.longlink.service.AppBundle a;

  public b(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.a = parama;
  }

  public final void initExecutor()
  {
    this.a.getInitLevel().getBundleName();
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(5, BundlesManager, "getConnection=" + this.a.getInitLevel().hashCode());
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(3, BundlesManager, "===== Connected onSuccess()=====");
    this.a.getInitLevel().getBundle(this.a.hasResource());
    this.a.r();
  }

  public final void stop()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(2, BundlesManager, "===== Connected onFail()=====");
    this.a.m();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.b.b
 * JD-Core Version:    0.6.2
 */