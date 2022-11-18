.class public Landroid/permission/PermissionCheckerManager;
.super Ljava/lang/Object;
.source "PermissionCheckerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionCheckerManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final blacklist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mService:Landroid/permission/IPermissionChecker;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "permission_checker"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionChecker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionChecker;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionCheckerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z

    .line 177
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/permission/IPermissionChecker;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 13
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I

    .line 117
    move-object v1, p0

    move-object v10, p1

    move-object v11, p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 123
    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 124
    iget-object v2, v11, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v2, :cond_3

    iget-object v2, v11, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 126
    iget-object v2, v1, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget-object v3, v11, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/content/AttributionSourceState;->pid:I

    iget-object v4, v11, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/content/AttributionSourceState;->uid:I

    .line 125
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    .line 127
    move v12, v0

    goto :goto_0

    :cond_0
    nop

    .line 125
    :goto_0
    return v12

    .line 130
    :cond_1
    iget-object v2, v1, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget v3, v11, Landroid/content/AttributionSourceState;->pid:I

    iget v4, v11, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    .line 132
    move v12, v0

    goto :goto_1

    :cond_2
    nop

    .line 130
    :goto_1
    return v12

    .line 136
    :cond_3
    :try_start_0
    iget-object v2, v1, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/permission/IPermissionChecker;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    return v12
.end method

.method public blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z

    .line 154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    invoke-interface {v0, p1, p2, p3}, Landroid/permission/IPermissionChecker;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
