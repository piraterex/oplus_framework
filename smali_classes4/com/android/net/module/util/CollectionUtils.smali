.class public final Lcom/android/net/module/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist all(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 82
    .local p0, "elem":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 84
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist any(Landroid/util/SparseArray;Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 115
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist any(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 94
    .local p0, "elem":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 140
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 141
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 142
    .local v3, "element":I
    if-ne v3, p1, :cond_1

    .line 143
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v3    # "element":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    return v0
.end method

.method public static blacklist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 153
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist contains([SS)Z
    .locals 4
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .line 127
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 128
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-short v3, p0, v2

    .line 129
    .local v3, "element":I
    if-ne v3, p1, :cond_1

    .line 130
    const/4 v0, 0x1

    return v0

    .line 128
    .end local v3    # "element":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_2
    return v0
.end method

.method public static blacklist containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 219
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "needles":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static blacklist containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 205
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "needles":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, "needle":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 207
    .end local v1    # "needle":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist filter(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 175
    .local p0, "source":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "test":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    return-object v0
.end method

.method public static blacklist indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 102
    .local p0, "elem":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    .line 105
    :cond_0
    nop

    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 160
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 161
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 162
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 161
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 46
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 39
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist toIntArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 54
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 55
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 56
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 57
    .local v3, "item":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 58
    nop

    .end local v3    # "item":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-object v0
.end method

.method public static blacklist toLongArray(Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 68
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 69
    .local v0, "array":[J
    const/4 v1, 0x0

    .line 70
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 71
    .local v3, "item":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 72
    nop

    .end local v3    # "item":Ljava/lang/Long;
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    return-object v0
.end method

.method public static blacklist total([J)J
    .locals 6
    .param p0, "array"    # [J

    .line 188
    const-wide/16 v0, 0x0

    .line 189
    .local v0, "total":J
    if-eqz p0, :cond_0

    .line 190
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 191
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 190
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-wide v0
.end method
