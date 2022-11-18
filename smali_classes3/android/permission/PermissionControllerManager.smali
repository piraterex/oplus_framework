.class public final Landroid/permission/PermissionControllerManager;
.super Ljava/lang/Object;
.source "PermissionControllerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;,
        Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;,
        Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;,
        Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;,
        Landroid/permission/PermissionControllerManager$HibernationEligibilityFlag;,
        Landroid/permission/PermissionControllerManager$CountPermissionAppsFlag;,
        Landroid/permission/PermissionControllerManager$Reason;
    }
.end annotation


# static fields
.field private static final blacklist CHUNK_SIZE:I = 0x1000

.field public static final whitelist COUNT_ONLY_WHEN_GRANTED:I = 0x1

.field public static final whitelist COUNT_WHEN_SYSTEM:I = 0x2

.field public static final whitelist HIBERNATION_ELIGIBILITY_ELIGIBLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIBERNATION_ELIGIBILITY_EXEMPT_BY_SYSTEM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIBERNATION_ELIGIBILITY_EXEMPT_BY_USER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIBERNATION_ELIGIBILITY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REASON_INSTALLER_POLICY_VIOLATION:I = 0x2

.field public static final whitelist REASON_MALWARE:I = 0x1

.field private static final blacklist REQUEST_TIMEOUT_MILLIS:J = 0xea60L

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UNBIND_TIMEOUT_MILLIS:J = 0x2710L

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sRemoteServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/permission/IPermissionController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mRemoteService:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/permission/IPermissionController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 82
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 247
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    sget-object v10, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 249
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Thread;>;"
    sget-object v1, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector;

    move-object v11, v1

    .line 252
    .local v11, "remoteService":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/permission/IPermissionController;>;"
    if-nez v11, :cond_1

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.permission.PermissionControllerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v1

    .line 254
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 255
    .local v13, "pkgName":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object v14, v1

    .line 257
    .local v14, "serviceInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_0

    .line 263
    new-instance v15, Landroid/permission/PermissionControllerManager$1;

    .line 264
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.permission.PermissionControllerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    new-instance v7, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda38;

    invoke-direct {v7}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda38;-><init>()V

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/permission/PermissionControllerManager$1;-><init>(Landroid/permission/PermissionControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    move-object v11, v15

    .line 285
    sget-object v1, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No PermissionController package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "errorMsg":Ljava/lang/String;
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/permission/PermissionControllerManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 288
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    .restart local p0    # "this":Landroid/permission/PermissionControllerManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    iput-object v11, v9, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    .line 289
    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Thread;>;"
    .end local v11    # "remoteService":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/permission/IPermissionController;>;"
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    move-object/from16 v1, p1

    iput-object v1, v9, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 292
    move-object/from16 v2, p2

    iput-object v2, v9, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 293
    return-void

    .line 289
    :catchall_0
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private varargs blacklist enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V
    .locals 4
    .param p1, "requiredPermissions"    # [Ljava/lang/String;

    .line 302
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 303
    .local v2, "requiredPermission":Ljava/lang/String;
    iget-object v3, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 305
    return-void

    .line 302
    .end local v2    # "requiredPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At lest one of the following permissions is required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$applyStagedRuntimePermissionBackup$10(Ljava/lang/String;Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 514
    .local v0, "applyStagedRuntimePermissionBackupResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 516
    return-object v0
.end method

.method static synthetic blacklist lambda$applyStagedRuntimePermissionBackup$11(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "applyStagedRuntimePermissionBackupResult"    # Ljava/lang/Boolean;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 520
    .local v0, "token":J
    if-eqz p3, :cond_0

    .line 521
    :try_start_0
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error restoring delayed permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 525
    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 524
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    nop

    .line 530
    return-void

    .line 528
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    throw v2
.end method

.method static synthetic blacklist lambda$countPermissionApps$18(Ljava/util/List;ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "permissionNames"    # Ljava/util/List;
    .param p1, "flags"    # I
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 622
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 623
    .local v0, "countPermissionAppsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 624
    return-object v0
.end method

.method static synthetic blacklist lambda$countPermissionApps$19(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "err"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;
    .param p2, "countPermissionAppsResult"    # Ljava/lang/Integer;

    .line 626
    if-eqz p0, :cond_0

    .line 627
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error counting permission apps"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    .line 632
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$countPermissionApps$20(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "finalHandler"    # Landroid/os/Handler;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;
    .param p2, "countPermissionAppsResult"    # Ljava/lang/Integer;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 625
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic blacklist lambda$dump$12(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    invoke-interface {p0}, Landroid/permission/IPermissionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method static synthetic blacklist lambda$dump$13(Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p0, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;-><init>(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 541
    invoke-static {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getAppPermissions$14(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 570
    .local v0, "getAppPermissionsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/permission/RuntimePermissionPresentationInfo;>;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 571
    return-object v0
.end method

.method static synthetic blacklist lambda$getAppPermissions$15(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V
    .locals 2
    .param p0, "err"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;
    .param p2, "getAppPermissionsResult"    # Ljava/util/List;

    .line 573
    if-eqz p0, :cond_0

    .line 574
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting app permission"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    .line 579
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$getAppPermissions$16(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "finalHandler"    # Landroid/os/Handler;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;
    .param p2, "getAppPermissionsResult"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 572
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;

    invoke-direct {v0, p3, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;-><init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getGroupOfPlatformPermission$32(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 818
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 819
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 820
    return-object v0
.end method

.method static synthetic blacklist lambda$getGroupOfPlatformPermission$33(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 824
    .local v0, "token":J
    if-eqz p3, :cond_0

    .line 825
    :try_start_0
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get group of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 828
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    nop

    .line 833
    return-void

    .line 831
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    throw v2
.end method

.method static synthetic blacklist lambda$getHibernationEligibility$36(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 881
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 882
    .local v0, "eligibilityResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 883
    return-object v0
.end method

.method static synthetic blacklist lambda$getHibernationEligibility$37(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "callback"    # Ljava/util/function/IntConsumer;
    .param p1, "eligibility"    # Ljava/lang/Integer;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 885
    if-eqz p2, :cond_0

    .line 886
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting hibernation eligibility"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 889
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 891
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    nop

    .line 896
    .end local v0    # "token":J
    :goto_0
    return-void

    .line 893
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    throw v2
.end method

.method static synthetic blacklist lambda$getPermissionUsages$21(ZJLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "countSystem"    # Z
    .param p1, "numMillis"    # J
    .param p3, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 655
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 657
    .local v0, "getPermissionUsagesResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/permission/RuntimePermissionUsageInfo;>;>;"
    invoke-interface {p3, p0, p1, p2, v0}, Landroid/permission/IPermissionController;->getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V

    .line 658
    return-object v0
.end method

.method static synthetic blacklist lambda$getPermissionUsages$22(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "callback"    # Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;
    .param p1, "getPermissionUsagesResult"    # Ljava/util/List;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 660
    if-eqz p2, :cond_0

    .line 661
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting permission usages"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 666
    .local v0, "token":J
    nop

    .line 667
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 666
    invoke-interface {p0, v2}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    nop

    .line 672
    .end local v0    # "token":J
    :goto_0
    return-void

    .line 669
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw v2
.end method

.method static synthetic blacklist lambda$getPlatformPermissionsForGroup$30(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "permissionGroupName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 785
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 786
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 787
    return-object v0
.end method

.method static synthetic blacklist lambda$getPlatformPermissionsForGroup$31(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "permissionGroupName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 791
    .local v0, "token":J
    if-eqz p3, :cond_0

    .line 792
    :try_start_0
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get permissions of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 795
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 799
    nop

    .line 800
    return-void

    .line 798
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 799
    throw v2
.end method

.method static synthetic blacklist lambda$getPrivilegesDescriptionStringForProfile$25(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "profileName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 719
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 720
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 721
    return-object v0
.end method

.method static synthetic blacklist lambda$getPrivilegesDescriptionStringForProfile$26(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 723
    if-eqz p2, :cond_0

    .line 724
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error from getPrivilegesDescriptionStringForProfile"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 727
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 729
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$getRuntimePermissionBackup$4(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "remotePipe"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    invoke-interface {p0, p1, p2}, Landroid/permission/IPermissionController;->getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 437
    return-void
.end method

.method static synthetic blacklist lambda$getRuntimePermissionBackup$5(Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 435
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda2;-><init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getRuntimePermissionBackup$6(Ljava/util/function/Consumer;[BLjava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "bytes"    # [B
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 438
    if-eqz p2, :cond_0

    .line 439
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting permission backup"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 444
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$getUnusedAppCount$34(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 849
    .local v0, "unusedAppCountResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-interface {p0, v0}, Landroid/permission/IPermissionController;->getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V

    .line 850
    return-object v0
.end method

.method static synthetic blacklist lambda$getUnusedAppCount$35(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "callback"    # Ljava/util/function/IntConsumer;
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 852
    if-eqz p2, :cond_0

    .line 853
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting unused app count"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 856
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 858
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    nop

    .line 863
    .end local v0    # "token":J
    :goto_0
    return-void

    .line 860
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    throw v2
.end method

.method static synthetic blacklist lambda$grantOrUpgradeDefaultRuntimePermissions$23(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 691
    .local v0, "grantOrUpgradeDefaultRuntimePermissionsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {p0, v0}, Landroid/permission/IPermissionController;->grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V

    .line 693
    return-object v0
.end method

.method static synthetic blacklist lambda$grantOrUpgradeDefaultRuntimePermissions$24(Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "grantOrUpgradeDefaultRuntimePermissionsResult"    # Ljava/lang/Boolean;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 695
    if-eqz p2, :cond_0

    .line 696
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error granting or upgrading runtime permissions"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 699
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 701
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyOneTimePermissionSessionTimeout$29(Ljava/lang/String;Landroid/permission/IPermissionController;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 767
    invoke-interface {p1, p0}, Landroid/permission/IPermissionController;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermission$17(Ljava/lang/String;Ljava/lang/String;Landroid/permission/IPermissionController;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    invoke-interface {p2, p0, p1}, Landroid/permission/IPermissionController;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermissions$1(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "callback"    # Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;
    .param p1, "revoked"    # Ljava/util/Map;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 354
    .local v0, "token":J
    if-eqz p2, :cond_0

    .line 355
    :try_start_0
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure when revoking runtime permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    nop

    .line 363
    return-void

    .line 361
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    throw v2
.end method

.method static synthetic blacklist lambda$revokeSelfPermissionsOnKill$38(Ljava/lang/String;Ljava/util/List;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissions"    # Ljava/util/List;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 926
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 927
    .local v0, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    .line 928
    return-object v0
.end method

.method static synthetic blacklist lambda$revokeSelfPermissionsOnKill$39(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "permissions"    # Ljava/util/List;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Void;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 930
    if-eqz p3, :cond_0

    .line 931
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to self revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$setRuntimePermissionGrantStateByDeviceAdmin$2(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "callerPackageName"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/permission/AdminPermissionControlParams;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 393
    .local v0, "setRuntimePermissionGrantStateResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V

    .line 396
    return-object v0
.end method

.method static synthetic blacklist lambda$setRuntimePermissionGrantStateByDeviceAdmin$3(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "callerPackageName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "setRuntimePermissionGrantStateResult"    # Ljava/lang/Boolean;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 400
    .local v0, "token":J
    if-eqz p3, :cond_0

    .line 401
    :try_start_0
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting permissions state for device admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 406
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    throw v2
.end method

.method static synthetic blacklist lambda$stageAndApplyRuntimePermissionsBackup$7(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "remotePipe"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    invoke-interface {p0, p1, p2}, Landroid/permission/IPermissionController;->stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 474
    return-void
.end method

.method static synthetic blacklist lambda$stageAndApplyRuntimePermissionsBackup$8(Landroid/os/UserHandle;[BLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "backup"    # [B
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;-><init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V

    invoke-static {v0, p1}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$stageAndApplyRuntimePermissionsBackup$9(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "nullResult"    # Ljava/lang/Void;
    .param p1, "err"    # Ljava/lang/Throwable;

    .line 476
    if-eqz p1, :cond_0

    .line 477
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error sending permission backup"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$updateUserSensitiveForApp$27(ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 747
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V

    .line 748
    return-object v0
.end method

.method static synthetic blacklist lambda$updateUserSensitiveForApp$28(ILjava/lang/Void;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "res"    # Ljava/lang/Void;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 750
    if-eqz p2, :cond_0

    .line 751
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updating user_sensitive flags for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda32;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p4}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda33;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 517
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 531
    return-void
.end method

.method public blacklist countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p2, "flags"    # I
    .param p3, "callback"    # Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 616
    .local p1, "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "permissionNames"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 617
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 618
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 621
    .local v0, "finalHandler":Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda13;-><init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;)V

    .line 625
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 633
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 540
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;-><init>(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 544
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get dump"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 563
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 567
    .local v0, "finalHandler":Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;)V

    .line 572
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 580
    return-void
.end method

.method public blacklist getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 817
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 821
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 834
    return-void
.end method

.method public whitelist getHibernationEligibility(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Ljava/util/function/IntConsumer;

    .line 877
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/IntConsumer;)V

    .line 884
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 897
    return-void
.end method

.method public blacklist getPermissionUsages(ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .locals 2
    .param p1, "countSystem"    # Z
    .param p2, "numMillis"    # J
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    .line 649
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 650
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;-><init>(ZJ)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;

    invoke-direct {v1, p5}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;-><init>(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    .line 659
    invoke-virtual {v0, v1, p4}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 673
    return-void
.end method

.method public blacklist getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 784
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 788
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 801
    return-void
.end method

.method public blacklist getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Consumer;)V

    .line 722
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 730
    return-void
.end method

.method public whitelist getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "[B>;)V"
        }
    .end annotation

    .line 428
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[B>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Consumer;)V

    .line 437
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 445
    return-void
.end method

.method public whitelist getUnusedAppCount(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Ljava/util/function/IntConsumer;

    .line 844
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda36;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda37;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/IntConsumer;)V

    .line 851
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 864
    return-void
.end method

.method public blacklist grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    .line 694
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 702
    return-void
.end method

.method synthetic blacklist lambda$revokeRuntimePermissions$0$android-permission-PermissionControllerManager(Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .locals 8
    .param p1, "request"    # Ljava/util/Map;
    .param p2, "doDryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, "bundledizedRequest":Landroid/os/Bundle;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 341
    .local v2, "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    .line 342
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    .end local v2    # "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 345
    :cond_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v7, v1

    .line 347
    .local v7, "revokeRuntimePermissionsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 348
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 347
    move-object v1, p4

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionController;->revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 350
    return-object v7
.end method

.method public blacklist notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 766
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 768
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 594
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 598
    return-void
.end method

.method public whitelist revokeRuntimePermissions(Ljava/util/Map;ZILjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .locals 4
    .param p2, "doDryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;",
            ")V"
        }
    .end annotation

    .line 327
    .local p1, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 331
    .local v1, "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "permissions"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 333
    .end local v1    # "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 336
    :cond_0
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda21;-><init>(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZI)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p5}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;-><init>(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    .line 351
    invoke-virtual {v0, v1, p4}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 364
    return-void
.end method

.method public blacklist revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 925
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 935
    return-void
.end method

.method public blacklist setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/permission/AdminPermissionControlParams;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/permission/AdminPermissionControlParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 387
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "Admin control params must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p4}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 397
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 412
    return-void
.end method

.method public whitelist stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V
    .locals 2
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 465
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda34;

    invoke-direct {v1, p2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda34;-><init>(Landroid/os/UserHandle;[B)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda35;-><init>()V

    .line 475
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 480
    return-void
.end method

.method public blacklist updateUserSensitive()V
    .locals 1

    .line 737
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    .line 738
    return-void
.end method

.method public blacklist updateUserSensitiveForApp(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 745
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda27;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda28;-><init>(I)V

    .line 749
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 754
    return-void
.end method
