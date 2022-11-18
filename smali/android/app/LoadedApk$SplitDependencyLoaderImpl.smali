.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final greylist-max-o mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 657
    .local p2, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 658
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 659
    invoke-static {p1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 660
    invoke-static {p1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 661
    return-void
.end method

.method private greylist-max-o ensureSplitLoaded(Ljava/lang/String;)I
    .locals 4
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "idx":I
    if-eqz p1, :cond_1

    .line 705
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 706
    if-ltz v0, :cond_0

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->loadDependenciesForSplit(I)V

    .line 713
    return v0
.end method


# virtual methods
.method protected greylist-max-o constructSplit(I[II)V
    .locals 15
    .param p1, "splitIdx"    # I
    .param p2, "configSplitIndices"    # [I
    .param p3, "parentSplitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 673
    move-object v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 674
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v0, "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 676
    iget-object v5, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/app/LoadedApk;->-$$Nest$mcreateOrUpdateClassLoaderLocked(Landroid/app/LoadedApk;Ljava/util/List;)V

    .line 677
    iget-object v5, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    iget-object v6, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v6}, Landroid/app/LoadedApk;->-$$Nest$fgetmClassLoader(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    move-result-object v6

    aput-object v6, v5, v4

    .line 680
    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v2, v6

    .line 681
    .local v7, "configSplitIdx":I
    iget-object v8, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v8}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    nop

    .end local v7    # "configSplitIdx":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 683
    :cond_0
    iget-object v5, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aput-object v6, v5, v4

    .line 684
    monitor-exit v3

    return-void

    .line 688
    :cond_1
    iget-object v5, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v12, v5, p3

    .line 689
    .local v12, "parent":Ljava/lang/ClassLoader;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v6

    iget-object v7, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v7}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitAppDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget-object v8, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 690
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v13, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v13}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitClassLoaderNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, p1, -0x1

    aget-object v13, v13, v14

    .line 689
    invoke-virtual/range {v6 .. v13}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    aput-object v6, v5, p1

    .line 693
    iget-object v5, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v0, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 694
    iget-object v5, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_2

    aget v6, v2, v4

    .line 696
    .local v6, "configSplitIdx":I
    iget-object v7, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v7}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    nop

    .end local v6    # "configSplitIdx":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 698
    :cond_2
    iget-object v4, v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aput-object v5, v4, p1

    .line 699
    .end local v0    # "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "parent":Ljava/lang/ClassLoader;
    monitor-exit v3

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 717
    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v0

    .line 718
    .local v0, "idx":I
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 719
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v2, v2, v0

    monitor-exit v1

    return-object v2

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method greylist-max-o getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 724
    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v0

    .line 725
    .local v0, "idx":I
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v2, v2, v0

    monitor-exit v1

    return-object v2

    .line 727
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected greylist-max-o isSplitCached(I)Z
    .locals 2
    .param p1, "splitIdx"    # I

    .line 665
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
