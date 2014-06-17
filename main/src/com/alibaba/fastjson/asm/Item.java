package com.alibaba.fastjson.asm;

final class Item
{
  int hashCode;
  int index;
  int intVal;
  long longVal;
  Item next;
  String strVal1;
  String strVal2;
  String strVal3;
  int type;

  Item()
  {
  }

  Item(int paramInt, Item paramItem)
  {
    this.index = paramInt;
    this.type = paramItem.type;
    this.intVal = paramItem.intVal;
    this.longVal = paramItem.longVal;
    this.strVal1 = paramItem.strVal1;
    this.strVal2 = paramItem.strVal2;
    this.strVal3 = paramItem.strVal3;
    this.hashCode = paramItem.hashCode;
  }

  final boolean isEqualTo(Item paramItem)
  {
    switch (this.type)
    {
    case 2:
    case 9:
    case 10:
    case 11:
    default:
      if ((!paramItem.strVal1.equals(this.strVal1)) || (!paramItem.strVal2.equals(this.strVal2)) || (!paramItem.strVal3.equals(this.strVal3)))
        break;
    case 1:
    case 7:
    case 8:
    case 13:
    case 5:
    case 6:
    case 15:
    case 3:
    case 4:
    case 14:
    case 12:
      do
      {
        do
        {
          do
          {
            do
            {
              return true;
              return paramItem.strVal1.equals(this.strVal1);
            }
            while (paramItem.longVal == this.longVal);
            return false;
          }
          while (paramItem.intVal == this.intVal);
          return false;
        }
        while ((paramItem.intVal == this.intVal) && (paramItem.strVal1.equals(this.strVal1)));
        return false;
      }
      while ((paramItem.strVal1.equals(this.strVal1)) && (paramItem.strVal2.equals(this.strVal2)));
      return false;
    }
    return false;
  }

  final void set(int paramInt)
  {
    this.type = 3;
    this.intVal = paramInt;
    this.hashCode = (0x7FFFFFFF & paramInt + this.type);
  }

  final void set(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    this.type = paramInt;
    this.strVal1 = paramString1;
    this.strVal2 = paramString2;
    this.strVal3 = paramString3;
    switch (paramInt)
    {
    default:
      this.hashCode = (0x7FFFFFFF & paramInt + paramString1.hashCode() * paramString2.hashCode() * paramString3.hashCode());
      return;
    case 1:
    case 7:
    case 8:
    case 13:
      this.hashCode = (0x7FFFFFFF & paramInt + paramString1.hashCode());
      return;
    case 12:
    }
    this.hashCode = (0x7FFFFFFF & paramInt + paramString1.hashCode() * paramString2.hashCode());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.asm.Item
 * JD-Core Version:    0.6.2
 */