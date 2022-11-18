.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TokenState;,
        Landroid/service/trust/TrustAgentService$GrantTrustFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final greylist-max-o EXTRA_TOKEN_HANDLE:Ljava/lang/String; = "token_handle"

.field private static final greylist-max-o EXTRA_TOKEN_REMOVED_RESULT:Ljava/lang/String; = "token_removed_result"

.field private static final greylist-max-o EXTRA_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field private static final greylist-max-o EXTRA_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final whitelist FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final whitelist FLAG_GRANT_TRUST_DISPLAY_MESSAGE:I = 0x8

.field public static final whitelist FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field public static final whitelist FLAG_GRANT_TRUST_TEMPORARY_AND_RENEWABLE:I = 0x4

.field private static final greylist-max-o MSG_CONFIGURE:I = 0x2

.field private static final greylist-max-o MSG_DEVICE_LOCKED:I = 0x4

.field private static final greylist-max-o MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final greylist-max-o MSG_ESCROW_TOKEN_ADDED:I = 0x7

.field private static final greylist-max-o MSG_ESCROW_TOKEN_REMOVED:I = 0x9

.field private static final greylist-max-o MSG_ESCROW_TOKEN_STATE_RECEIVED:I = 0x8

.field private static final greylist-max-o MSG_TRUST_TIMEOUT:I = 0x3

.field private static final greylist-max-o MSG_UNLOCK_ATTEMPT:I = 0x1

.field private static final greylist-max-o MSG_UNLOCK_LOCKOUT:I = 0x6

.field private static final blacklist MSG_USER_MAY_REQUEST_UNLOCK:I = 0xb

.field private static final blacklist MSG_USER_REQUESTED_UNLOCK:I = 0xa

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final whitelist TOKEN_STATE_ACTIVE:I = 0x1

.field public static final whitelist TOKEN_STATE_INACTIVE:I = 0x0

.field public static final whitelist TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mManagingTrust:Z

.field private greylist-max-o mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    .line 218
    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic blacklist lambda$grantTrust$0(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .locals 0
    .param p0, "resultCallback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Landroid/service/trust/GrantTrustResult;

    .line 487
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private greylist-max-o onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 413
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method


# virtual methods
.method public final whitelist addEscrowToken([BLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 564
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 570
    :try_start_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->addEscrowToken([BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling addEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 574
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 575
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "token":[B
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v1

    .line 574
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "token":[B
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JI)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    .line 450
    return-void
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JI",
            "Ljava/util/function/Consumer<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    .line 475
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/trust/GrantTrustResult;>;"
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eqz v1, :cond_1

    .line 482
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 483
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    new-instance v2, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p5}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;-><init>(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 491
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 493
    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p2

    move v6, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    :goto_0
    goto :goto_1

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "calling enableTrust()"

    invoke-direct {p0, v3}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 500
    :cond_0
    new-instance v9, Landroid/service/trust/TrustAgentService$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    iput-object v9, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 507
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    :goto_1
    monitor-exit v0

    .line 508
    return-void

    .line 477
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "message":Ljava/lang/CharSequence;
    .end local p2    # "durationMs":J
    .end local p4    # "flags":I
    .end local p5    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/trust/GrantTrustResult;>;"
    throw v1

    .line 507
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "message":Ljava/lang/CharSequence;
    .restart local p2    # "durationMs":J
    .restart local p4    # "flags":I
    .restart local p5    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/trust/GrantTrustResult;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JZ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "initiatedByUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    .line 440
    return-void
.end method

.method public final whitelist isEscrowTokenActive(JLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 587
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 593
    :try_start_1
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->isEscrowTokenActive(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling isEscrowTokenActive"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 597
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 598
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "handle":J
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 597
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "handle":J
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$grantTrust$1$android-service-trust-TrustAgentService(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .locals 2
    .param p1, "resultCallback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/service/trust/GrantTrustResult;

    .line 484
    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    :cond_0
    return-void
.end method

.method public final whitelist lockUser()V
    .locals 2

    .line 662
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v0, :cond_0

    .line 664
    :try_start_0
    invoke-interface {v0}, Landroid/service/trust/ITrustAgentServiceCallback;->lockUser()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "calling lockUser"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 669
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 699
    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper-IA;)V

    return-object v0
.end method

.method public whitelist onConfigure(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    .line 427
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreate()V
    .locals 6

    .line 284
    const-string v0, "android.permission.BIND_TRUST_AGENT"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 285
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v1, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 288
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_0

    .line 289
    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not declared with the permission \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get ServiceInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public whitelist onDeviceLocked()V
    .locals 0

    .line 356
    return-void
.end method

.method public whitelist onDeviceUnlockLockout(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .line 378
    return-void
.end method

.method public whitelist onDeviceUnlocked()V
    .locals 0

    .line 363
    return-void
.end method

.method public whitelist onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .locals 0
    .param p1, "token"    # [B
    .param p2, "handle"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 390
    return-void
.end method

.method public whitelist onEscrowTokenRemoved(JZ)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "successful"    # Z

    .line 410
    return-void
.end method

.method public whitelist onEscrowTokenStateReceived(JI)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "tokenState"    # I

    .line 400
    return-void
.end method

.method public whitelist onTrustTimeout()V
    .locals 0

    .line 349
    return-void
.end method

.method public whitelist onUnlockAttempt(Z)V
    .locals 0
    .param p1, "successful"    # Z

    .line 305
    return-void
.end method

.method public whitelist onUserMayRequestUnlock()V
    .locals 0

    .line 318
    return-void
.end method

.method public whitelist onUserRequestedUnlock(Z)V
    .locals 0
    .param p1, "dismissKeyguard"    # Z

    .line 339
    return-void
.end method

.method public final whitelist removeEscrowToken(JLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 610
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 616
    :try_start_1
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->removeEscrowToken(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    goto :goto_0

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "callling removeEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 620
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 621
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "handle":J
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 620
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "handle":J
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist revokeTrust()V
    .locals 3

    .line 514
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 518
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 520
    :try_start_1
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling revokeTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 525
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist setManagingTrust(Z)V
    .locals 3
    .param p1, "managingTrust"    # Z

    .line 537
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eq v1, p1, :cond_0

    .line 539
    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    .line 540
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 542
    :try_start_1
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling setManagingTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 548
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 680
    if-eqz p1, :cond_1

    .line 683
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 689
    :try_start_1
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    goto :goto_0

    .line 690
    :catch_0
    move-exception v1

    .line 691
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling showKeyguardErrorMessage"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 693
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 694
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot show message because service is not connected to framework."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "message":Ljava/lang/CharSequence;
    throw v1

    .line 693
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "message":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist unlockUserWithToken(J[BLandroid/os/UserHandle;)V
    .locals 4
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 632
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/service/trust/TrustAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 633
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "User already unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_0
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 644
    :try_start_1
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->unlockUserWithToken(J[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    goto :goto_0

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "calling unlockUserWithToken"

    invoke-direct {p0, v3}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 648
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 649
    return-void

    .line 640
    :cond_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trust agent is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "um":Landroid/os/UserManager;
    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "handle":J
    .end local p3    # "token":[B
    .end local p4    # "user":Landroid/os/UserHandle;
    throw v2

    .line 648
    .restart local v0    # "um":Landroid/os/UserManager;
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "handle":J
    .restart local p3    # "token":[B
    .restart local p4    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
