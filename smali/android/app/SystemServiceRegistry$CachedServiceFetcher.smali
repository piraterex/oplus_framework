.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mCacheIndex:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 1897
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    invoke-static {}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfgetsServiceCacheSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfputsServiceCacheSize(I)V

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    .line 1902
    return-void
.end method


# virtual methods
.method public abstract blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 10
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 1907
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 1908
    .local v0, "cache":[Ljava/lang/Object;
    iget-object v1, p1, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 1909
    .local v1, "gates":[I
    const/4 v2, 0x0

    .line 1911
    .local v2, "interrupted":Z
    const/4 v3, 0x0

    .line 1914
    .local v3, "ret":Ljava/lang/Object;, "TT;"
    :goto_0
    const/4 v4, 0x0

    .line 1915
    .local v4, "doInitialize":Z
    monitor-enter v0

    .line 1917
    :try_start_0
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v6, v0, v5

    .line 1918
    .local v6, "service":Ljava/lang/Object;, "TT;"
    if-eqz v6, :cond_0

    .line 1919
    move-object v3, v6

    .line 1920
    monitor-exit v0

    goto :goto_2

    .line 1929
    :cond_0
    aget v7, v1, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    aget v7, v1, v5

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    .line 1931
    :cond_1
    const/4 v7, 0x0

    aput v7, v1, v5

    .line 1938
    :cond_2
    aget v7, v1, v5

    if-nez v7, :cond_3

    .line 1939
    const/4 v4, 0x1

    .line 1940
    const/4 v7, 0x1

    aput v7, v1, v5

    .line 1942
    .end local v6    # "service":Ljava/lang/Object;, "TT;"
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1944
    if-eqz v4, :cond_5

    .line 1947
    const/4 v5, 0x0

    .line 1948
    .local v5, "service":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x3

    .line 1952
    .local v6, "newState":I
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1953
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .local v7, "service":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x2

    .line 1962
    .end local v6    # "newState":I
    .local v8, "newState":I
    monitor-enter v0

    .line 1963
    :try_start_2
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v7, v0, v5

    .line 1964
    aput v8, v1, v5

    .line 1965
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1966
    monitor-exit v0

    .line 1967
    move-object v5, v7

    goto :goto_1

    .line 1966
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1962
    .end local v7    # "service":Ljava/lang/Object;, "TT;"
    .end local v8    # "newState":I
    .restart local v5    # "service":Ljava/lang/Object;, "TT;"
    .restart local v6    # "newState":I
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 1955
    :catch_0
    move-exception v7

    .line 1956
    .local v7, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_3
    invoke-static {v7}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V

    .line 1959
    invoke-static {}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfgetsStaticExt()Landroid/app/ISystemServiceRegistryExt$IStaticExt;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/app/ISystemServiceRegistryExt$IStaticExt;->checkAppPackageName(I)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1962
    .end local v6    # "newState":I
    .end local v7    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    .restart local v8    # "newState":I
    monitor-enter v0

    .line 1963
    :try_start_4
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v6

    .line 1964
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v8, v1, v6

    .line 1965
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1966
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1967
    nop

    .line 1968
    :goto_1
    move-object v3, v5

    .line 1969
    nop

    .line 1991
    .end local v4    # "doInitialize":Z
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .end local v8    # "newState":I
    :goto_2
    if-eqz v2, :cond_4

    .line 1992
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1994
    :cond_4
    return-object v3

    .line 1966
    .restart local v4    # "doInitialize":Z
    .restart local v5    # "service":Ljava/lang/Object;, "TT;"
    .restart local v8    # "newState":I
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 1962
    .end local v8    # "newState":I
    .restart local v6    # "newState":I
    :goto_3
    monitor-enter v0

    .line 1963
    :try_start_6
    iget v8, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v8

    .line 1964
    aput v6, v1, v8

    .line 1965
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1966
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1967
    throw v7

    .line 1966
    :catchall_3
    move-exception v7

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7

    .line 1973
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .end local v6    # "newState":I
    :cond_5
    monitor-enter v0

    .line 1977
    :goto_4
    :try_start_8
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v5, v1, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ge v5, v8, :cond_6

    .line 1980
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1981
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1987
    :goto_5
    goto :goto_4

    .line 1982
    :catch_1
    move-exception v5

    .line 1985
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v6, "SystemServiceRegistry"

    const-string v7, "getService() interrupted"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v2, 0x1

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_5

    .line 1989
    :cond_6
    monitor-exit v0

    .line 1990
    .end local v4    # "doInitialize":Z
    goto/16 :goto_0

    .line 1989
    .restart local v4    # "doInitialize":Z
    :catchall_4
    move-exception v5

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5

    .line 1942
    :catchall_5
    move-exception v5

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v5
.end method
