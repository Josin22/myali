.class public Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableWrappedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/j256/ormlite/dao/CloseableIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/CloseableIterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/CloseableIterable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->a:Lcom/j256/ormlite/dao/CloseableIterable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->b:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->b:Lcom/j256/ormlite/dao/CloseableIterator;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->b:Lcom/j256/ormlite/dao/CloseableIterator;

    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->a:Lcom/j256/ormlite/dao/CloseableIterable;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterable;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->b:Lcom/j256/ormlite/dao/CloseableIterator;

    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->b:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method