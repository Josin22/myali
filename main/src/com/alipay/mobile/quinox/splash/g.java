package com.alipay.mobile.quinox.splash;

import android.widget.ImageView;

final class g
  implements Runnable
{
  g(f paramf)
  {
  }

  public final void run()
  {
    if ((c.getBundle(this.a.a) != null) && (!c.b(this.a.a)))
    {
      c.getBundle(this.a.a).setVisibility(8);
      c.getBundleByComponentName(this.a.a).start();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.splash.g
 * JD-Core Version:    0.6.2
 */