.class public Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final KEY:I = 0x1000193

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final M_MASK:I = -0x789a012d

.field static final SEED:I = -0x7ee3623b

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field volatile transient modCount:I

.field final random:I

.field transient size:I

.field transient table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I

.field volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x1869f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    const/high16 v0, 0x4000

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    iput-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x1869f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    iput-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal initial capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal load factor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_4

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/high16 v2, 0x3f40

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    return-void
.end method

.method private containsNullValue()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    aget-object v2, v3, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private entrySet0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method private getForNullKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static hash(I)I
    .locals 3

    mul-int v0, p0, p0

    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private hashString(Ljava/lang/String;)I
    .locals 3

    const v0, -0x7ee3623b

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    mul-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const v2, 0x1000193

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v1, 0x1

    xor-int/2addr v0, v1

    const v1, -0x789a012d

    and-int/2addr v0, v1

    return v0
.end method

.method static indexFor(II)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private putAllForCreate(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iput-object p2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    :goto_2
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    invoke-virtual {p0, v3, v0, p1, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v0, v0, p4

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v1, p4

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    :cond_0
    return-void
.end method

.method capacity()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    new-array v2, v2, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v2, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    iput v3, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v3, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsNullValue()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    aget-object v2, v3, v0

    :goto_2
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v0, v0, p4

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v1, p4

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getForNullKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v2, v0, :cond_3

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v2, v0, :cond_3

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method init()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method loadFactor()F
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    return v0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/high16 v0, 0x4000

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-le v1, v2, :cond_3

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-le v1, v0, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    :goto_1
    if-ge v1, v0, :cond_2

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    if-le v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method final removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v4

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v4

    move-object v3, v1

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v5, v0, :cond_4

    iget-object v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_0

    if-eqz p1, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-ne v3, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v2, v0, v4

    :goto_2
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iput-object v2, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_2

    :cond_4
    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method final removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v4

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v4

    move-object v3, v1

    :goto_2
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v5, v0, :cond_4

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-ne v3, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v2, v0, v4

    :goto_3
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iput-object v2, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_3

    :cond_4
    move-object v3, v1

    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method resize(I)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    :goto_0
    return-void

    :cond_0
    new-array v0, p1, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    int-to-float v0, p1

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method

.method transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V
    .locals 7

    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v4, p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    aget-object v1, v3, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aput-object v2, v3, v0

    :goto_1
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    invoke-static {v5, v4}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v5

    aget-object v6, p1, v5

    iput-object v6, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v1, p1, v5

    if-nez v2, :cond_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
