.class public Landroid/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist mPool:[Ljava/lang/Object;

.field private greylist-max-o mPoolSize:I


# direct methods
.method public constructor greylist <init>(I)V
    .locals 2
    .param p1, "maxPoolSize"    # I

    .line 95
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-lez p1, :cond_0

    .line 99
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isInPool(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 131
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 133
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist acquire()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 107
    add-int/lit8 v2, v0, -0x1

    .line 108
    .local v2, "lastPooledIndex":I
    iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 109
    .local v4, "instance":Ljava/lang/Object;, "TT;"
    aput-object v1, v3, v2

    .line 110
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 111
    return-object v4

    .line 113
    .end local v2    # "lastPooledIndex":I
    .end local v4    # "instance":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method public greylist release(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    aput-object p1, v1, v0

    .line 124
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 125
    return v1

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
