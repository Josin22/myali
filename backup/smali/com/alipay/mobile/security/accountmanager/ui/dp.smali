.class final Lcom/alipay/mobile/security/accountmanager/ui/dp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dp;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/dp;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dp;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dp;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;->a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method
