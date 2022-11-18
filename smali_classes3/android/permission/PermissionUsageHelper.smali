.class public Landroid/permission/PermissionUsageHelper;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionUsageHelper$AccessChainLink;,
        Landroid/permission/PermissionUsageHelper$OpUsage;
    }
.end annotation


# static fields
.field private static final blacklist CAMERA_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_RECENT_TIME_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_RUNNING_TIME_MS:J = 0x1388L

.field private static final blacklist LOCATION_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIC_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PROPERTY_CAMERA_MIC_ICONS_ENABLED:Ljava/lang/String; = "camera_mic_icons_enabled"

.field private static final blacklist PROPERTY_LOCATION_INDICATORS_ENABLED:Ljava/lang/String; = "location_indicators_enabled"

.field private static final blacklist PROPERTY_PERMISSIONS_HUB_2_ENABLED:Ljava/lang/String; = "permissions_hub_2_enabled"

.field private static final blacklist RECENT_ACCESS_TIME_MS:Ljava/lang/String; = "recent_access_time_ms"

.field private static final blacklist RUNNING_ACCESS_TIME_MS:Ljava/lang/String; = "running_access_time_ms"

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"


# instance fields
.field private blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionUsageHelper$AccessChainLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPkgManager:Landroid/content/pm/PackageManager;

.field private blacklist mUserContexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 134
    const-string v0, "android:coarse_location"

    const-string v1, "android:fine_location"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    .line 139
    const-string v0, "android:phone_call_microphone"

    const-string v1, "android:receive_ambient_trigger_audio"

    const-string v2, "android:record_audio"

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    .line 145
    const-string v0, "android:phone_call_camera"

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 182
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 184
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    .line 186
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "android:camera"

    const-string v1, "android:record_audio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "opStrs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 190
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 191
    .local v1, "ops":[I
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 192
    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x1b
    .end array-data
.end method

.method private blacklist addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 8
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "attributionFlags"    # I
    .param p6, "attributionChainId"    # I

    .line 270
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 271
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 272
    .local v0, "currentChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    new-instance v7, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionUsageHelper$AccessChainLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 275
    .local v1, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 280
    .local v2, "currSize":I
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 286
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 283
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 545
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getGroupForOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "op"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "android:camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "android:phone_call_camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "android:record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "android:receive_ambient_trigger_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "android:phone_call_microphone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "android:fine_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "android:coarse_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown app op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_0
    const-string v0, "android.permission-group.LOCATION"

    return-object v0

    .line 159
    :pswitch_1
    return-object p0

    .line 156
    :pswitch_2
    const-string v0, "android.permission-group.CAMERA"

    return-object v0

    .line 154
    :pswitch_3
    const-string v0, "android.permission-group.MICROPHONE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x639fe5c6 -> :sswitch_6
        -0xc86dd31 -> :sswitch_5
        0x8da560f -> :sswitch_4
        0x268c0901 -> :sswitch_3
        0x47019993 -> :sswitch_2
        0x52e1ba8a -> :sswitch_1
        0x5b14ae90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getOpUsages(Ljava/util/List;)Ljava/util/Map;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;>;"
        }
    .end annotation

    .line 460
    .local p1, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    nop

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 467
    .local v4, "now":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Landroid/permission/PermissionUsageHelper;->getRecentThreshold(Ljava/lang/Long;)J

    move-result-wide v6

    .line 468
    .local v6, "recentThreshold":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Landroid/permission/PermissionUsageHelper;->getRunningThreshold(Ljava/lang/Long;)J

    move-result-wide v8

    .line 469
    .local v8, "runningThreshold":J
    const/16 v2, 0xd

    .line 470
    .local v2, "opFlags":I
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 472
    .local v10, "usages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 473
    .local v11, "numPkgOps":I
    const/4 v12, 0x0

    .local v12, "pkgOpNum":I
    :goto_0
    if-ge v12, v11, :cond_a

    .line 474
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$PackageOps;

    .line 475
    .local v13, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v23

    .line 476
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v24

    .line 477
    .local v24, "user":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 479
    .local v25, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 480
    .local v15, "numOpEntries":I
    const/4 v14, 0x0

    .local v14, "opEntryNum":I
    :goto_1
    if-ge v14, v15, :cond_9

    .line 481
    move-object/from16 v26, v0

    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v26, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 482
    .local v0, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v36

    .line 483
    .local v36, "op":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 487
    .local v1, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 488
    .local v3, "numAttrEntries":I
    const/16 v16, 0x0

    move/from16 v37, v11

    move/from16 v11, v16

    .local v11, "attrOpEntryNum":I
    .local v37, "numPkgOps":I
    :goto_2
    if-ge v11, v3, :cond_8

    .line 489
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v38, v1

    .end local v1    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v38, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 490
    .local v1, "attributionTag":Ljava/lang/String;
    nop

    .line 491
    move/from16 v39, v3

    .end local v3    # "numAttrEntries":I
    .local v39, "numAttrEntries":I
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 493
    .local v3, "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v3, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v16

    .line 494
    .local v16, "lastAccessTime":J
    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 495
    move-wide/from16 v16, v4

    move-wide/from16 v40, v16

    goto :goto_3

    .line 494
    :cond_0
    move-wide/from16 v40, v16

    .line 498
    .end local v16    # "lastAccessTime":J
    .local v40, "lastAccessTime":J
    :goto_3
    cmp-long v16, v40, v6

    if-gez v16, :cond_1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v16

    if-nez v16, :cond_1

    .line 499
    move-object/from16 v28, v0

    move/from16 v17, v2

    move-wide/from16 v21, v4

    move/from16 v30, v14

    move/from16 v31, v15

    goto/16 :goto_7

    .line 502
    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v16

    if-nez v16, :cond_3

    cmp-long v16, v40, v8

    if-ltz v16, :cond_2

    goto :goto_4

    :cond_2
    const/16 v16, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    const/16 v16, 0x1

    :goto_5
    move/from16 v34, v16

    .line 505
    .local v34, "isRunning":Z
    const/16 v16, 0x0

    .line 506
    .local v16, "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v3, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v42

    .line 507
    .local v42, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v42, :cond_4

    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 508
    new-instance v17, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v29

    .line 509
    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v31

    const/16 v35, 0x0

    move-object/from16 v27, v17

    move-object/from16 v30, v36

    move-wide/from16 v32, v40

    invoke-direct/range {v27 .. v35}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    move-object/from16 v16, v17

    move-object/from16 v27, v16

    goto :goto_6

    .line 512
    :cond_4
    move-object/from16 v27, v16

    .end local v16    # "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v27, "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :goto_6
    move-object/from16 v28, v0

    .end local v0    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .local v28, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-static/range {v36 .. v36}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "permGroupName":Ljava/lang/String;
    new-instance v29, Landroid/permission/PermissionUsageHelper$OpUsage;

    move/from16 v30, v14

    .end local v14    # "opEntryNum":I
    .local v30, "opEntryNum":I
    move-object/from16 v14, v29

    move/from16 v31, v15

    .end local v15    # "numOpEntries":I
    .local v31, "numOpEntries":I
    move-object/from16 v15, v25

    move-object/from16 v16, v1

    move-object/from16 v17, v36

    move/from16 v18, v23

    move-wide/from16 v19, v40

    move/from16 v21, v34

    move-object/from16 v22, v27

    invoke-direct/range {v14 .. v22}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    .line 516
    .local v14, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 517
    .local v15, "packageAttr":Ljava/lang/Integer;
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 518
    new-instance v16, Landroid/util/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v17, v16

    .line 519
    .local v17, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move-object/from16 v16, v1

    move-object/from16 v1, v17

    .end local v17    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v16, "attributionTag":Ljava/lang/String;
    invoke-virtual {v1, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move/from16 v17, v2

    move-wide/from16 v21, v4

    goto :goto_7

    .line 522
    .end local v16    # "attributionTag":Ljava/lang/String;
    .local v1, "attributionTag":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v1

    .line 523
    .end local v1    # "attributionTag":Ljava/lang/String;
    .restart local v16    # "attributionTag":Ljava/lang/String;
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 524
    .local v1, "permGroupUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 525
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v2

    move-wide/from16 v21, v4

    goto :goto_7

    .line 526
    :cond_6
    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "opFlags":I
    .end local v3    # "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v17, "opFlags":I
    .local v18, "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    iget-wide v2, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 527
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v0

    .end local v0    # "permGroupName":Ljava/lang/String;
    .local v20, "permGroupName":Ljava/lang/String;
    move-object/from16 v0, v19

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-wide/from16 v21, v4

    .end local v4    # "now":J
    .local v21, "now":J
    iget-wide v4, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 528
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v1    # "permGroupUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v14    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v15    # "packageAttr":Ljava/lang/Integer;
    .end local v16    # "attributionTag":Ljava/lang/String;
    .end local v18    # "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v20    # "permGroupName":Ljava/lang/String;
    .end local v27    # "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v34    # "isRunning":Z
    .end local v40    # "lastAccessTime":J
    .end local v42    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_7
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    move-wide/from16 v4, v21

    move-object/from16 v0, v28

    move/from16 v14, v30

    move/from16 v15, v31

    move-object/from16 v1, v38

    move/from16 v3, v39

    goto/16 :goto_2

    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v28    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v30    # "opEntryNum":I
    .end local v31    # "numOpEntries":I
    .end local v38    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "numAttrEntries":I
    .local v0, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .local v1, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "opFlags":I
    .local v3, "numAttrEntries":I
    .restart local v4    # "now":J
    .local v14, "opEntryNum":I
    .local v15, "numOpEntries":I
    :cond_8
    move-object/from16 v28, v0

    move-object/from16 v38, v1

    move/from16 v17, v2

    move/from16 v39, v3

    move-wide/from16 v21, v4

    move/from16 v30, v14

    move/from16 v31, v15

    .line 480
    .end local v0    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v1    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "opFlags":I
    .end local v3    # "numAttrEntries":I
    .end local v4    # "now":J
    .end local v11    # "attrOpEntryNum":I
    .end local v14    # "opEntryNum":I
    .end local v15    # "numOpEntries":I
    .end local v36    # "op":Ljava/lang/String;
    .restart local v17    # "opFlags":I
    .restart local v21    # "now":J
    .restart local v30    # "opEntryNum":I
    .restart local v31    # "numOpEntries":I
    add-int/lit8 v14, v30, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, v26

    move/from16 v11, v37

    .end local v30    # "opEntryNum":I
    .restart local v14    # "opEntryNum":I
    goto/16 :goto_1

    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "numOpEntries":I
    .end local v37    # "numPkgOps":I
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v2    # "opFlags":I
    .restart local v4    # "now":J
    .local v11, "numPkgOps":I
    .restart local v15    # "numOpEntries":I
    :cond_9
    move-object/from16 v26, v0

    move/from16 v17, v2

    move-wide/from16 v21, v4

    move/from16 v37, v11

    move/from16 v30, v14

    move/from16 v31, v15

    .line 473
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "opFlags":I
    .end local v4    # "now":J
    .end local v11    # "numPkgOps":I
    .end local v13    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v14    # "opEntryNum":I
    .end local v15    # "numOpEntries":I
    .end local v23    # "uid":I
    .end local v24    # "user":Landroid/os/UserHandle;
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v17    # "opFlags":I
    .restart local v21    # "now":J
    .restart local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v37    # "numPkgOps":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    goto/16 :goto_0

    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v37    # "numPkgOps":I
    .restart local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v2    # "opFlags":I
    .restart local v4    # "now":J
    .restart local v11    # "numPkgOps":I
    :cond_a
    move-object/from16 v26, v0

    move/from16 v17, v2

    move-wide/from16 v21, v4

    move/from16 v37, v11

    .line 535
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "opFlags":I
    .end local v4    # "now":J
    .end local v11    # "numPkgOps":I
    .end local v12    # "pkgOpNum":I
    .restart local v17    # "opFlags":I
    .restart local v21    # "now":J
    .restart local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v37    # "numPkgOps":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 536
    .local v0, "flattenedUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 537
    .local v1, "permGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 538
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, "permGroupName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .end local v3    # "permGroupName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 541
    .end local v2    # "i":I
    :cond_b
    return-object v0

    .line 461
    .end local v0    # "flattenedUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v1    # "permGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "recentThreshold":J
    .end local v8    # "runningThreshold":J
    .end local v10    # "usages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v37    # "numPkgOps":I
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getRecentThreshold(Ljava/lang/Long;)J
    .locals 6
    .param p0, "now"    # Ljava/lang/Long;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "privacy"

    const-string/jumbo v3, "recent_access_time_ms"

    const-wide/16 v4, 0x3a98

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getRunningThreshold(Ljava/lang/Long;)J
    .locals 6
    .param p0, "now"    # Ljava/lang/Long;

    .line 130
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "privacy"

    const-string/jumbo v3, "running_access_time_ms"

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 393
    .local v0, "attributionLabelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 395
    .local v1, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionUsageHelper;->isSubattributionSupported(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    return-object v0

    .line 398
    :cond_0
    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 399
    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, -0x7ffff000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 402
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 403
    .local v4, "pkgContext":Landroid/content/Context;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v8, v6, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    .local v8, "attribution":Landroid/content/pm/Attribution;
    :try_start_1
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getLabel()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, "resourceForLabel":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    nop

    .end local v9    # "resourceForLabel":Ljava/lang/String;
    goto :goto_1

    .line 407
    :catch_0
    move-exception v9

    .line 403
    .end local v8    # "attribution":Landroid/content/pm/Attribution;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgContext":Landroid/content/Context;
    :cond_1
    goto :goto_2

    .line 411
    :catch_1
    move-exception v2

    .line 414
    :goto_2
    return-object v0
.end method

.method private blacklist getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 19
    .param p1, "permGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 550
    .local p2, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 552
    .local v4, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    if-eqz v3, :cond_1e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v10, v4

    goto/16 :goto_12

    .line 556
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 558
    .local v5, "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v0

    .line 560
    .local v6, "mostRecentUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 562
    .local v7, "proxyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 564
    .local v8, "proxyLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 566
    .local v9, "proxies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 567
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 568
    .local v10, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v11, :cond_1

    .line 570
    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .end local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "usageNum":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_8

    .line 576
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 577
    .restart local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    if-nez v10, :cond_3

    .line 578
    move-object/from16 v16, v4

    goto :goto_3

    .line 581
    :cond_3
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    .line 584
    .local v11, "usageAttr":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_4

    const-string v12, "android.permission-group.MICROPHONE"

    .line 585
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 586
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_4
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 592
    .local v12, "usageId":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 593
    .local v13, "lastMostRecent":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v13, :cond_5

    iget-wide v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move-object/from16 v16, v4

    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v16, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    iget-wide v3, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v3, v14, v3

    if-lez v3, :cond_7

    goto :goto_2

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_5
    move-object/from16 v16, v4

    .line 595
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 593
    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_6
    move-object/from16 v16, v4

    .line 575
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v11    # "usageAttr":I
    .end local v12    # "usageId":I
    .end local v13    # "lastMostRecent":Landroid/permission/PermissionUsageHelper$OpUsage;
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    goto :goto_1

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_8
    move-object/from16 v16, v4

    .line 600
    .end local v0    # "usageNum":I
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    move v3, v0

    .local v3, "numStart":I
    :goto_4
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v10, 0x0

    if-ge v3, v0, :cond_13

    .line 601
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 603
    .local v11, "start":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 605
    .local v0, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 606
    .local v12, "proxyLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_12

    if-nez v12, :cond_9

    .line 607
    move-object/from16 v10, v16

    goto/16 :goto_a

    .line 609
    :cond_9
    const/4 v13, 0x0

    .line 610
    .local v13, "iterNum":I
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 611
    .local v14, "maxUsages":I
    :goto_5
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v15, :cond_f

    .line 613
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 614
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-object v4, v0

    goto :goto_6

    .line 618
    :cond_a
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 619
    .local v15, "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v4, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 620
    move-object v0, v15

    .line 622
    add-int/lit8 v14, v14, 0x1

    move-object v4, v0

    .line 628
    .end local v0    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v15    # "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v4, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :goto_6
    if-eqz v4, :cond_e

    if-eq v13, v14, :cond_e

    .line 629
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    if-ne v0, v15, :cond_b

    .line 631
    goto :goto_8

    .line 634
    :cond_b
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v0, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v15, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 637
    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 639
    nop

    .line 640
    :try_start_0
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 641
    .local v0, "userPkgManager":Landroid/content/pm/PackageManager;
    iget-object v15, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 643
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v18, v17

    .line 645
    .local v18, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v10, v18

    .end local v18    # "appLabel":Ljava/lang/CharSequence;
    .local v10, "appLabel":Ljava/lang/CharSequence;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 646
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v10    # "appLabel":Ljava/lang/CharSequence;
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c
    goto :goto_7

    .line 648
    :catch_0
    move-exception v0

    .line 652
    :cond_d
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object v0, v4

    const/4 v10, 0x0

    goto/16 :goto_5

    .line 657
    :cond_e
    :goto_8
    move-object v0, v4

    .end local v4    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v0, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_f
    const-string v4, "android.permission-group.MICROPHONE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 658
    nop

    .line 659
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    invoke-direct {v1, v12}, Landroid/permission/PermissionUsageHelper;->formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 658
    :goto_9
    move-object/from16 v10, v16

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v10, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    invoke-virtual {v10, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 657
    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_11
    move-object/from16 v10, v16

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    goto :goto_a

    .line 606
    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v13    # "iterNum":I
    .end local v14    # "maxUsages":I
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_12
    move-object/from16 v10, v16

    .line 600
    .end local v0    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v11    # "start":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v12    # "proxyLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v16, v10

    goto/16 :goto_4

    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_13
    move-object/from16 v10, v16

    .line 663
    .end local v3    # "numStart":I
    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    iget-object v3, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 664
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_b
    :try_start_1
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v4, v0, :cond_1b

    .line 665
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    .line 666
    .local v11, "usageList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 669
    .local v0, "lastVisible":I
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 670
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 671
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v12, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v12, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v12}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "android.permission-group.MICROPHONE"

    .line 672
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 673
    const/4 v1, 0x0

    goto/16 :goto_f

    .line 677
    :cond_14
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 678
    .local v13, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    iget-object v14, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 679
    nop

    .end local v13    # "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    goto :goto_c

    .line 681
    :cond_15
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v12, v13

    .line 682
    .local v12, "start":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v14, v13

    move v13, v0

    .line 683
    .end local v0    # "lastVisible":I
    .local v13, "lastVisible":I
    .local v14, "lastVisibleLink":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :goto_d
    if-lez v13, :cond_16

    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 684
    add-int/lit8 v13, v13, -0x1

    .line 685
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v14, v0

    goto :goto_d

    .line 687
    :cond_16
    const/4 v15, 0x0

    .line 688
    .local v15, "proxyLabel":Ljava/lang/String;
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v2, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_17

    .line 690
    :try_start_2
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 691
    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 692
    .local v0, "userPkgManager":Landroid/content/pm/PackageManager;
    iget-object v2, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 694
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v15, v16

    .line 697
    .end local v0    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_e

    .line 695
    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    goto :goto_e

    .line 688
    :cond_17
    const/4 v1, 0x0

    .line 699
    :goto_e
    :try_start_4
    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v10, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 671
    .end local v12    # "start":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    .end local v13    # "lastVisible":I
    .end local v14    # "lastVisibleLink":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    .end local v15    # "proxyLabel":Ljava/lang/String;
    .local v0, "lastVisible":I
    :cond_18
    const/4 v1, 0x0

    goto :goto_f

    .line 670
    :cond_19
    const/4 v1, 0x0

    goto :goto_f

    .line 669
    :cond_1a
    const/4 v1, 0x0

    .line 664
    .end local v0    # "lastVisible":I
    .end local v11    # "usageList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    :goto_f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_b

    .line 701
    .end local v4    # "i":I
    :cond_1b
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 703
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 704
    .local v1, "packageHash":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 704
    :cond_1c
    const/4 v3, 0x0

    .line 707
    .end local v1    # "packageHash":I
    :goto_11
    goto :goto_10

    .line 709
    :cond_1d
    return-object v10

    .line 701
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 552
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v6    # "mostRecentUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v7    # "proxyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "proxyLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .end local v9    # "proxies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v4, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_1e
    move-object v10, v4

    .line 553
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :goto_12
    return-object v10
.end method

.method private blacklist getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 195
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private blacklist isLocationProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 444
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 445
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    .line 444
    return v0
.end method

.method private blacklist isSubattributionSupported(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 422
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/permission/PermissionUsageHelper;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    return v0

    .line 425
    :cond_0
    nop

    .line 426
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 427
    .local v1, "userPkgManager":Landroid/content/pm/PackageManager;
    const-wide/16 v2, 0x0

    .line 428
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 429
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 427
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 430
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->areAttributionsUserVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 433
    :cond_1
    return v0

    .line 434
    .end local v1    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic blacklist lambda$addLinkToChainIfNotPresentLocked$0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist shouldShowIndicators()Z
    .locals 3

    .line 115
    const-string/jumbo v0, "privacy"

    const-string v1, "camera_mic_icons_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowPermissionsHub()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 115
    :goto_1
    return v2
.end method

.method private static blacklist shouldShowLocationIndicator()Z
    .locals 3

    .line 120
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "location_indicators_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist shouldShowPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 713
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist shouldShowPermissionsHub()Z
    .locals 3

    .line 110
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "permissions_hub_2_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 371
    .local p1, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local p2, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 375
    .local v1, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 378
    invoke-direct {p0, v3, v4}, Landroid/permission/PermissionUsageHelper;->getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 377
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v1    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_1
    goto :goto_0

    .line 381
    :cond_2
    return-void

    .line 372
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getOpUsageData(Z)Ljava/util/List;
    .locals 34
    .param p1, "isMicMuted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 296
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionGroupUsage;>;"
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowIndicators()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    return-object v1

    .line 302
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 303
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    sget-object v3, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_1
    if-nez p1, :cond_2

    .line 307
    sget-object v3, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_2
    invoke-direct {v0, v2}, Landroid/permission/PermissionUsageHelper;->getOpUsages(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 312
    .local v3, "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    .local v4, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 317
    .local v5, "audioManager":Landroid/media/AudioManager;
    const-string v6, "android:phone_call_camera"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "android:phone_call_microphone"

    const/4 v9, 0x1

    if-nez v7, :cond_4

    .line 318
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v9

    .line 319
    .local v7, "hasPhoneCall":Z
    :goto_1
    if-eqz v7, :cond_6

    const-string v10, "android.permission-group.MICROPHONE"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    .line 321
    iget-object v11, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v12, Landroid/telephony/TelephonyManager;

    .line 322
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 323
    .local v11, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 324
    .local v10, "permUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    const/4 v12, 0x0

    .local v12, "usageNum":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 325
    nop

    .line 326
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v13, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 325
    invoke-virtual {v11, v13}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v9, :cond_5

    .line 328
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 335
    .end local v10    # "permUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v12    # "usageNum":I
    :cond_6
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 337
    .local v9, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .local v10, "permGroupNum":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 338
    const/4 v11, 0x0

    .line 339
    .local v11, "isPhone":Z
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 341
    .local v12, "permGroup":Ljava/lang/String;
    nop

    .line 342
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-direct {v0, v12, v13}, Landroid/permission/PermissionUsageHelper;->getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v13

    .line 344
    .local v13, "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-direct {v0, v14, v9}, Landroid/permission/PermissionUsageHelper;->updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 346
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 347
    const/4 v11, 0x1

    .line 348
    const-string v12, "android.permission-group.MICROPHONE"

    goto :goto_4

    .line 349
    :cond_7
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 350
    const/4 v11, 0x1

    .line 351
    const-string v12, "android.permission-group.CAMERA"

    .line 354
    :cond_8
    :goto_4
    const/4 v14, 0x0

    move v15, v14

    .local v15, "usageNum":I
    :goto_5
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v15, v14, :cond_9

    .line 355
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 356
    .local v14, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move-object/from16 v25, v2

    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v9, v0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    move-object/from16 v26, v3

    .end local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .local v26, "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    const/4 v3, 0x0

    .line 357
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, "attributionLabel":Ljava/lang/String;
    new-instance v2, Landroid/permission/PermissionGroupUsage;

    iget-object v3, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move-object/from16 v27, v4

    .end local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v27, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    .end local v5    # "audioManager":Landroid/media/AudioManager;
    .local v28, "audioManager":Landroid/media/AudioManager;
    iget-wide v5, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move/from16 v30, v7

    .end local v7    # "hasPhoneCall":Z
    .local v30, "hasPhoneCall":Z
    iget-boolean v7, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    move-object/from16 v31, v8

    iget-object v8, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 362
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v16

    check-cast v24, Ljava/lang/CharSequence;

    move-object/from16 v32, v14

    .end local v14    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v32, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    move-object v14, v2

    move/from16 v33, v15

    .end local v15    # "usageNum":I
    .local v33, "usageNum":I
    move-object v15, v3

    move/from16 v16, v4

    move-wide/from16 v17, v5

    move-object/from16 v19, v12

    move/from16 v20, v7

    move/from16 v21, v11

    move-object/from16 v22, v8

    move-object/from16 v23, v0

    invoke-direct/range {v14 .. v24}, Landroid/permission/PermissionGroupUsage;-><init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 358
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v0    # "attributionLabel":Ljava/lang/String;
    .end local v32    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    add-int/lit8 v15, v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move/from16 v7, v30

    move-object/from16 v8, v31

    .end local v33    # "usageNum":I
    .restart local v15    # "usageNum":I
    goto :goto_5

    .end local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v27    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "audioManager":Landroid/media/AudioManager;
    .end local v30    # "hasPhoneCall":Z
    .restart local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .restart local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "audioManager":Landroid/media/AudioManager;
    .restart local v7    # "hasPhoneCall":Z
    :cond_9
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v33, v15

    .line 337
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "audioManager":Landroid/media/AudioManager;
    .end local v7    # "hasPhoneCall":Z
    .end local v11    # "isPhone":Z
    .end local v12    # "permGroup":Ljava/lang/String;
    .end local v13    # "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v15    # "usageNum":I
    .restart local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .restart local v27    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28    # "audioManager":Landroid/media/AudioManager;
    .restart local v30    # "hasPhoneCall":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 366
    .end local v10    # "permGroupNum":I
    .end local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v27    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "audioManager":Landroid/media/AudioManager;
    .end local v30    # "hasPhoneCall":Z
    .restart local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .restart local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "audioManager":Landroid/media/AudioManager;
    .restart local v7    # "hasPhoneCall":Z
    :cond_a
    return-object v1
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 15
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 216
    move-object v1, p0

    if-eqz p5, :cond_0

    .line 218
    return-void

    .line 224
    :cond_0
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 227
    .local v0, "numChains":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 229
    iget-object v5, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 230
    .local v5, "chainId":I
    iget-object v6, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 231
    .local v6, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 232
    .local v7, "chainSize":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 233
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .local v9, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :try_start_1
    invoke-virtual {v9, v10, v12, v13, v11}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 235
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_2

    .line 232
    .end local v9    # "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 228
    .end local v5    # "chainId":I
    .end local v6    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    .end local v7    # "chainSize":I
    .end local v8    # "j":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 240
    .end local v4    # "i":I
    iget-object v4, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 241
    nop

    .end local v0    # "numChains":I
    .end local v3    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v2

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 210
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 248
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I
    .param p7, "startedType"    # I
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 255
    if-eqz p7, :cond_2

    const/4 v0, -0x1

    move/from16 v8, p9

    if-eq v8, v0, :cond_1

    if-eqz p8, :cond_1

    and-int/lit8 v0, p8, 0x8

    if-nez v0, :cond_0

    move-object v9, p0

    goto :goto_0

    .line 261
    :cond_0
    move-object v9, p0

    iget-object v10, v9, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 262
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionUsageHelper;->addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 264
    monitor-exit v10

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 255
    :cond_1
    move-object v9, p0

    goto :goto_0

    :cond_2
    move-object v9, p0

    move/from16 v8, p9

    .line 259
    :goto_0
    return-void
.end method

.method public blacklist tearDown()V
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 203
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 204
    return-void
.end method
