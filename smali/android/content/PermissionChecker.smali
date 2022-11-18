.class public final Landroid/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field public static final greylist-max-o PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1

.field public static final blacklist PID_UNKNOWN:I = -0x1

.field private static volatile blacklist sService:Landroid/permission/IPermissionChecker;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static blacklist checkCallingOrSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p2

    .line 773
    .end local p2    # "callingPackageName":Ljava/lang/String;
    .local v5, "callingPackageName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_1

    :cond_1
    move-object v6, p3

    .line 775
    .end local p3    # "callingAttributionTag":Ljava/lang/String;
    .local v6, "callingAttributionTag":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v8, 0x0

    .line 775
    move-object v1, p0

    move-object v2, p1

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public static blacklist checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 809
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 811
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 812
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 811
    invoke-static {p0, p1, v1, v2, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist checkCallingPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 690
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 691
    const/4 v0, 0x2

    return v0

    .line 693
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v8, 0x0

    .line 693
    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 730
    const/4 v0, 0x2

    return v0

    .line 732
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 732
    invoke-static {p0, p1, v0, v1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 503
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 504
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 503
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static blacklist checkOpForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 468
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 469
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 468
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionAndStartDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 356
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 357
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 356
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 197
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "startDataDelivery"    # Z

    .line 154
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p3, p4, p5}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;

    .line 272
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "startDataDelivery"    # Z

    .line 310
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private static blacklist checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "startDataDelivery"    # Z
    .param p5, "fromDatasource"    # Z

    .line 318
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 319
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 318
    const/4 v5, 0x1

    const/4 v8, -0x1

    move-object v2, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;

    .line 235
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 541
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 577
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 578
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0

    .line 577
    return v0
.end method

.method public static blacklist checkSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 614
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 615
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 614
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist checkSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 650
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 651
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 410
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionCheckerManager;

    .line 411
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 410
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionCheckerManager;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 413
    return-void
.end method

.method public static blacklist finishDataDeliveryFromDatasource(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 430
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionCheckerManager;

    .line 431
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 430
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionCheckerManager;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 433
    return-void
.end method

.method public static blacklist startOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 391
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 392
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 391
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method
