.class public Lcom/android/internal/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 331
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 332
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 334
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 335
    return-object p0
.end method

.method public static blacklist add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 319
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 320
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 322
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-object p0
.end method

.method public static blacklist add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 368
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 369
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object p0, v0

    .line 371
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-object p0
.end method

.method public static blacklist add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 357
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 358
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 360
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    return-object p0
.end method

.method public static blacklist addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 343
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    .line 346
    :cond_1
    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 347
    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 349
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 350
    return-object p0
.end method

.method public static blacklist addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "dest":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static blacklist any(Ljava/util/List;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 257
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist any(Ljava/util/Set;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 266
    .local p0, "items":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 53
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist copyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 402
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public static blacklist copyOf(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 409
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 183
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 194
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static blacklist filter(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 240
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 243
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_2
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_3

    .line 82
    move-object v1, p0

    check-cast v1, Landroid/util/ArraySet;

    .line 83
    .local v1, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 84
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 85
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 86
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 84
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 91
    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 95
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    goto :goto_1

    .line 97
    :cond_5
    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 79
    .end local v0    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_6
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 275
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 276
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 277
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 278
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 276
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public static blacklist find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 289
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 290
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    .line 291
    .local v1, "size":I
    if-nez v1, :cond_1

    return-object v0

    .line 293
    :cond_1
    :try_start_0
    instance-of v2, p0, Landroid/util/ArraySet;

    if-eqz v2, :cond_4

    .line 294
    move-object v2, p0

    check-cast v2, Landroid/util/ArraySet;

    .line 295
    .local v2, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 296
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 297
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 298
    return-object v4

    .line 295
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .end local v3    # "i":I
    :cond_3
    goto :goto_2

    .line 302
    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 303
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    .line 304
    return-object v3

    .line 306
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_5
    goto :goto_1

    .line 310
    :cond_6
    :goto_2
    nop

    .line 311
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "size":I
    :cond_7
    :goto_3
    return-object v0
.end method

.method public static blacklist firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 482
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist firstOrNull(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 475
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/function/BiConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 451
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TK;TV;>;"
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 454
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 455
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 456
    return-void

    .line 459
    :cond_1
    instance-of v1, p0, Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    .line 460
    move-object v1, p0

    check-cast v1, Landroid/util/ArrayMap;

    .line 461
    .local v1, "arrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 462
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "arrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 465
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 466
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_1

    .line 469
    :cond_4
    :goto_2
    return-void

    .line 452
    .end local v0    # "size":I
    :cond_5
    :goto_3
    return-void
.end method

.method public static blacklist forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 425
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<TT;>;"
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 426
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    .line 427
    .local v0, "size":I
    if-nez v0, :cond_1

    return-void

    .line 429
    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_3

    .line 430
    move-object v1, p0

    check-cast v1, Landroid/util/ArraySet;

    .line 431
    .local v1, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 432
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 435
    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 436
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 441
    :cond_4
    :goto_2
    nop

    .line 442
    return-void

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 425
    .end local v0    # "size":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 233
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 122
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TI;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 125
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static blacklist map(Ljava/util/Set;Ljava/util/function/Function;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/Set<",
            "TO;>;"
        }
    .end annotation

    .line 135
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TI;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 137
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TO;>;"
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    .line 138
    move-object v1, p0

    check-cast v1, Landroid/util/ArraySet;

    .line 139
    .local v1, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TI;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 140
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 141
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TI;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 144
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "item":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v2    # "item":Ljava/lang/Object;, "TI;"
    goto :goto_1

    .line 148
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static blacklist mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 164
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TI;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TO;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 167
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "transformed":Ljava/lang/Object;, "TO;"
    if-eqz v2, :cond_1

    .line 169
    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 166
    .end local v2    # "transformed":Ljava/lang/Object;, "TO;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_2
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 380
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    return-object p0
.end method

.method public static blacklist remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 395
    return-object p0
.end method

.method public static blacklist singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 489
    .local p0, "item":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist size(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 212
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist size(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 219
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist toSet(Ljava/util/Collection;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 416
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method
