.class public Landroid/common/OplusFeatureCache;
.super Ljava/lang/Object;
.source "OplusFeatureCache.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusFeatureCache"

.field private static blacklist mFeatureCache:[Ljava/lang/Object;

.field private static blacklist sFactoryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/common/IOplusCommonFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->End:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/common/OplusFeatureCache;->sFactoryCache:Ljava/util/List;

    .line 29
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addFactory(Landroid/common/IOplusCommonFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFactory;",
            ">(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "factory":Landroid/common/IOplusCommonFactory;, "TT;"
    if-eqz p0, :cond_0

    .line 75
    sget-object v0, Landroid/common/OplusFeatureCache;->sFactoryCache:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public static whitelist get(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 34
    .local p0, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-static {p0}, Landroid/common/OplusFeatureCache;->getIndex(Landroid/common/IOplusCommonFeature;)I

    move-result v0

    .line 35
    .local v0, "index":I
    sget-object v1, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v2

    invoke-virtual {v2}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Landroid/common/IOplusCommonFeature;

    .line 36
    .local v1, "object":Landroid/common/IOplusCommonFeature;, "TT;"
    if-nez v1, :cond_0

    .line 37
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->getDefault()Landroid/common/IOplusCommonFeature;

    move-result-object v2

    monitor-enter v2

    .line 38
    :try_start_0
    sget-object v3, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Landroid/common/IOplusCommonFeature;

    move-object v1, v3

    .line 39
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 41
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    return-object v2
.end method

.method private static blacklist getIndex(Landroid/common/IOplusCommonFeature;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)I"
        }
    .end annotation

    .line 80
    .local p0, "service":Landroid/common/IOplusCommonFeature;, "TT;"
    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    .line 84
    .local v0, "index":I
    sget-object v1, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 87
    return v0

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    .end local v0    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dummy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs whitelist getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;
    .locals 6
    .param p1, "vars"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 45
    .local p0, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-static {p0}, Landroid/common/OplusFeatureCache;->getIndex(Landroid/common/IOplusCommonFeature;)I

    move-result v0

    .line 46
    .local v0, "index":I
    sget-object v1, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v2

    invoke-virtual {v2}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Landroid/common/IOplusCommonFeature;

    .line 47
    .local v1, "object":Landroid/common/IOplusCommonFeature;, "TT;"
    if-nez v1, :cond_2

    .line 48
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->getDefault()Landroid/common/IOplusCommonFeature;

    move-result-object v2

    monitor-enter v2

    .line 49
    :try_start_0
    sget-object v3, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Landroid/common/IOplusCommonFeature;

    move-object v1, v3

    .line 50
    if-nez v1, :cond_1

    .line 51
    sget-object v3, Landroid/common/OplusFeatureCache;->sFactoryCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/common/IOplusCommonFactory;

    .line 52
    .local v4, "factory":Landroid/common/IOplusCommonFactory;
    invoke-interface {v4, v0}, Landroid/common/IOplusCommonFactory;->isValid(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    invoke-interface {v4, p0, p1}, Landroid/common/IOplusCommonFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v5

    move-object v1, v5

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-static {v1}, Landroid/common/OplusFeatureCache;->set(Landroid/common/IOplusCommonFeature;)V

    .line 56
    monitor-exit v2

    return-object v1

    .line 59
    .end local v4    # "factory":Landroid/common/IOplusCommonFactory;
    :cond_0
    goto :goto_0

    .line 61
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 63
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, p0

    :goto_2
    return-object v2
.end method

.method public static whitelist set(Landroid/common/IOplusCommonFeature;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "impl":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-static {p0}, Landroid/common/OplusFeatureCache;->getIndex(Landroid/common/IOplusCommonFeature;)I

    move-result v0

    .line 68
    .local v0, "index":I
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->getDefault()Landroid/common/IOplusCommonFeature;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v2, Landroid/common/OplusFeatureCache;->mFeatureCache:[Ljava/lang/Object;

    aput-object p0, v2, v0

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
