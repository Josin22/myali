.class Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->access$1(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
