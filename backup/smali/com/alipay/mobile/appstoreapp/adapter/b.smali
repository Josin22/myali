.class final Lcom/alipay/mobile/appstoreapp/adapter/b;
.super Ljava/lang/Object;
.source "FastLoginAppAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

.field final synthetic b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/adapter/b;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/adapter/b;->a:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/b;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/b;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/adapter/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/appstoreapp/adapter/c;-><init>(Lcom/alipay/mobile/appstoreapp/adapter/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    :cond_0
    return-void
.end method
