.class public Lcom/alipay/mobile/security/securitycommon/FileUtil;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/security/securitycommon/FileUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/security/securitycommon/FileUtil;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/securitycommon/FileUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/security/securitycommon/FileUtil;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static final c(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
