package com.alipay.mobile.alipassapp.ui;

import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.mobile.alipassapp.biz.common.d;
import com.alipay.mobile.alipassapp.biz.model.a;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.common.rpc.RpcException;
import java.util.concurrent.atomic.AtomicBoolean;

final class av
  implements Runnable
{
  av(AlipassListActivity paramAlipassListActivity)
  {
  }

  public final void run()
  {
    int i;
    if (this.a.getBundleName())
    {
      PassListResult localPassListResult3 = AlipassListActivity.f(this.a).getBundle(this.a.getAllBundles());
      this.a.dexopt(new a(localPassListResult3, 0));
      if ((localPassListResult3 == null) || (localPassListResult3.getHasCurrent() != 1))
        i = 1;
    }
    while (true)
    {
      int k;
      if (this.a.getInitLevel())
      {
        PassListResult localPassListResult2 = AlipassListActivity.f(this.a).getBundleByComponentName(this.a.getAllBundles());
        this.a.dexopt(new a(localPassListResult2, 1));
        if (i != 0)
          if ((localPassListResult2 == null) || (localPassListResult2.getHasCurrent() != 1))
            k = 1;
      }
      label129: for (int j = k; ; j = i)
      {
        a locala1 = new a();
        if (j != 0)
        {
          this.a.showProgressDialog("加载中", true, AlipassListActivity.getBundleByComponentName(this.a));
          AlipassListActivity.getBundle(this.a).set(false);
          locala1.d = true;
          AlipassListActivity.dexopt(this.a).set(true);
          a locala2 = AlipassListActivity.f(this.a).v(this.a.getRequireBundleName(), this.a.getInitLevel());
          locala1.e = locala2.e;
          locala1.a = locala2.a;
          if ((locala1.e != null) && ((locala1.e instanceof RpcException)) && (locala1.d) && (((RpcException)locala1.e).getCode() == 2))
          {
            if (j != 0)
              this.a.dismissProgressDialog();
            AlipassListActivity.h(this.a).e(this.a, this.a.a, new aw(this));
          }
        }
        while (true)
        {
          return;
          i = 0;
          break;
          k = 0;
          break label129;
          if (this.a.getBundleName())
          {
            PassListResult localPassListResult1 = AlipassListActivity.f(this.a).getBundle(this.a.getAllBundles());
            this.a.dexopt(new a(localPassListResult1, 0));
          }
          this.a.dexopt(locala1);
          AlipassListActivity.dexopt(this.a).set(false);
          if (j != 0)
            this.a.dismissProgressDialog();
          while (this.a.getInitLevel())
          {
            AlipassListActivity.v(this.a, this.a.getAllBundles());
            return;
            this.a.getBundle(true);
            AlipassListActivity.d(this.a);
            this.a.getBundle(false);
          }
        }
      }
      i = 1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.av
 * JD-Core Version:    0.6.2
 */