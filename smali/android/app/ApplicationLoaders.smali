.class public Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationLoaders$CachedClassLoader;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationLoaders"

.field private static final greylist-max-o gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final greylist mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemLibsCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationLoaders$CachedClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 314
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    return-void
.end method

.method private blacklist createAndCacheNonBootclasspathSystemClassLoader(Landroid/content/pm/SharedLibraryInfo;)V
    .locals 16
    .param p1, "lib"    # Landroid/content/pm/SharedLibraryInfo;

    .line 189
    move-object/from16 v12, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v14

    .line 193
    .local v14, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v0, 0x0

    .line 194
    .local v0, "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    if-eqz v14, :cond_2

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 196
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 197
    .local v2, "dependency":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "dependencyPath":Ljava/lang/String;
    iget-object v4, v12, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationLoaders$CachedClassLoader;

    .line 200
    .local v4, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    if-eqz v4, :cond_0

    .line 205
    iget-object v5, v4, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "dependencyPath":Ljava/lang/String;
    .end local v4    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    goto :goto_0

    .line 201
    .restart local v2    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .restart local v3    # "dependencyPath":Ljava/lang/String;
    .restart local v4    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find dependency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of cachedlibrary "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v2    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "dependencyPath":Ljava/lang/String;
    .end local v4    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_1
    move-object v15, v0

    goto :goto_1

    .line 194
    :cond_2
    move-object v15, v0

    .line 210
    .end local v0    # "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    .local v15, "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v9, v15

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 215
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_3

    .line 220
    new-instance v1, Landroid/app/ApplicationLoaders$CachedClassLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ApplicationLoaders$CachedClassLoader;-><init>(Landroid/app/ApplicationLoaders$CachedClassLoader-IA;)V

    .line 221
    .local v1, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    iput-object v0, v1, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    .line 222
    iput-object v15, v1, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created zygote-cached class loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationLoaders"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, v12, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void

    .line 217
    .end local v1    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 24
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "cacheKey"    # Ljava/lang/String;
    .param p8, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 108
    .local p9, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p10, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "sharedLibrariesLoadedAfterApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 110
    .local v14, "baseParent":Ljava/lang/ClassLoader;
    iget-object v15, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v15

    .line 111
    if-nez p6, :cond_0

    .line 112
    move-object v0, v14

    move-object v11, v0

    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v0, "parent":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 111
    .end local v0    # "parent":Ljava/lang/ClassLoader;
    .restart local p6    # "parent":Ljava/lang/ClassLoader;
    :cond_0
    move-object/from16 v11, p6

    .line 120
    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v11, "parent":Ljava/lang/ClassLoader;
    :goto_0
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v10, 0x3

    const-wide/16 v8, 0x40

    if-ne v11, v14, :cond_3

    .line 121
    :try_start_0
    iget-object v2, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v18, v2

    .line 122
    .local v18, "loader":Ljava/lang/ClassLoader;
    if-eqz v18, :cond_1

    .line 123
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v18

    .line 160
    .end local v18    # "loader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v23, v11

    move-object/from16 v11, p5

    goto/16 :goto_1

    .line 126
    .restart local v18    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    :try_start_2
    invoke-static {v8, v9, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v19, v2

    .line 130
    .local v19, "startTime":J
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v11

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v21, v8

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move v0, v10

    move-object/from16 v10, p10

    move-object/from16 v23, v11

    .end local v11    # "parent":Ljava/lang/ClassLoader;
    .local v23, "parent":Ljava/lang/ClassLoader;
    move-object/from16 v11, p11

    :try_start_3
    invoke-static/range {v2 .. v11}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 134
    .local v2, "classloader":Ljava/lang/ClassLoader;
    sget-object v3, Landroid/os/OplusJankMonitorExtPlugin;->setLaunchStageTime:Lcom/oplus/reflect/RefStaticMethod;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v12, v0, v17

    const-string v4, "createClassLoader"

    aput-object v4, v0, v16

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-virtual {v3, v0}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    const-string/jumbo v0, "setLayerPaths"

    move-wide/from16 v8, v21

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :try_start_4
    invoke-virtual {v0, v2, v10, v11}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 143
    if-eqz v13, :cond_2

    .line 144
    iget-object v0, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2
    monitor-exit v15

    return-object v2

    .line 160
    .end local v2    # "classloader":Ljava/lang/ClassLoader;
    .end local v18    # "loader":Ljava/lang/ClassLoader;
    .end local v19    # "startTime":J
    :catchall_1
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    goto :goto_1

    .end local v23    # "parent":Ljava/lang/ClassLoader;
    .restart local v11    # "parent":Ljava/lang/ClassLoader;
    :catchall_2
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v23, v11

    move-object/from16 v11, p5

    .end local v11    # "parent":Ljava/lang/ClassLoader;
    .restart local v23    # "parent":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 149
    .end local v23    # "parent":Ljava/lang/ClassLoader;
    .restart local v11    # "parent":Ljava/lang/ClassLoader;
    :cond_3
    move v0, v10

    move-object/from16 v23, v11

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .end local v11    # "parent":Ljava/lang/ClassLoader;
    .restart local v23    # "parent":Ljava/lang/ClassLoader;
    invoke-static {v8, v9, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide/from16 v18, v2

    .line 153
    .local v18, "startTime":J
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, v23

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 156
    .local v2, "loader":Ljava/lang/ClassLoader;
    sget-object v3, Landroid/os/OplusJankMonitorExtPlugin;->setLaunchStageTime:Lcom/oplus/reflect/RefStaticMethod;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v12, v0, v17

    const-string v4, "createClassLoader"

    aput-object v4, v0, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-virtual {v3, v0}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    monitor-exit v15

    return-object v2

    .line 160
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v18    # "startTime":J
    :catchall_3
    move-exception v0

    :goto_1
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public static greylist getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    .line 45
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method

.method private static blacklist sharedLibrariesEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p0, "lhs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p1, "rhs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    if-nez p0, :cond_1

    .line 230
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 233
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method greylist-max-o addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p2, "libPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_0

    .line 307
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 308
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addNativePath(Ljava/util/Collection;)V

    .line 309
    return-void

    .line 305
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;

    .line 293
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_0

    .line 296
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 297
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    .line 298
    return-void

    .line 294
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createAndCacheNonBootclasspathSystemClassLoaders([Landroid/content/pm/SharedLibraryInfo;)V
    .locals 3
    .param p1, "libs"    # [Landroid/content/pm/SharedLibraryInfo;

    .line 171
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 178
    .local v2, "lib":Landroid/content/pm/SharedLibraryInfo;
    invoke-direct {p0, v2}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoader(Landroid/content/pm/SharedLibraryInfo;)V

    .line 177
    .end local v2    # "lib":Landroid/content/pm/SharedLibraryInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already cached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 12
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;

    .line 282
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCachedNonBootclasspathSystemLib(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 5
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 244
    .local p4, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    return-object v1

    .line 249
    :cond_0
    if-nez p2, :cond_4

    if-eqz p3, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationLoaders$CachedClassLoader;

    .line 254
    .local v0, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    if-nez v0, :cond_2

    .line 255
    return-object v1

    .line 259
    :cond_2
    iget-object v2, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    invoke-static {p4, v2}, Landroid/app/ApplicationLoaders;->sharedLibrariesEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    const-string v3, "ApplicationLoaders"

    if-nez v2, :cond_3

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected environment loading cached library "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (real|cached): ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v1

    .line 265
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning zygote-cached class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v1

    .line 250
    .end local v0    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_4
    :goto_0
    return-object v1
.end method

.method greylist-max-o getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 11
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;

    .line 51
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method blacklist getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 12
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 63
    .local p8, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p9, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "sharedLibrariesLoadedAfterApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method blacklist getSharedLibraryClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 18
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 79
    .local p8, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p9, "sharedLibrariesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/ApplicationLoaders;->getCachedNonBootclasspathSystemLib(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v16

    .line 81
    .local v16, "loader":Ljava/lang/ClassLoader;
    if-eqz v16, :cond_0

    .line 82
    return-object v16

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 90
    .local v10, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ALL"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v10

    move-object/from16 v17, v10

    .end local v10    # "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
