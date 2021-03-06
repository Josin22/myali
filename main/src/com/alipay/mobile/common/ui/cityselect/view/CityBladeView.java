package com.alipay.mobile.common.ui.cityselect.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import com.alipay.mobile.base.commonbiz.R.dimen;

public class CityBladeView extends View
{
  private CityBladeView.OnCityBladeViewItemClickListener a;
  String[] b = { "热门", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#" };
  private PopupWindow c;
  int choose = -1;
  private Handler d = new Handler();
  Runnable dismissRunnable = new CityBladeView.1(this);
  Paint paint = new Paint();
  boolean showBkg = false;

  public CityBladeView(Context paramContext)
  {
    super(paramContext);
  }

  public CityBladeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CityBladeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(int paramInt)
  {
    if (this.a != null)
      this.a.onItemClick(this.b[paramInt]);
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f = paramMotionEvent.getY();
    int j = this.choose;
    int k = (int)(f / getHeight() * this.b.length);
    switch (i)
    {
    default:
    case 0:
    case 2:
      do
      {
        do
        {
          return true;
          this.showBkg = true;
        }
        while ((j == k) || (k < 0) || (k >= this.b.length));
        a(k);
        this.choose = k;
        invalidate();
        return true;
      }
      while ((j == k) || (k < 0) || (k >= this.b.length));
      a(k);
      this.choose = k;
      invalidate();
      return true;
    case 1:
    }
    this.showBkg = false;
    this.choose = -1;
    this.d.postDelayed(this.dismissRunnable, 800L);
    invalidate();
    return true;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.showBkg)
      paramCanvas.drawColor(Color.parseColor("#00000000"));
    int i = getHeight();
    int j = getWidth();
    int k = i / this.b.length;
    int m = 0;
    if (m < this.b.length)
    {
      this.paint.setColor(Color.parseColor("#999999"));
      this.paint.setAntiAlias(true);
      if (i < 400)
        this.paint.setTextSize(getResources().getDimension(R.dimen.lifepay_letters_item_little_fontsize));
      while (true)
      {
        if (m == this.choose)
          this.paint.setColor(Color.parseColor("#3399ff"));
        float f1 = j / 2 - this.paint.measureText(this.b[m]) / 2.0F;
        float f2 = k + k * m;
        paramCanvas.drawText(this.b[m], f1, f2, this.paint);
        this.paint.reset();
        m++;
        break;
        this.paint.setTextSize(getResources().getDimension(R.dimen.lifepay_letters_item_fontsize));
      }
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }

  public void setOnItemClickListener(CityBladeView.OnCityBladeViewItemClickListener paramOnCityBladeViewItemClickListener)
  {
    this.a = paramOnCityBladeViewItemClickListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.cityselect.view.CityBladeView
 * JD-Core Version:    0.6.2
 */