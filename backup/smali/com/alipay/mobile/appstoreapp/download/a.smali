.class final Lcom/alipay/mobile/appstoreapp/download/a;
.super Ljava/lang/Object;
.source "ExternalDownloadIntentService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/download/a;->b:Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/download/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/a;->b:Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method
