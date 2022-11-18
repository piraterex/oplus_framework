.class public Lcom/android/internal/org/bouncycastle/util/CollectionStore;
.super Ljava/lang/Object;
.source "CollectionStore.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Store;
.implements Lcom/android/internal/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Store<",
        "TT;>;",
        "Lcom/android/internal/org/bouncycastle/util/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist _local:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/android/internal/org/bouncycastle/util/CollectionStore;, "Lcom/android/internal/org/bouncycastle/util/CollectionStore<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/util/Selector<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/android/internal/org/bouncycastle/util/CollectionStore;, "Lcom/android/internal/org/bouncycastle/util/CollectionStore<TT;>;"
    .local p1, "selector":Lcom/android/internal/org/bouncycastle/util/Selector;, "Lcom/android/internal/org/bouncycastle/util/Selector<TT;>;"
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/android/internal/org/bouncycastle/util/CollectionStore;, "Lcom/android/internal/org/bouncycastle/util/CollectionStore<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
