.class public final Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;
.super Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->S:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->setContentView(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity_;->b()V

    return-void
.end method
