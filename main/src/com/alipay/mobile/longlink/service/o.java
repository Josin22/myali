package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.c.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public final class o
{
  public o(LongLinkService paramLongLinkService)
  {
  }

  public final Future a(Runnable paramRunnable)
  {
    boolean bool1 = this.a.getInstance().isTerminated();
    Future localFuture = null;
    if (!bool1)
    {
      boolean bool2 = this.a.getInstance().isShutdown();
      localFuture = null;
      if (!bool2)
      {
        localFuture = null;
        if (paramRunnable != null)
        {
          localFuture = this.a.getInstance().submit(paramRunnable);
          a.e(5, LongLinkService.getFullBundleName(), "Future result is " + localFuture.getClass().getName().toString());
        }
      }
    }
    return localFuture;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.o
 * JD-Core Version:    0.6.2
 */