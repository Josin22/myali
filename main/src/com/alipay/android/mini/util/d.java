package com.alipay.android.mini.util;

import com.alipay.android.mini.event.MiniReadSmsArgs;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.uielement.UIInput;
import com.alipay.android.mini.window.IUIForm;

final class d extends MiniReadSmsArgs
{
  d(MiniSmsReader paramMiniSmsReader)
  {
  }

  public final String getDataByKey(String paramString)
  {
    if ("temp".equals(paramString))
      return MiniSmsReader.getBundle(this.a);
    if ("rules".equals(paramString))
      return MiniSmsReader.dexopt(this.a);
    if ("tmp_group".equals(paramString))
      return String.valueOf(MiniSmsReader.getBundleByComponentName(this.a));
    if ("read_time".equals(paramString))
      return String.valueOf(MiniSmsReader.d(this.a));
    return null;
  }

  public final void reSendSuccess()
  {
    BaseElement localBaseElement = MiniSmsReader.f(this.a).d(MiniSmsReader.removeBundle(this.a));
    if ((localBaseElement instanceof UIInput))
      ((UIInput)localBaseElement).a(null, false);
    this.a.b();
  }

  public final void readSuccess(String paramString)
  {
    BaseElement localBaseElement = MiniSmsReader.f(this.a).d(MiniSmsReader.removeBundle(this.a));
    if ((localBaseElement instanceof UIInput))
      ((UIInput)localBaseElement).a(paramString, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.d
 * JD-Core Version:    0.6.2
 */