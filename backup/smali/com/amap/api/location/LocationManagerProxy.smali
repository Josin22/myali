.class public Lcom/amap/api/location/LocationManagerProxy;
.super Ljava/lang/Object;


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field private static b:Lcom/amap/api/location/LocationManagerProxy;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/amap/api/location/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/location/e;

.field private f:Lcom/amap/api/location/LocationManagerProxy$a;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/amap/api/location/core/b;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Lcom/amap/api/location/core/b;

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Lcom/amap/api/location/core/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/core/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2

    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2

    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 10

    sget-boolean v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    :cond_0
    new-instance v9, Lcom/amap/api/location/e;

    invoke-direct {v9, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/location/a;->a(DDFJLandroid/app/PendingIntent;)V

    const-string/jumbo v1, "lbs"

    const-wide/16 v2, 0x1388

    move-object v0, p0

    move v4, p5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    :cond_0
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destory()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    sput-object v1, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    return-void
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "lbs"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 2

    const-string/jumbo v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Lcom/amap/api/location/core/b;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationProviderProxy;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/amap/api/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string/jumbo v1, "lbs"

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string/jumbo v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    return-void
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/amap/api/location/a;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v1, p1}, Lcom/amap/api/location/a;->a(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v1}, Lcom/amap/api/location/a;->c()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :cond_3
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    invoke-virtual {v0}, Lcom/amap/api/location/e;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6

    const-string/jumbo v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Lcom/amap/api/location/core/b;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/e;

    invoke-direct {v0, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/LocationManagerProxy$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/LocationManagerProxy$a;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/LocationManagerProxy$a;

    move-wide v2, p2

    move v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/e;->a(Lcom/amap/api/location/AMapLocationListener;JFLjava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Lcom/amap/api/location/core/b;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "network"

    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    const-string/jumbo v0, "lbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Lcom/amap/api/location/core/b;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    const-string/jumbo v5, "lbs"

    move-wide v1, p2

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    const-string/jumbo v5, "gps"

    move-wide v1, p2

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method public setGpsEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Z)V

    return-void
.end method
