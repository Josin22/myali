.class public Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alipay/android/app/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/widget/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/l;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p1, v0, Lcom/alipay/android/app/widget/l;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p1, v0, Lcom/alipay/android/app/widget/l;->e:Landroid/view/View;

    return-object p0
.end method

.method public final a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/app/widget/l;->r:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p1, v0, Lcom/alipay/android/app/widget/l;->o:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p3, v0, Lcom/alipay/android/app/widget/l;->q:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput p2, v0, Lcom/alipay/android/app/widget/l;->p:I

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p1, v0, Lcom/alipay/android/app/widget/l;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p1, v0, Lcom/alipay/android/app/widget/l;->h:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p2, v0, Lcom/alipay/android/app/widget/l;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/app/widget/l;->n:Z

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p1, v0, Lcom/alipay/android/app/widget/l;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iput-object p2, v0, Lcom/alipay/android/app/widget/l;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final b()Lcom/alipay/android/app/widget/CustomAlertDialog;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;-><init>(Lcom/alipay/android/app/widget/l;)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v1, v1, Lcom/alipay/android/app/widget/l;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v2, v2, Lcom/alipay/android/app/widget/l;->h:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v3, v3, Lcom/alipay/android/app/widget/l;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/widget/CustomAlertDialog;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v1, v1, Lcom/alipay/android/app/widget/l;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v2, v2, Lcom/alipay/android/app/widget/l;->i:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v3, v3, Lcom/alipay/android/app/widget/l;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/widget/CustomAlertDialog;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-boolean v1, v1, Lcom/alipay/android/app/widget/l;->n:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v1, v1, Lcom/alipay/android/app/widget/l;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v1, v1, Lcom/alipay/android/app/widget/l;->g:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/l;

    iget-object v1, v1, Lcom/alipay/android/app/widget/l;->g:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->show()V

    return-object v0
.end method
