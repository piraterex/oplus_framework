.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$UpdateHandler;,
        Landroid/app/ResourcesManager$ActivityResource;,
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ApkAssetsSupplier;,
        Landroid/app/ResourcesManager$ApkKey;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "ResourcesManager"

.field private static greylist-max-o sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final greylist mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApplicationOwnedApks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPendingAppInfoUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final greylist mResConfiguration:Landroid/content/res/Configuration;

.field private blacklist mResDisplayId:I

.field private final greylist mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloadApkAssets(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    .line 258
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 265
    new-instance v0, Landroid/app/ResourcesManager$UpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$UpdateHandler-IA;)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    .line 272
    const-class v0, Landroid/app/IResourcesManagerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IResourcesManagerExt;

    iput-object v0, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    .line 279
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    .line 283
    return-void
.end method

.method private blacklist addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 465
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 466
    if-eqz p2, :cond_0

    .line 467
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_0
    return-void
.end method

.method private blacklist applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "tmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "key"    # Landroid/content/res/ResourcesKey;
    .param p5, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1456
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing resources "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " config to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourcesManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1467
    invoke-virtual {p4}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v0, p4, p1}, Landroid/app/IResourcesManagerExt;->canUseOverlayConfiguration(Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p4, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1475
    :cond_1
    invoke-virtual {p5}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 1476
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_2

    .line 1477
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v0, v1

    .line 1478
    invoke-virtual {v0, p2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1480
    :cond_2
    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1481
    invoke-direct {p0, p4}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1485
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p3, v3, p5, v4}, Landroid/app/IResourcesManagerExt;->updateCustomDarkModeForWechat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p5, p3, v1, p2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1489
    return-void
.end method

.method private static blacklist applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 396
    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 397
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 398
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 399
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 400
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 401
    .local v1, "sl":I
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    .line 402
    const/4 v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 403
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0

    .line 406
    :cond_0
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 407
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 410
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 411
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 412
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 413
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 414
    return-void
.end method

.method private blacklist applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 22
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1547
    const-wide/16 v3, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move v14, v5

    .line 1553
    .local v14, "myUid":I
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v14, :cond_0

    .line 1554
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_0

    .line 1555
    :cond_0
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_0
    move-object v15, v5

    .line 1558
    .local v15, "newSplitDirs":[Ljava/lang/String;
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v13, v5

    .line 1559
    .local v13, "copiedSplitDirs":[Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1562
    .local v8, "copiedResourceDirs":[Ljava/lang/String;
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v14, :cond_1

    .line 1563
    invoke-direct {v1, v0, v13}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1566
    :cond_1
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v5

    .line 1567
    .local v12, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v11, v5

    .line 1568
    .local v11, "implCount":I
    const/4 v5, 0x0

    move v10, v5

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_7

    .line 1569
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    move-object v9, v5

    .line 1570
    .local v9, "key":Landroid/content/res/ResourcesKey;
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v5

    .line 1571
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move-object v7, v5

    .line 1573
    .local v7, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v7, :cond_3

    .line 1574
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_4

    .line 1577
    :cond_3
    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_6

    :try_start_1
    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1578
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    move-object/from16 v6, p1

    :try_start_2
    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto :goto_4

    .line 1578
    :cond_5
    move-object/from16 v6, p1

    goto :goto_3

    .line 1595
    .end local v0    # "baseCodePath":Ljava/lang/String;
    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "i":I
    .end local v11    # "implCount":I
    .end local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v14    # "myUid":I
    .end local v15    # "newSplitDirs":[Ljava/lang/String;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_5

    .line 1577
    .restart local v0    # "baseCodePath":Ljava/lang/String;
    .restart local v7    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v10    # "i":I
    .restart local v11    # "implCount":I
    .restart local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v14    # "myUid":I
    .restart local v15    # "newSplitDirs":[Ljava/lang/String;
    .restart local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_6
    move-object/from16 v6, p1

    .line 1580
    :goto_3
    new-instance v5, Landroid/content/res/ResourcesKey;

    iget-object v3, v9, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v4, v9, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v9, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v12

    .end local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .local v17, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v12, v9, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move/from16 v18, v14

    .end local v14    # "myUid":I
    .local v18, "myUid":I
    iget-object v14, v9, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v19, v5

    move-object v6, v0

    move-object/from16 v20, v0

    move-object v0, v7

    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    .local v20, "baseCodePath":Ljava/lang/String;
    move-object v7, v13

    move-object/from16 v21, v9

    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .local v21, "key":Landroid/content/res/ResourcesKey;
    move-object v9, v3

    move v3, v10

    .end local v10    # "i":I
    .local v3, "i":I
    move v10, v4

    move v4, v11

    .end local v11    # "implCount":I
    .local v4, "implCount":I
    move-object v11, v2

    move-object/from16 v2, v17

    .end local v17    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .local v2, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v17, v13

    .end local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .local v17, "copiedSplitDirs":[Ljava/lang/String;
    move-object v13, v14

    invoke-direct/range {v5 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object/from16 v5, v19

    invoke-virtual {v2, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v21    # "key":Landroid/content/res/ResourcesKey;
    :goto_4
    add-int/lit8 v10, v3, 0x1

    move-object v12, v2

    move v11, v4

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v0, v20

    const-wide/16 v3, 0x2000

    move-object/from16 v2, p2

    .end local v3    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_1

    .end local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    .end local v17    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v18    # "myUid":I
    .end local v20    # "baseCodePath":Ljava/lang/String;
    .local v0, "baseCodePath":Ljava/lang/String;
    .restart local v11    # "implCount":I
    .restart local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v14    # "myUid":I
    :cond_7
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 1593
    .end local v0    # "baseCodePath":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "implCount":I
    .end local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v14    # "myUid":I
    .restart local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v4    # "implCount":I
    .restart local v17    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v18    # "myUid":I
    .restart local v20    # "baseCodePath":Ljava/lang/String;
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1595
    .end local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v15    # "newSplitDirs":[Ljava/lang/String;
    .end local v17    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v18    # "myUid":I
    .end local v20    # "baseCodePath":Ljava/lang/String;
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1596
    nop

    .line 1597
    return-void

    .line 1595
    :catchall_1
    move-exception v0

    :goto_5
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1596
    throw v0
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 984
    .local p0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<TT;>;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 985
    return-void
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TC;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TC;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 992
    .local p0, "referenceContainers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p2, "unwrappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TC;Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 993
    .local v0, "enqueuedRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-nez v0, :cond_0

    .line 994
    return-void

    .line 997
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 998
    .local v1, "deadReferences":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/Reference<+TT;>;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 1002
    :cond_1
    new-instance v2, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/util/HashSet;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 1006
    return-void
.end method

.method private static blacklist combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "resourceDirs"    # [Ljava/lang/String;
    .param p1, "overlayPaths"    # [Ljava/lang/String;

    .line 1614
    if-nez p0, :cond_0

    .line 1615
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1616
    :cond_0
    if-nez p1, :cond_1

    .line 1617
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1619
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1621
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1623
    :cond_2
    array-length v1, p0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 1624
    .restart local v4    # "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1625
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    .end local v4    # "path":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1628
    :cond_4
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static greylist-max-o countLiveReferences(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 603
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x0

    .line 604
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 605
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 606
    .local v3, "value":Ljava/lang/Object;, "TT;"
    :goto_1
    if-eqz v3, :cond_1

    .line 607
    add-int/lit8 v0, v0, 0x1

    .line 609
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 610
    :cond_2
    return v0
.end method

.method private blacklist createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .locals 13
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 1014
    const-wide/16 v0, 0x2000

    const-string v2, "ResourcesManager#createApkAssetsSupplierNotLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1022
    :try_start_0
    new-instance v2, Landroid/app/ResourcesManager$ApkAssetsSupplier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/ResourcesManager$ApkAssetsSupplier;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkAssetsSupplier-IA;)V

    .line 1023
    .local v2, "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1024
    .local v3, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 1025
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ResourcesManager$ApkKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    .local v6, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    :try_start_1
    invoke-virtual {v2, v6}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    goto :goto_1

    .line 1028
    :catch_0
    move-exception v7

    .line 1029
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "ResourcesManager"

    const-string v9, "failed to preload asset path \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v6, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    .end local v6    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1032
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_0
    nop

    .line 1034
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1032
    return-object v2

    .line 1034
    .end local v2    # "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v3    # "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1035
    throw v2
.end method

.method private blacklist createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;
    .locals 10
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 571
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    .line 573
    .local v0, "builder":Landroid/content/res/AssetManager$Builder;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v1

    .line 574
    .local v1, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 575
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ApkKey;

    .line 577
    .local v5, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    nop

    .line 578
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, v5}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v6

    .line 577
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_2

    .line 579
    :catch_0
    move-exception v6

    .line 580
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v7, v5, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    const-string v8, "ResourcesManager"

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 581
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v9, v7, v4

    const-string v4, "failed to add overlay path \'%s\'"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 582
    :cond_1
    iget-boolean v7, v5, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v7, :cond_2

    .line 583
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v9, v7, v4

    const-string v4, "asset path \'%s\' does not exist or contains no resources"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v5    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    .restart local v5    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .restart local v6    # "e":Ljava/io/IOException;
    :cond_2
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v9, v7, v4

    const-string v4, "failed to add asset path \'%s\'"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    const/4 v4, 0x0

    return-object v4

    .line 593
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v5    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v2, :cond_4

    .line 594
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    array-length v3, v2

    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 595
    .local v5, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;

    .line 594
    .end local v5    # "loader":Landroid/content/res/loader/ResourcesLoader;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 599
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1051
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1059
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v1, :cond_0

    .line 1060
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1064
    :cond_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/app/IResourcesManagerExt;->updateCompactWindowConfigToApplicationResourcesImpl(Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;)V

    .line 1066
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, v1, v2}, Landroid/app/ResourcesManager;->createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1067
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p5, "classLoader"    # Ljava/lang/ClassLoader;
    .param p6, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1075
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    invoke-direct {p0, p2, p6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1084
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1085
    monitor-exit v0

    return-object v2

    .line 1090
    :cond_0
    iget-object v3, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    iget-object v4, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v3, v1, v2, v4}, Landroid/app/IResourcesManagerExt;->setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1093
    iget-object v8, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/app/ResourcesManager;->createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1095
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 799
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 801
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v3, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 805
    invoke-virtual {p6}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/res/CompatResources;

    invoke-direct {v1, p4}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 806
    :cond_0
    new-instance v1, Landroid/content/res/Resources;

    invoke-direct {v1, p4}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_0
    nop

    .line 807
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 808
    iget-object v2, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 810
    new-instance v2, Landroid/app/ResourcesManager$ActivityResource;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/ResourcesManager$ActivityResource;-><init>(Landroid/app/ResourcesManager$ActivityResource-IA;)V

    .line 811
    .local v2, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 813
    iget-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 814
    iput-object p3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 815
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    return-object v1
.end method

.method private blacklist createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .locals 5
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 660
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 661
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    .line 662
    const/4 v1, 0x0

    return-object v1

    .line 665
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 666
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 668
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 669
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 670
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v0, v3, v2, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 675
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private blacklist createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 825
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 827
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatResources;

    invoke-direct {v0, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 828
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_0
    nop

    .line 829
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 830
    iget-object v1, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 831
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    return-object v0
.end method

.method private static blacklist extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "key"    # Landroid/content/res/ResourcesKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;"
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 523
    new-instance v1, Landroid/app/ResourcesManager$ApkKey;

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 528
    .local v5, "splitResDir":Ljava/lang/String;
    new-instance v6, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v6, v5, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v5    # "splitResDir":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 532
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 533
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 535
    .local v6, "libDir":Ljava/lang/String;
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 536
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v3, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v6    # "libDir":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 541
    :cond_3
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 542
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 543
    .local v6, "idmapPath":Ljava/lang/String;
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v2, v3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 547
    :cond_4
    return-object v0
.end method

.method private greylist-max-o findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 4
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .line 726
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 727
    .local v0, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 728
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 729
    .local v2, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    return-object v3

    .line 727
    .end local v2    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 1
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 710
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 711
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_0

    .line 712
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    .line 714
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_0
    return-object v0
.end method

.method private blacklist findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "targetActivityToken"    # Landroid/os/IBinder;
    .param p2, "targetKey"    # Landroid/content/res/ResourcesKey;
    .param p3, "targetClassLoader"    # Ljava/lang/ClassLoader;

    .line 774
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 777
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 778
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 779
    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResource;

    .line 780
    .local v4, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 781
    .local v5, "resources":Landroid/content/res/Resources;
    if-nez v5, :cond_0

    goto :goto_1

    .line 782
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 781
    invoke-direct {p0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    .line 784
    .local v3, "key":Landroid/content/res/ResourcesKey;
    :goto_1
    if-eqz v3, :cond_1

    .line 785
    invoke-virtual {v5}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 786
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 787
    return-object v5

    .line 778
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "index":I
    :cond_2
    return-object v3
.end method

.method private greylist-max-o findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 685
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 686
    .local v0, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 687
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    return-object v2

    .line 690
    :cond_1
    return-object v1
.end method

.method private blacklist generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 643
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    .line 644
    .local v0, "hasOverrideConfig":Z
    if-eqz v0, :cond_0

    .line 645
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 646
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_0

    .line 649
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 651
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-object v1
.end method

.method private blacklist generateDisplayId(Landroid/content/res/ResourcesKey;)I
    .locals 2
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 655
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    :goto_0
    return v0
.end method

.method private blacklist getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 372
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 373
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 374
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 375
    iget v2, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 376
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    if-eqz v2, :cond_1

    .line 377
    sget-object v3, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 378
    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 377
    invoke-virtual {v2, v1, v3, p1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 385
    :goto_1
    iget-object v3, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v3, v1}, Landroid/app/IResourcesManagerExt;->hookGetDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 386
    .local v3, "autoLayoutMetrics":Landroid/util/DisplayMetrics;
    if-eqz v3, :cond_2

    .line 387
    return-object v3

    .line 391
    :cond_2
    return-object v1
.end method

.method public static greylist getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .line 287
    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Landroid/app/ResourcesManager;

    invoke-direct {v1}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 291
    :cond_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v0

    return-object v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 763
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 764
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_0

    .line 765
    new-instance v1, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources-IA;)V

    move-object v0, v1

    .line 766
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_0
    return-object v0
.end method

.method static synthetic blacklist lambda$cleanupReferences$1(Ljava/util/function/Function;Ljava/util/HashSet;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "unwrappingFunction"    # Ljava/util/function/Function;
    .param p1, "deadReferences"    # Ljava/util/HashSet;
    .param p2, "refContainer"    # Ljava/lang/Object;

    .line 1003
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1004
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method static synthetic blacklist lambda$createResourcesForActivityLocked$0(Landroid/app/ResourcesManager$ActivityResource;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "r"    # Landroid/app/ResourcesManager$ActivityResource;

    .line 803
    iget-object v0, p0, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private blacklist loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .locals 5
    .param p1, "key"    # Landroid/app/ResourcesManager$ApkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 481
    .local v1, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ApkAssets;

    .line 483
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    monitor-exit v0

    return-object v2

    .line 487
    :cond_0
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v1    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "flags":I
    iget-boolean v1, p1, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v1, :cond_2

    .line 494
    or-int/lit8 v0, v0, 0x2

    .line 496
    :cond_2
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    or-int/lit8 v0, v0, 0x10

    move v1, v0

    goto :goto_0

    .line 496
    :cond_3
    move v1, v0

    .line 499
    .end local v0    # "flags":I
    .local v1, "flags":I
    :goto_0
    iget-boolean v0, p1, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v0, :cond_4

    .line 500
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v2, v0

    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    goto :goto_1

    .line 502
    .end local v0    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_4
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v2, v0

    .line 505
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :goto_1
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 506
    :try_start_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    monitor-exit v3

    .line 509
    return-object v2

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 490
    .end local v1    # "flags":I
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static greylist-max-o overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;
    .locals 19
    .param p1, "activityResource"    # Landroid/app/ResourcesManager$ActivityResource;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 1289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1290
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1291
    return-object v4

    .line 1296
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v5

    .line 1297
    .local v5, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v5, :cond_1

    .line 1298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1299
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1298
    const-string v7, "ResourcesManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-object v4

    .line 1304
    :cond_1
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 1305
    .local v6, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 1306
    invoke-virtual {v6, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1309
    :cond_2
    iget-object v15, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 1310
    .local v15, "overrideDisplayId":Ljava/lang/Integer;
    if-eqz v15, :cond_3

    .line 1311
    new-instance v7, Landroid/view/DisplayAdjustments;

    invoke-direct {v7, v6}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1312
    .local v7, "displayAdjustments":Landroid/view/DisplayAdjustments;
    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v9, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1313
    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, v8}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1315
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 1316
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v8, v6}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1321
    .end local v7    # "displayAdjustments":Landroid/view/DisplayAdjustments;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    :cond_3
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1323
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    move/from16 v16, v7

    .line 1325
    .local v16, "hasOverrideConfig":Z
    if-eqz v16, :cond_5

    .line 1326
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1329
    :cond_5
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    if-eqz v7, :cond_6

    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1330
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1334
    iget-object v7, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1338
    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v12, v4

    goto :goto_1

    :cond_7
    move/from16 v12, p3

    .line 1341
    .end local p3    # "displayId":I
    .local v12, "displayId":I
    :goto_1
    new-instance v4, Landroid/content/res/ResourcesKey;

    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v11, v5, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v14, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v13, v5, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object v7, v4

    move-object/from16 v17, v13

    move-object v13, v6

    move-object/from16 v18, v15

    .end local v15    # "overrideDisplayId":Ljava/lang/Integer;
    .local v18, "overrideDisplayId":Ljava/lang/Integer;
    move-object/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1350
    .local v4, "newKey":Landroid/content/res/ResourcesKey;
    return-object v4
.end method

.method private blacklist rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "overridesActivityDisplay"    # Z

    .line 925
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    nop

    .line 927
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v1

    .line 929
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 930
    iget v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    iput v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 934
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 936
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_0

    .line 938
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_1
    iget-object v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 941
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :goto_0
    if-eqz p3, :cond_3

    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 942
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_3

    .line 943
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-nez v3, :cond_2

    .line 945
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v2, v3

    .line 951
    :cond_2
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 954
    :cond_3
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 955
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "overrideDisplay"    # I

    .line 965
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 967
    .local v0, "temp":Landroid/content/res/Configuration;
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 968
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 970
    invoke-virtual {p0, p2, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 971
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v2, v0}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 973
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 974
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 976
    :cond_0
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 977
    return-void
.end method

.method private greylist-max-o redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1635
    .local p1, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1641
    .local v0, "resourcesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string v2, "failed to redirect ResourcesImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v1, v0, :cond_4

    .line 1642
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1643
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 1644
    .local v4, "r":Landroid/content/res/Resources;
    :cond_1
    if-eqz v4, :cond_3

    .line 1645
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1646
    .local v6, "key":Landroid/content/res/ResourcesKey;
    if-eqz v6, :cond_3

    .line 1647
    invoke-direct {p0, v6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v7

    .line 1650
    .local v7, "impl":Landroid/content/res/ResourcesImpl;
    iget-object v8, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v8, v4, v7, v3}, Landroid/app/IResourcesManagerExt;->redirectResourcesToNewImplLocked(Landroid/content/res/Resources;Landroid/content/res/ResourcesImpl;Z)V

    .line 1652
    if-eqz v7, :cond_2

    .line 1655
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_1

    .line 1653
    :cond_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v3, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1641
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1661
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ActivityResources;

    .line 1662
    .local v5, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v6, v5, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1663
    .local v6, "resCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_8

    .line 1664
    iget-object v8, v5, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1665
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ResourcesManager$ActivityResource;

    .line 1666
    .local v8, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v8, :cond_5

    .line 1667
    iget-object v9, v8, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    goto :goto_4

    :cond_5
    move-object v9, v4

    .line 1668
    .local v9, "r":Landroid/content/res/Resources;
    :goto_4
    if-eqz v9, :cond_7

    .line 1669
    invoke-virtual {v9}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/ResourcesKey;

    .line 1670
    .local v10, "key":Landroid/content/res/ResourcesKey;
    if-eqz v10, :cond_7

    .line 1671
    invoke-direct {p0, v10}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v11

    .line 1674
    .local v11, "impl":Landroid/content/res/ResourcesImpl;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v12, v9, v11, v3}, Landroid/app/IResourcesManagerExt;->redirectResourcesToNewImplLocked(Landroid/content/res/Resources;Landroid/content/res/ResourcesImpl;Z)V

    .line 1676
    if-eqz v11, :cond_6

    .line 1680
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_5

    .line 1677
    :cond_6
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1663
    .end local v8    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .end local v11    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1684
    .end local v5    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v6    # "resCount":I
    .end local v7    # "i":I
    :cond_8
    goto :goto_2

    .line 1685
    :cond_9
    return-void
.end method


# virtual methods
.method public greylist appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    .line 1499
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1500
    return-void
.end method

.method public blacklist appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 24
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAssets"    # [Ljava/lang/String;

    .line 1509
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1512
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1514
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1515
    .local v4, "implCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 1516
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1517
    .local v6, "key":Landroid/content/res/ResourcesKey;
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1518
    .local v7, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 1519
    .local v8, "impl":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v8, :cond_3

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p1

    :try_start_1
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1520
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 1521
    .local v9, "newLibAssets":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1

    aget-object v13, v2, v12

    .line 1522
    .local v13, "libAsset":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    .line 1523
    invoke-static {v14, v9, v13}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v9, v14

    .line 1521
    .end local v13    # "libAsset":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1526
    :cond_1
    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1527
    new-instance v11, Landroid/content/res/ResourcesKey;

    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget v13, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move/from16 v22, v4

    .end local v4    # "implCount":I
    .local v22, "implCount":I
    iget-object v4, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v23, v7

    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .local v23, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    iget-object v7, v6, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move/from16 v18, v13

    move-object v13, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    invoke-direct/range {v13 .. v21}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    invoke-virtual {v0, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1526
    .end local v22    # "implCount":I
    .end local v23    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "implCount":I
    .restart local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_2
    move/from16 v22, v4

    move-object/from16 v23, v7

    .end local v4    # "implCount":I
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v22    # "implCount":I
    .restart local v23    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    goto :goto_3

    .line 1519
    .end local v9    # "newLibAssets":[Ljava/lang/String;
    .end local v22    # "implCount":I
    .end local v23    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "implCount":I
    .restart local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_3
    move-object/from16 v10, p1

    :cond_4
    move/from16 v22, v4

    move-object/from16 v23, v7

    .line 1515
    .end local v4    # "implCount":I
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v8    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v22    # "implCount":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v22

    goto :goto_0

    .end local v22    # "implCount":I
    .restart local v4    # "implCount":I
    :cond_5
    move-object/from16 v10, p1

    move/from16 v22, v4

    .line 1540
    .end local v4    # "implCount":I
    .end local v5    # "i":I
    .restart local v22    # "implCount":I
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1541
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v22    # "implCount":I
    monitor-exit v3

    .line 1542
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public blacklist appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1355
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1362
    :cond_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1363
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1364
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1362
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1367
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    monitor-exit v0

    .line 1369
    return-void

    .line 1368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final blacklist applyAllPendingAppInfoUpdates()V
    .locals 6

    .line 1372
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1374
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1375
    iget-object v3, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1376
    .local v3, "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v4, v5}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1374
    .end local v3    # "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1380
    :cond_1
    monitor-exit v0

    .line 1381
    return-void

    .line 1380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .line 418
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 421
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 423
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final blacklist applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 18
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 1385
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v10, v7, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1387
    const-wide/16 v11, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#applyConfigurationToResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1390
    iget-object v0, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_1

    if-nez v9, :cond_1

    .line 1391
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    .line 1392
    const-string v0, "ResourcesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping new config: curSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :cond_0
    nop

    .line 1448
    :try_start_1
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1395
    return v13

    .line 1398
    :cond_1
    :try_start_2
    iget-object v0, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1399
    .local v0, "changes":I
    if-eqz v9, :cond_3

    iget-object v1, v7, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_2

    .line 1400
    invoke-virtual {v1, v9}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1401
    :cond_2
    iput-object v9, v7, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1402
    or-int/lit16 v0, v0, 0xd00

    .line 1408
    :cond_3
    const-string v1, "com.tencent.mm"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    if-nez v9, :cond_5

    .line 1409
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_4

    .line 1410
    const-string v1, "ResourcesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping new config for mm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1412
    :cond_4
    nop

    .line 1448
    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1412
    return v13

    .line 1418
    :cond_5
    :try_start_4
    iget-object v1, v7, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v1, v8, v0}, Landroid/app/IResourcesManagerExt;->applyConfigurationToResources(Landroid/content/res/Configuration;I)V

    .line 1424
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1428
    :cond_6
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;

    move-result-object v1

    move-object v14, v1

    .line 1429
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v8, v14, v9}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1431
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 1433
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1435
    .local v4, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_9

    .line 1436
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1437
    .local v5, "key":Landroid/content/res/ResourcesKey;
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v1

    .line 1438
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v17, v1

    .line 1439
    .local v17, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v17, :cond_8

    .line 1440
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v13, v6

    .end local v6    # "i":I
    .local v13, "i":I
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V

    goto :goto_2

    .line 1442
    .end local v13    # "i":I
    .restart local v6    # "i":I
    :cond_8
    move v13, v6

    .end local v6    # "i":I
    .restart local v13    # "i":I
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1435
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v17    # "r":Landroid/content/res/ResourcesImpl;
    :goto_2
    add-int/lit8 v6, v13, -0x1

    const/4 v13, 0x0

    .end local v13    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    :cond_9
    move v13, v6

    .line 1446
    .end local v6    # "i":I
    if-eqz v0, :cond_a

    move v13, v15

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    .line 1448
    :goto_3
    :try_start_5
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10

    .line 1446
    return v13

    .line 1448
    .end local v0    # "changes":I
    .end local v4    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v14    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1449
    nop

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    throw v0

    .line 1450
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method protected greylist createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    .line 873
    const-wide/16 v11, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#createBaseActivityResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 875
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 878
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 883
    if-nez v10, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_0

    :goto_1
    move-object v13, v0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    invoke-direct/range {v13 .. v21}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object v13, v0

    .line 884
    .local v13, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_1

    move-object/from16 v0, p10

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_2
    move-object v14, v0

    .line 891
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v14, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    iget-object v1, v8, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 893
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 894
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 897
    move/from16 v15, p7

    move-object/from16 v7, p8

    :try_start_3
    invoke-virtual {v8, v9, v7, v15}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 899
    iget-object v1, v8, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 900
    :try_start_4
    invoke-direct {v8, v9, v13, v14}, Landroid/app/ResourcesManager;->findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    .line 902
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    .line 903
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 912
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 903
    return-object v0

    .line 905
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 908
    :try_start_6
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v6, v14

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 912
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 908
    return-object v0

    .line 905
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 894
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :catchall_1
    move-exception v0

    move/from16 v15, p7

    :goto_3
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 912
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 894
    .restart local v13    # "key":Landroid/content/res/ResourcesKey;
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 912
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    :catchall_4
    move-exception v0

    move/from16 v15, p7

    goto :goto_4

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_5
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v14, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    :goto_4
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 913
    throw v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 617
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 619
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 620
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "i":I
    :cond_0
    const-string v2, "ResourcesManager:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 625
    const-string/jumbo v2, "total apks: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 628
    const-string/jumbo v2, "resources: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    .line 631
    .local v2, "references":I
    iget-object v3, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResources;

    .line 632
    .local v4, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-virtual {v4}, Landroid/app/ResourcesManager$ActivityResources;->countLiveReferences()I

    move-result v5

    add-int/2addr v2, v5

    .line 633
    .end local v4    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_1

    .line 634
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 636
    const-string/jumbo v3, "resource impls: "

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 638
    .end local v1    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "references":I
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 435
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 437
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_0

    .line 439
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 441
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 442
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .line 330
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    monitor-exit v0

    return-object v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 337
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    .line 345
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 346
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 347
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 349
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v2, v1, p2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 357
    :goto_1
    iget-object v3, p0, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v3, v1}, Landroid/app/IResourcesManagerExt;->hookGetDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 358
    .local v3, "autoLayoutMetrics":Landroid/util/DisplayMetrics;
    if-eqz v3, :cond_2

    .line 359
    return-object v3

    .line 363
    :cond_2
    return-object v1
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .locals 22
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    .line 1143
    const-wide/16 v11, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#getResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1144
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 1147
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1149
    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move/from16 v18, v1

    .line 1152
    const/4 v1, 0x0

    if-nez v10, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v21, v2

    goto :goto_2

    :cond_1
    new-array v2, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_1

    :goto_2
    move-object v13, v0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p6

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    invoke-direct/range {v13 .. v21}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1153
    .local v0, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_2

    move-object/from16 v2, p10

    goto :goto_3

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_3
    move-object v13, v2

    .line 1157
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v13, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    invoke-direct {v8, v0}, Landroid/app/ResourcesManager;->createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;

    move-result-object v2

    move-object v14, v2

    .line 1159
    .local v14, "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    if-eqz p7, :cond_3

    .line 1160
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v8, v0, v2}, Landroid/app/ResourcesManager;->rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V

    .line 1164
    :cond_3
    if-eqz v9, :cond_5

    .line 1165
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v4, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1166
    .local v4, "initialOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p7, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-direct {v8, v9, v0, v1}, Landroid/app/ResourcesManager;->rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V

    .line 1167
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v5, p7

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1169
    .end local v4    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .local v1, "resources":Landroid/content/res/Resources;
    goto :goto_4

    .line 1170
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_5
    invoke-direct {v8, v0, v13, v14}, Landroid/app/ResourcesManager;->createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :goto_4
    nop

    .line 1174
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1172
    return-object v1

    .line 1174
    .end local v0    # "key":Landroid/content/res/ResourcesKey;
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v14    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v13    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v0

    move-object/from16 v13, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v13    # "classLoader":Ljava/lang/ClassLoader;
    :goto_5
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1175
    throw v0
.end method

.method public blacklist initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 450
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 454
    :cond_0
    monitor-exit v0

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o invalidatePath(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, "count":I
    :try_start_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 305
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 306
    .local v3, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v3, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    .line 308
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {v4}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 304
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    :cond_2
    const-string v2, "ResourcesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalidated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asset managers that referenced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 318
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ApkKey;

    .line 319
    .local v3, "key":Landroid/app/ResourcesManager$ApkKey;
    iget-object v4, v3, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 321
    .local v4, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 322
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ApkAssets;

    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->close()V

    .line 317
    .end local v3    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v4    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 326
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 745
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 747
    :cond_0
    const/4 v1, 0x0

    .line 748
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 749
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    .line 753
    :cond_2
    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 755
    invoke-virtual {p2, v4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    monitor-exit v0

    .line 753
    return v2

    .line 758
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1191
    const-wide/16 v4, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1193
    const/4 v0, -0x1

    if-eq v3, v0, :cond_7

    .line 1196
    iget-object v6, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1197
    nop

    .line 1198
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 1200
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    const/4 v8, 0x0

    if-eq v7, v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v8

    .line 1201
    .local v7, "movedToDifferentDisplay":Z
    :goto_0
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v9, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v7, :cond_1

    .line 1204
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1204
    return-void

    .line 1209
    :cond_1
    :try_start_2
    new-instance v9, Landroid/content/res/Configuration;

    iget-object v10, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1212
    .local v9, "oldConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 1213
    iget-object v10, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 1215
    :cond_2
    iget-object v10, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->unset()V

    .line 1219
    :goto_1
    iput v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    .line 1224
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1240
    iget-object v10, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1241
    .local v10, "refCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v10, :cond_6

    .line 1242
    iget-object v12, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1243
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ResourcesManager$ActivityResource;

    .line 1245
    .local v12, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v13, v12, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Resources;

    .line 1246
    .local v13, "resources":Landroid/content/res/Resources;
    if-nez v13, :cond_3

    .line 1247
    goto :goto_3

    .line 1250
    :cond_3
    invoke-direct {v1, v12, v2, v3}, Landroid/app/ResourcesManager;->rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;

    move-result-object v14

    .line 1252
    .local v14, "newKey":Landroid/content/res/ResourcesKey;
    if-nez v14, :cond_4

    .line 1253
    goto :goto_3

    .line 1258
    :cond_4
    nop

    .line 1259
    invoke-direct {v1, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v15

    .line 1262
    .local v15, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    iget-object v4, v1, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-interface {v4, v13, v15, v8}, Landroid/app/IResourcesManagerExt;->redirectResourcesToNewImplLocked(Landroid/content/res/Resources;Landroid/content/res/ResourcesImpl;Z)V

    .line 1267
    iget-object v4, v1, Landroid/app/ResourcesManager;->mIResourcesManagerExt:Landroid/app/IResourcesManagerExt;

    invoke-virtual {v13}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-interface {v4, v5, v9, v2}, Landroid/app/IResourcesManagerExt;->setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1270
    if-eqz v15, :cond_5

    invoke-virtual {v13}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-eq v15, v4, :cond_5

    .line 1273
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1241
    .end local v12    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v15    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v4, 0x2000

    goto :goto_2

    .line 1276
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v7    # "movedToDifferentDisplay":Z
    .end local v9    # "oldConfig":Landroid/content/res/Configuration;
    .end local v10    # "refCount":I
    .end local v11    # "i":I
    :cond_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1278
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    nop

    .line 1280
    return-void

    .line 1276
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    :try_start_4
    throw v0

    .line 1194
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayId can not be INVALID_DISPLAY"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1278
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :catchall_1
    move-exception v0

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    throw v0
.end method
