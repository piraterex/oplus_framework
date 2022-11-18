.class Landroid/app/ResourcesManager$UpdateHandler;
.super Ljava/lang/Object;
.source "ResourcesManager.java"

# interfaces
.implements Landroid/content/res/Resources$UpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ResourcesManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ResourcesManager;)V
    .locals 0

    .line 1687
    iput-object p1, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$UpdateHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onLoaderUpdated(Landroid/content/res/loader/ResourcesLoader;)V
    .locals 6
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;

    .line 1724
    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v0}, Landroid/app/ResourcesManager;->-$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1725
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1728
    .local v1, "updatedResourceImplKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v2, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v2}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1729
    iget-object v3, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v3}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 1730
    .local v3, "key":Landroid/content/res/ResourcesKey;
    iget-object v4, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v4}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1731
    .local v4, "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 1732
    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1733
    goto :goto_1

    .line 1736
    :cond_0
    iget-object v5, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v5}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1740
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v2, v1}, Landroid/app/ResourcesManager;->-$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V

    .line 1741
    .end local v1    # "updatedResourceImplKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    monitor-exit v0

    .line 1742
    return-void

    .line 1741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 12
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 1696
    .local p2, "newLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v0}, Landroid/app/ResourcesManager;->-$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1697
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/ResourcesManager;->-$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v1

    .line 1698
    .local v1, "oldKey":Landroid/content/res/ResourcesKey;
    if-eqz v1, :cond_0

    .line 1703
    new-instance v11, Landroid/content/res/ResourcesKey;

    iget-object v3, v1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v5, v1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v6, v1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v7, v1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v8, v1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v9, v1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/res/loader/ResourcesLoader;

    .line 1711
    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Landroid/content/res/loader/ResourcesLoader;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object v2, v11

    .line 1713
    .local v2, "newKey":Landroid/content/res/ResourcesKey;
    iget-object v3, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v3, v2}, Landroid/app/ResourcesManager;->-$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 1714
    .local v3, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1715
    .end local v1    # "oldKey":Landroid/content/res/ResourcesKey;
    .end local v2    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v3    # "impl":Landroid/content/res/ResourcesImpl;
    monitor-exit v0

    .line 1716
    return-void

    .line 1699
    .restart local v1    # "oldKey":Landroid/content/res/ResourcesKey;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot modify resource loaders of ResourcesImpl not registered with ResourcesManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ResourcesManager$UpdateHandler;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "newLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    throw v2

    .line 1715
    .end local v1    # "oldKey":Landroid/content/res/ResourcesKey;
    .restart local p0    # "this":Landroid/app/ResourcesManager$UpdateHandler;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "newLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
