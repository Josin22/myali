.class Lcom/alipay/pushsdk/push/a/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/io/DataOutputStream;

.field private d:Lcom/alipay/pushsdk/push/a/m;

.field private final e:Ljava/util/concurrent/BlockingQueue;

.field private f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/a/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/alipay/pushsdk/push/a/m;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/a/j;->g:J

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/j;->d:Lcom/alipay/pushsdk/push/a/m;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/a/j;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/a/j;Ljava/lang/Thread;)V
    .locals 8

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->b:Ljava/lang/Thread;

    if-ne v0, p1, :cond_3

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/a/j;->e()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    :try_start_1
    sget-object v3, Lcom/alipay/pushsdk/push/a/j;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "writePackets curMsgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->k()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v7

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v6

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v7

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/pushsdk/push/a/j;->g:J

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->b()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/j;->d:Lcom/alipay/pushsdk/push/a/m;

    iget-wide v3, p0, Lcom/alipay/pushsdk/push/a/j;->g:J

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/pushsdk/push/a/m;->a(JI)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x4

    :try_start_3
    sget-object v2, Lcom/alipay/pushsdk/push/a/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writePackets queue len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    const-string/jumbo v0, "IOException happened when writer to write."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "IOException : write"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/a/p;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "52"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/a/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->d:Lcom/alipay/pushsdk/push/a/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/m;->l:Lcom/alipay/pushsdk/push/a/f;

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/a/f;->a(Lcom/alipay/pushsdk/push/a/p;)V

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_2
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private e()Lcom/alipay/pushsdk/push/c/a;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/c/a;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const/4 v1, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/a/j;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "nextPacket queue len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->d:Lcom/alipay/pushsdk/push/a/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/m;->f:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->c:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    new-instance v0, Lcom/alipay/pushsdk/push/a/k;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/a/k;-><init>(Lcom/alipay/pushsdk/push/a/j;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->b:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Packet Writer ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/j;->d:Lcom/alipay/pushsdk/push/a/m;

    iget v2, v2, Lcom/alipay/pushsdk/push/a/m;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->b:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 5

    const/4 v3, 0x4

    sget-object v0, Lcom/alipay/pushsdk/push/a/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket() enter... done="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_1
    sget-object v2, Lcom/alipay/pushsdk/push/a/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendPacket queue len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/j;->f:Z

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/j;->d:Lcom/alipay/pushsdk/push/a/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/m;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
