.class public Lcom/alipay/mobile/security/gesture/component/AlipayPattern;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private c:Lcom/alipay/mobile/security/gesture/component/LockView;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private final h:I

.field private i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field protected mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/j;

.field protected mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AlipayPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "AlipayPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:I

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "AlipayPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:I

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureErrorNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()V
    .locals 3

    const-string/jumbo v0, "AlipayPattern"

    const-string/jumbo v1, "inflate(R.layout.alipay_pattern-->"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/e;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/a/d;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    sget v0, Lcom/alipay/mobile/a/d;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/a/d;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    sget v0, Lcom/alipay/mobile/a/d;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/j;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/i;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/alipay/mobile/a/d;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 1

    invoke-static {p2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    instance-of v0, p2, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/component/d;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/component/d;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    move-object v0, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/k;

    invoke-interface {v0, v1, v1, v1}, Lcom/alipay/mobile/security/gesture/component/k;->a(ZZZ)V

    invoke-virtual {p0, p2, p1, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->j:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->k:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;Ljava/lang/String;)V
    .locals 3

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->i:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public TryToSetPattern(Z)V
    .locals 4

    const/16 v3, 0x8

    sget v0, Lcom/alipay/mobile/a/d;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->start_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/a/d;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-nez v0, :cond_1

    sget v0, Lcom/alipay/mobile/a/d;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    if-eqz v0, :cond_6

    sget v0, Lcom/alipay/mobile/a/d;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    sget v1, Lcom/alipay/mobile/a/d;->l:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/a/f;->o:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/a/f;->n:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Lcom/alipay/mobile/security/gesture/component/f;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/gesture/component/f;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    new-instance v2, Lcom/alipay/mobile/security/gesture/component/g;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/gesture/component/g;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/component/LockView;->setOnLockInputListener(Lcom/alipay/mobile/security/gesture/component/m;)V

    :cond_6
    return-void
.end method

.method public checkGestureErrorAlert(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x5

    invoke-static {p2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/component/h;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/component/h;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public checkPattern(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/alipay/mobile/a/d;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/a/d;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/misc/CircularImageView;->setBorderWidth(I)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$drawable;->start_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-nez v0, :cond_9

    sget v0, Lcom/alipay/mobile/a/d;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-nez v0, :cond_3

    sget v0, Lcom/alipay/mobile/a/d;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :cond_4
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget v1, Lcom/alipay/mobile/a/d;->m:I

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/alipay/mobile/a/c;->a:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/helper/HideUtils;->hide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/a;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/b;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/component/c;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setOnFirstInputListener(Lcom/alipay/mobile/security/gesture/component/l;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/component/e;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setOnLockInputListener(Lcom/alipay/mobile/security/gesture/component/m;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_b
    sget v1, Lcom/alipay/mobile/a/d;->m:I

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    const-string/jumbo v1, ""

    sget v5, Lcom/alipay/mobile/a/c;->a:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_2
.end method

.method public getPatternCheckView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getmLockView()Lcom/alipay/mobile/security/gesture/component/LockView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setIsShowSkipButton(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Z)V

    return-void
.end method

.method public setOnPatternChangeListener(Lcom/alipay/mobile/security/gesture/component/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/j;

    return-void
.end method

.method public setOnPatternCheckedListener(Lcom/alipay/mobile/security/gesture/component/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/k;

    return-void
.end method

.method public setTopTextView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    return-void
.end method
