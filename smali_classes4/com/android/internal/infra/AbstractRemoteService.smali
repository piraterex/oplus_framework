.class public abstract Lcom/android/internal/infra/AbstractRemoteService;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;,
        Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final blacklist LAST_PRIVATE_MSG:I = 0x2

.field private static final blacklist MSG_BIND:I = 0x1

.field private static final blacklist MSG_UNBIND:I = 0x2

.field public static final blacklist PERMANENT_BOUND_TIMEOUT_MS:J


# instance fields
.field private final blacklist mBindingFlags:I

.field private blacklist mBound:Z

.field private blacklist mCompleted:Z

.field protected final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mConnecting:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDestroyed:Z

.field protected final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private blacklist mNextUnbind:J

.field protected blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceDied:Z

.field protected final blacklist mTag:Ljava/lang/String;

.field private final blacklist mUnfinishedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I

.field public final blacklist mVerbose:Z

.field private final blacklist mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$FfMJ90qG2_k97UFpP5-66UppL1Q(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kh-lC3s_yrhnp_g8lxKU7txJluI(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleDestroy()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ldNkkT58p4_26OYFnZFfaAeiV3I(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n27JOUQBEHySGHhjyYB_cPRqGtI(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleUnbind()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pr2Sh36sHI2hBkHT788X8pmcokk(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnecting(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceDied(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBinderDied(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnectedStateChangedInternal(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleUnbind(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "bindingFlags"    # I
    .param p8, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZ)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p5, "callback":Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;, "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    .line 121
    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    .line 122
    iput-object p5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    .line 123
    iput-boolean p8, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    .line 124
    iput-object p3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    .line 126
    iput p4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    .line 128
    iput p7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    .line 129
    return-void
.end method

.method private blacklist cancelScheduledUnbind()V
    .locals 2

    .line 346
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    return-void
.end method

.method private blacklist checkIfDestroyed()Z
    .locals 3

    .line 520
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 521
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not handling operation as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method private blacklist handleBinderDied()V
    .locals 2

    .line 228
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 232
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 234
    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    .line 235
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    .line 237
    move-object v0, p0

    .line 238
    .local v0, "castService":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;->onServiceDied(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBindFailure()V

    .line 240
    return-void
.end method

.method private blacklist handleDestroy()V
    .locals 1

    .line 209
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnDestroy()V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    .line 213
    return-void
.end method

.method private blacklist handleEnsureBound()V
    .locals 9

    .line 443
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureBound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 448
    const v1, 0x4001001

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    or-int/2addr v1, v2

    .line 451
    .local v1, "flags":I
    iget-object v3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v2

    .line 453
    .local v2, "willBind":Z
    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    .line 455
    if-nez v2, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 459
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    if-nez v0, :cond_2

    .line 460
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    .line 463
    :cond_2
    return-void

    .line 443
    .end local v1    # "flags":I
    .end local v2    # "willBind":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleEnsureUnbound()V
    .locals 3

    .line 466
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureUnbound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 470
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_2

    .line 473
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 477
    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    .line 478
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    .line 482
    :cond_3
    return-void
.end method

.method private blacklist handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "finshedRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind()V

    .line 315
    :cond_0
    return-void
.end method

.method private blacklist handleIsBound()Z
    .locals 1

    .line 439
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist handleOnConnectedStateChangedInternal(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .line 154
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChanged(Z)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequests()V

    .line 158
    :cond_0
    return-void
.end method

.method private blacklist handleUnbind()V
    .locals 1

    .line 395
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    .line 398
    return-void
.end method

.method private blacklist scheduleUnbind(Z)V
    .locals 6
    .param p1, "delay"    # Z

    .line 373
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    .line 375
    .local v0, "unbindDelay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 376
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not scheduling unbind when value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    return-void

    .line 380
    :cond_1
    if-nez p1, :cond_2

    .line 381
    const-wide/16 v0, 0x0

    .line 384
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    .line 389
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_3
    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    .line 391
    invoke-virtual {v3, v4}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v3

    .line 390
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 224
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void
.end method

.method public final blacklist destroy()V
    .locals 2

    .line 135
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 249
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    const-string v0, "  "

    .line 250
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    .line 252
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 254
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    .line 256
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 257
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "numUnfinishedRequests="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    .line 260
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 261
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    .line 262
    .local v1, "bound":Z
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "connected="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 263
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v2

    .line 265
    .local v2, "idleTimeout":J
    if-eqz v1, :cond_1

    .line 266
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 267
    const-string v4, " (unbind in : "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 268
    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 269
    const-string v4, ")"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 271
    :cond_0
    const-string v4, " (permanently bound)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 275
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v5, "mBindingFlags="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "idleTimeout="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v7, v2, v5

    .line 277
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v7, "s\n"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v8, "requestTimeout="

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getRemoteRequestMillis()J

    move-result-wide v8

    div-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_1

    .line 281
    :catch_0
    move-exception v4

    .line 282
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "not supported\n"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 284
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 285
    return-void
.end method

.method protected blacklist executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<TI;>;"
    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 342
    .local v0, "asyncRequest":Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest<TS;TI;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 343
    return-void
.end method

.method blacklist finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 305
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "finshedRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;-><init>()V

    .line 306
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public final blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 150
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected blacklist getRemoteRequestMillis()J
    .locals 3

    .line 196
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getServiceInterface()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method protected abstract blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation
.end method

.method protected abstract blacklist getTimeoutIdleBindMillis()J
.end method

.method abstract blacklist handleBindFailure()V
.end method

.method protected blacklist handleOnConnectedStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 172
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    return-void
.end method

.method protected abstract blacklist handleOnDestroy()V
.end method

.method protected final blacklist handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequest(): queuing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 410
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    goto :goto_0

    .line 412
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    .line 417
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->run()V

    .line 418
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    .line 422
    :cond_4
    :goto_0
    return-void

    .line 405
    :cond_5
    :goto_1
    return-void
.end method

.method abstract blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation
.end method

.method abstract blacklist handlePendingRequests()V
.end method

.method public final blacklist isDestroyed()Z
    .locals 1

    .line 142
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method protected blacklist scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<TI;>;"
    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 327
    .local v0, "asyncRequest":Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest<TS;TI;>;"
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda3;-><init>()V

    .line 328
    invoke-static {v2, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 327
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    return-void
.end method

.method protected blacklist scheduleBind()V
    .locals 3

    .line 356
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "scheduleBind(): already scheduled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 361
    invoke-virtual {v2, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    return-void
.end method

.method protected blacklist scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    return-void
.end method

.method protected blacklist scheduleUnbind()V
    .locals 1

    .line 369
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    .line 370
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 531
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const-string v1, " (bound)"

    goto :goto_0

    :cond_0
    const-string v1, " (unbound)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v1, :cond_1

    const-string v1, " (destroyed)"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    return-object v0
.end method
