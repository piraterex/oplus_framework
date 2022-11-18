.class final Landroid/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/MapCollections;

    .line 359
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iput-object p1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 363
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 368
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .locals 1

    .line 373
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 374
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 378
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 383
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    const/4 v1, 0x0

    return v1

    .line 389
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .locals 1

    .line 394
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 399
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 404
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 405
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 406
    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, v0}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 407
    const/4 v1, 0x1

    return v1

    .line 409
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 414
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 415
    .local v0, "N":I
    const/4 v1, 0x0

    .line 416
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 417
    iget-object v3, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 418
    .local v3, "cur":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    iget-object v5, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v5, v2}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 420
    add-int/lit8 v2, v2, -0x1

    .line 421
    add-int/lit8 v0, v0, -0x1

    .line 422
    const/4 v1, 0x1

    .line 416
    .end local v3    # "cur":Ljava/lang/Object;
    :cond_0
    add-int/2addr v2, v4

    goto :goto_0

    .line 425
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 430
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 431
    .local v0, "N":I
    const/4 v1, 0x0

    .line 432
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 433
    iget-object v3, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 434
    .local v3, "cur":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 435
    iget-object v5, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v5, v2}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 436
    add-int/lit8 v2, v2, -0x1

    .line 437
    add-int/lit8 v0, v0, -0x1

    .line 438
    const/4 v1, 0x1

    .line 432
    .end local v3    # "cur":Ljava/lang/Object;
    :cond_0
    add-int/2addr v2, v4

    goto :goto_0

    .line 441
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public whitelist test-api size()I
    .locals 1

    .line 446
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .locals 2

    .line 451
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 456
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
