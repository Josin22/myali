package com.alipay.mobile.alipassapp.ui.common;

import android.os.SystemClock;
import com.alipay.mobile.common.utils.StringUtils;

final class af
  implements Runnable
{
  af(ae paramae, String paramString)
  {
  }

  public final void run()
  {
    ae.v(this.b, Boolean.valueOf(false));
    if (!ae.getInstance());
    int i;
    int j;
    label76: 
    do
    {
      do
      {
        return;
        new StringBuilder("loopQueryTask dynamicId=").append(this.a).toString();
        ae.getBundle(this.b);
        ae.dexopt(this.b);
        i = ae.getBundleByComponentName(this.b);
        j = 1;
        if (j >= 20)
          break;
        new StringBuilder("loopQueryTask continueLoop=").append(ae.d(this.b)).toString();
      }
      while ((!ae.d(this.b)) || (StringUtils.isBlank(this.a)));
      new StringBuilder("loopQueryTask currentLoopQueryTime=").append(i).append(" excuteloopQueryTimes=").append(ae.getBundleByComponentName(this.b)).toString();
    }
    while (i != ae.getBundleByComponentName(this.b));
    new StringBuilder("过滤后:第{").append(i).append("}次调用loopQueryTask,动态码:{").append(this.a).append("}  短轮询第{").append(j).append("}次").toString();
    if (j == 1)
      SystemClock.sleep(3000L);
    while (true)
    {
      ae.v(this.b, this.a);
      j++;
      break label76;
      break;
      SystemClock.sleep(2000L);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.af
 * JD-Core Version:    0.6.2
 */