.class public Lcom/alipay/android/app/empty/WindowTemplateProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/empty/IEmpty;


# static fields
.field private static a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

.field private static b:Z


# instance fields
.field private c:I

.field private d:Ljava/util/Map;

.field private e:Lcom/alipay/android/app/net/Envelope;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    new-instance v0, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v0}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v1, "fetch.win.template"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    sput-boolean v2, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/app/empty/WindowTemplate;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/android/app/empty/c;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/empty/c;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/alipay/android/app/empty/c;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/android/app/empty/c;->close()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v3

    const-string/jumbo v4, "get local window template error"

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/alipay/android/app/empty/c;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/alipay/android/app/empty/c;->close()V

    throw v0

    :cond_0
    new-instance v1, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-direct {v1, p2, v0}, Lcom/alipay/android/app/empty/WindowTemplate;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;
    .locals 4

    :goto_0
    invoke-virtual {p3}, Lcom/alipay/android/app/net/Request;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2}, Lcom/alipay/android/app/net/Request;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p4}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "code"

    const/16 v3, 0x1f7

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    sget v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    const-string/jumbo v0, "public_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v1, "update rsa key"

    const-string/jumbo v2, "rsponse data is no key"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    const-string/jumbo v0, "res_data"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/empty/MemoryMonitor;->b(Lcom/alipay/android/app/empty/IMemorySizeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/empty/MemoryMonitor;->a(Lcom/alipay/android/app/empty/IMemorySizeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b:Z

    return p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Lcom/alipay/android/app/empty/WindowTemplate;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v2, "cann\'t get window template"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "name--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | version--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    sget-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/android/app/net/Request;

    iget-object v4, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    sget-object v5, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-direct {v3, v4, v0, p4, v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lorg/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/lib/plusin/protocol/ProtocolType;)V

    :try_start_0
    invoke-direct {p0, p1, v2, v3, p4}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    new-instance v2, Lcom/alipay/android/app/json/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/json/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->a()V

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "result"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v3, "get window template fail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "name--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | version--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-direct {v1, p3, v0}, Lcom/alipay/android/app/empty/WindowTemplate;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v0, v1

    goto :goto_3

    :cond_4
    :try_start_7
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method public static b()Lcom/alipay/android/app/empty/WindowTemplateProvider;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;-><init>()V

    sput-object v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "win_name"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "version"

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "os"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/empty/MemoryMonitor;->b(Lcom/alipay/android/app/empty/IMemoryEventHandler;)V

    new-instance v0, Lcom/alipay/android/app/empty/d;

    iget-object v1, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/empty/d;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/WindowTemplate;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    sub-int/2addr v1, p3

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/app/empty/WindowTemplate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    sub-int/2addr v1, p3

    if-nez v1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V

    iget-object v0, v0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Lcom/alipay/android/app/empty/WindowTemplate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    sub-int/2addr v1, p3

    if-nez v1, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V

    iget-object v0, v0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v1, "no window template"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "name--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | version--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    const-string/jumbo v1, "Cannot get window template from server"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    throw v0
.end method

.method public final a()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "init_window_template"

    const-string/jumbo v4, ""

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "window_template.img"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    if-nez v4, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "win"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "win_version"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "win_name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lcom/alipay/android/app/empty/WindowTemplate;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v5, v8}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "init_window_template"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/empty/MemoryMonitor;->a(Lcom/alipay/android/app/empty/IMemoryEventHandler;)V

    return-void
.end method
