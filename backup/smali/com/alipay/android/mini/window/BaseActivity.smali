.class public Lcom/alipay/android/mini/window/BaseActivity;
.super Lcom/alipay/android/mini/window/AbsActivity;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/mini/window/AbsActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "CallingPid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    :try_start_0
    iget v0, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "no biz id"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/BaseActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/BaseActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/BaseActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/AbsActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/window/BaseActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbsActivity;->onResume()V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    invoke-static {}, Lcom/alipay/android/app/data/DataProcessor;->a()V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setFinishOnTouchOutside"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/exception/AppErrorException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->i()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "CallingPid"

    iget v1, p0, Lcom/alipay/android/mini/window/BaseActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/AbsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
