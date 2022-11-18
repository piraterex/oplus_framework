.class Landroid/app/AppOpsManager$1;
.super Landroid/app/AppOpsManager$OnOpNotedCallback;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpNotedCallback;-><init>()V

    return-void
.end method

.method private blacklist reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V
    .locals 5
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 288
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smisCollectingStackTraces()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v0

    .line 292
    .local v0, "config":Lcom/android/internal/app/MessageSamplingConfig;
    invoke-virtual {p1}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v2

    const/16 v3, 0x79

    invoke-static {v1, v2, v3}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v1

    .line 293
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v1

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 296
    :cond_1
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetFormattedStackTrace()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "stackTrace":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    .line 300
    if-nez v2, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 299
    :goto_0
    invoke-interface {v3, v4, p1, v1}, Lcom/android/internal/app/IAppOpsService;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->-$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 305
    .end local v1    # "stackTrace":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V
    .locals 0
    .param p1, "asyncOp"    # Landroid/app/AsyncNotedAppOp;

    .line 280
    return-void
.end method

.method public whitelist onNoted(Landroid/app/SyncNotedAppOp;)V
    .locals 0
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 274
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    .line 275
    return-void
.end method

.method public whitelist onSelfNoted(Landroid/app/SyncNotedAppOp;)V
    .locals 0
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 284
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    .line 285
    return-void
.end method
