.class public interface abstract Lcom/android/internal/util/function/pooled/PooledConsumer;
.super Ljava/lang/Object;
.source "PooledConsumer.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledLambda;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledLambda;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    .line 27
    .local p0, "this":Lcom/android/internal/util/function/pooled/PooledConsumer;, "Lcom/android/internal/util/function/pooled/PooledConsumer<TT;>;"
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    return-object v0
.end method
