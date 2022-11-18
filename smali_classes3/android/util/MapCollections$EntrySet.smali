.class final Landroid/util/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/MapCollections;

    .line 169
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iput-object p1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .locals 0

    .line 169
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroid/util/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 177
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 178
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 179
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public whitelist test-api clear()V
    .locals 1

    .line 186
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 187
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    return v1

    .line 193
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 195
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 196
    return v1

    .line 198
    :cond_1
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
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

    .line 204
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v1, 0x0

    return v1

    .line 210
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 255
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 260
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 261
    .local v0, "result":I
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 262
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 263
    .local v3, "key":Ljava/lang/Object;
    iget-object v5, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v5, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    .line 264
    .local v5, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 265
    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    xor-int/2addr v4, v6

    add-int/2addr v0, v4

    .line 261
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .locals 1

    .line 215
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 220
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Landroid/util/MapCollections$MapIterator;

    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {v0, v1}, Landroid/util/MapCollections$MapIterator;-><init>(Landroid/util/MapCollections;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 225
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 230
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 235
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .locals 1

    .line 240
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .locals 1

    .line 245
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 250
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
