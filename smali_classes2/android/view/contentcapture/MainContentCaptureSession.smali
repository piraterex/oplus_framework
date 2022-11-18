.class public final Landroid/view/contentcapture/MainContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_BINDER:Ljava/lang/String; = "binder"

.field public static final blacklist EXTRA_ENABLED_STATE:Ljava/lang/String; = "enabled"

.field private static final blacklist FORCE_FLUSH:Z = true

.field private static final blacklist MSG_FLUSH:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mApplicationToken:Landroid/os/IBinder;

.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private blacklist mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlushHistory:Landroid/util/LocalLog;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mNextFlush:J

.field private blacklist mNextFlushForTextChanged:Z

.field private final blacklist mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mState:I

.field private final blacklist mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionStarted(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->onSessionStarted(ILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetSession(Landroid/view/contentcapture/MainContentCaptureSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    const-class v0, Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/view/contentcapture/ContentCaptureManager;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "systemServerInterface"    # Landroid/view/contentcapture/IContentCaptureManager;

    .line 201
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    iput v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 151
    iput-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    .line 202
    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 204
    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    .line 207
    iget-object v0, p2, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    .line 208
    .local v0, "logHistorySize":I
    if-lez v0, :cond_0

    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    .line 210
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    .line 211
    return-void
.end method

.method private blacklist clearEvents()Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 591
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 593
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private blacklist destroySession()V
    .locals 5

    .line 598
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 599
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying session (ctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 600
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event(s) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 601
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-interface {v0, v2}, Landroid/view/contentcapture/IContentCaptureManager;->finishSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error destroying system-service session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_2

    .line 612
    invoke-interface {v0}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 614
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 615
    return-void
.end method

.method private blacklist flushIfNeeded(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 520
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    .line 525
    return-void

    .line 521
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "Nothing to flush"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_2
    return-void
.end method

.method private blacklist getActivityName()Ljava/lang/String;
    .locals 2

    .line 851
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0
.end method

.method private blacklist getDebugState()Ljava/lang/String;
    .locals 2

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v1}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 859
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    return-object v0
.end method

.method private blacklist getDebugState(I)Ljava/lang/String;
    .locals 2
    .param p1, "reason"    # I

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasStarted()Z
    .locals 1

    .line 470
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onSessionStarted(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 287
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 288
    invoke-static {p2}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureDirectManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 289
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda6;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    .line 295
    :try_start_0
    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to link to death on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    .line 302
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    goto :goto_1

    .line 304
    :cond_1
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 305
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->flushIfNeeded(I)V

    .line 309
    :goto_1
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_3

    .line 310
    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionStarted() result: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 311
    invoke-static {v3}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    return-void
.end method

.method private blacklist resetSession(I)V
    .locals 5
    .param p1, "newState"    # I

    .line 621
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 622
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 623
    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 626
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    .line 629
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    .line 630
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    .line 631
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    .line 632
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v1, :cond_2

    .line 633
    invoke-interface {v1}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 635
    :cond_2
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 636
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    return-void
.end method

.method private blacklist scheduleFlush(IZ)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "checkExisting"    # Z

    .line 475
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v1, "handleScheduleFlush("

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkExisting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "handleScheduleFlush(): session not started yet"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    return-void

    .line 484
    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be called when disabled. events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 491
    :cond_4
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 493
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 498
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .local v1, "flushFrequencyMs":I
    goto :goto_1

    .line 500
    .end local v1    # "flushFrequencyMs":I
    :cond_6
    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    .line 501
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v2, :cond_7

    .line 502
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): not a timeout reason because mDirectServiceInterface is not ready yet"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_7
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    .line 509
    .restart local v1    # "flushFrequencyMs":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    .line 510
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_8

    .line 511
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScheduleFlush(): scheduled to flush in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    .line 512
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_8
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 516
    return-void
.end method

.method private blacklist sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 319
    return-void
.end method

.method private blacklist sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .locals 17
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;
    .param p2, "forceFlush"    # Z

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v2

    .line 324
    .local v2, "eventType":I
    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v4, "handleSendEvent("

    if-eqz v3, :cond_0

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 328
    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 329
    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    invoke-static {v2}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): dropping because session not started yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    return-void

    .line 335
    :cond_2
    iget-object v3, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v3, :cond_3

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v4, "handleSendEvent(): ignoring when disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_3
    return-void

    .line 342
    :cond_4
    iget-object v3, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v3, v3, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v3, v3, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    .line 343
    .local v3, "maxBufferSize":I
    iget-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 344
    sget-boolean v4, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v4, :cond_5

    .line 345
    sget-object v4, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendEvent(): creating buffer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    .line 351
    :cond_6
    const/4 v4, 0x1

    .line 353
    .local v4, "addEvent":Z
    const/4 v5, 0x3

    const/4 v7, 0x1

    if-ne v2, v5, :cond_d

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 361
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v9

    .line 362
    .local v9, "hasComposingSpan":Z
    if-eqz v9, :cond_d

    .line 363
    const/4 v10, 0x0

    .line 364
    .local v10, "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    iget-object v11, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .local v11, "index":I
    :goto_0
    if-ltz v11, :cond_8

    .line 365
    iget-object v12, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 366
    .local v12, "tmpEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 367
    move-object v10, v12

    .line 368
    goto :goto_1

    .line 364
    .end local v12    # "tmpEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 371
    .end local v11    # "index":I
    :cond_8
    :goto_1
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 372
    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 373
    .local v11, "lastText":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 374
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    move v12, v7

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    .line 375
    .local v12, "bothNonEmpty":Z
    :goto_2
    nop

    .line 376
    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 377
    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 378
    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameSelectionSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_a

    move v13, v7

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    .line 379
    .local v13, "equalContent":Z
    :goto_3
    if-eqz v13, :cond_b

    .line 380
    const/4 v4, 0x0

    goto :goto_4

    .line 381
    :cond_b
    if-eqz v12, :cond_c

    .line 382
    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 383
    const/4 v4, 0x0

    .line 385
    :cond_c
    :goto_4
    if-nez v4, :cond_d

    sget-boolean v14, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v14, :cond_d

    .line 386
    sget-object v14, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffering VIEW_TEXT_CHANGED event, updated text="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 387
    invoke-static {v8}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "hasComposingSpan":Z
    .end local v10    # "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    .end local v11    # "lastText":Ljava/lang/CharSequence;
    .end local v12    # "bothNonEmpty":Z
    .end local v13    # "equalContent":Z
    :cond_d
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_f

    if-ne v2, v8, :cond_f

    .line 394
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 395
    .local v6, "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v9

    if-ne v9, v8, :cond_f

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v10

    if-ne v9, v10, :cond_f

    .line 397
    sget-boolean v9, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v9, :cond_e

    .line 398
    sget-object v9, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Buffering TYPE_VIEW_DISAPPEARED events for session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 399
    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 398
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_e
    invoke-virtual {v6, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 402
    const/4 v4, 0x0

    .line 406
    .end local v6    # "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    :cond_f
    if-eqz v4, :cond_10

    .line 407
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_10
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 417
    .local v6, "numberEvents":I
    if-ge v6, v3, :cond_11

    move/from16 v16, v7

    goto :goto_5

    :cond_11
    const/16 v16, 0x0

    :goto_5
    move/from16 v9, v16

    .line 419
    .local v9, "bufferEvent":Z
    if-eqz v9, :cond_15

    if-nez p2, :cond_15

    .line 421
    if-ne v2, v5, :cond_12

    .line 422
    iput-boolean v7, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    .line 423
    const/4 v5, 0x6

    .local v5, "flushReason":I
    goto :goto_6

    .line 425
    .end local v5    # "flushReason":I
    :cond_12
    iget-boolean v5, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    if-eqz v5, :cond_14

    .line 426
    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v5, :cond_13

    .line 427
    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v7, "Not scheduling flush because next flush is for text changed"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_13
    return-void

    .line 432
    :cond_14
    const/4 v5, 0x5

    .line 434
    .restart local v5    # "flushReason":I
    :goto_6
    invoke-direct {v0, v5, v7}, Landroid/view/contentcapture/MainContentCaptureSession;->scheduleFlush(IZ)V

    .line 435
    return-void

    .line 438
    .end local v5    # "flushReason":I
    :cond_15
    iget v5, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    if-eq v5, v8, :cond_17

    if-lt v6, v3, :cond_17

    .line 444
    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v5, :cond_16

    .line 445
    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delayed events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_16
    const/16 v5, 0x84

    invoke-direct {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    .line 451
    return-void

    .line 454
    :cond_17
    packed-switch v2, :pswitch_data_0

    .line 462
    const/4 v5, 0x1

    .restart local v5    # "flushReason":I
    goto :goto_7

    .line 456
    .end local v5    # "flushReason":I
    :pswitch_0
    const/4 v5, 0x3

    .line 457
    .restart local v5    # "flushReason":I
    goto :goto_7

    .line 459
    .end local v5    # "flushReason":I
    :pswitch_1
    const/4 v5, 0x4

    .line 460
    .restart local v5    # "flushReason":I
    nop

    .line 465
    :goto_7
    invoke-virtual {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    .line 466
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist stringOrSpannedStringWithoutNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 745
    if-nez p1, :cond_0

    .line 746
    const/4 v0, 0x0

    return-object v0

    .line 747
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 748
    new-instance v0, Landroid/text/SpannableString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    return-object v0

    .line 750
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 791
    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 795
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDirectServiceInterface: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 799
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 800
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isEnabled(): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 801
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 805
    :cond_1
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 806
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sharable activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 809
    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 810
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component name: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    :cond_3
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 814
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 815
    .local v0, "numberEvents":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "buffered events: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 816
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 817
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "prefix3":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 820
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 821
    .local v3, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->dump(Ljava/io/PrintWriter;)V

    .line 822
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 819
    .end local v3    # "event":Landroid/view/contentcapture/ContentCaptureEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    .end local v1    # "prefix3":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNextFlushForTextChanged: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 827
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flush frequency: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    if-eqz v1, :cond_5

    .line 829
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    .line 831
    :cond_5
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 833
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "next flush: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 835
    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    .end local v0    # "numberEvents":I
    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v0, :cond_7

    .line 838
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "flush history:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 841
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "not logging flush history"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 845
    return-void
.end method

.method blacklist flush(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 530
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "handleForceFlush("

    if-eqz v0, :cond_1

    .line 533
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be when disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 539
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_2

    .line 540
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): hold your horses, client not ready: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 544
    invoke-direct {p0, p1, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->scheduleFlush(IZ)V

    .line 546
    :cond_3
    return-void

    .line 549
    :cond_4
    iput-boolean v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    .line 551
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    .local v0, "numberEvents":I
    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "reasonString":Ljava/lang/String;
    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v3, :cond_5

    .line 554
    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event(s) for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_5
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v3, :cond_6

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "logRecord":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 564
    .end local v3    # "logRecord":Ljava/lang/String;
    :cond_6
    :try_start_0
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->clearEvents()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 567
    .local v2, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-interface {v3, v2, p1, v4}, Landroid/view/contentcapture/IContentCaptureDirectManager;->sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v2    # "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    goto :goto_0

    .line 568
    :catch_0
    move-exception v2

    .line 569
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
    .locals 0

    .line 215
    return-object p0
.end method

.method public blacklist internalNotifySessionPaused()V
    .locals 1

    .line 671
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionPaused(I)V

    .line 672
    return-void
.end method

.method public blacklist internalNotifySessionResumed()V
    .locals 1

    .line 666
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionResumed(I)V

    .line 667
    return-void
.end method

.method blacklist internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 1
    .param p1, "node"    # Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    .line 641
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 642
    return-void
.end method

.method blacklist internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 646
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    .line 647
    return-void
.end method

.method blacklist internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .locals 1
    .param p1, "viewInsets"    # Landroid/graphics/Insets;

    .line 656
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    .line 657
    return-void
.end method

.method blacklist internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 651
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 652
    return-void
.end method

.method public blacklist internalNotifyViewTreeEvent(Z)V
    .locals 1
    .param p1, "started"    # Z

    .line 661
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTreeEvent(IZ)V

    .line 662
    return-void
.end method

.method blacklist isContentCaptureEnabled()Z
    .locals 1

    .line 676
    invoke-super {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isDisabled()Z
    .locals 1

    .line 681
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$notifyChildSessionFinished$4$android-view-contentcapture-MainContentCaptureSession(II)V
    .locals 2
    .param p1, "childSessionId"    # I
    .param p2, "parentSessionId"    # I

    .line 704
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 705
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 704
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic blacklist lambda$notifyChildSessionStarted$3$android-view-contentcapture-MainContentCaptureSession(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2
    .param p1, "childSessionId"    # I
    .param p2, "parentSessionId"    # I
    .param p3, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 698
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 699
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 698
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic blacklist lambda$notifyContextUpdated$12$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 777
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 778
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 777
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic blacklist lambda$notifySessionPaused$11$android-view-contentcapture-MainContentCaptureSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 772
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic blacklist lambda$notifySessionResumed$10$android-view-contentcapture-MainContentCaptureSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 767
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic blacklist lambda$notifyViewAppeared$5$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "node"    # Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    .line 709
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    iget-object v1, p2, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 709
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic blacklist lambda$notifyViewDisappeared$6$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 715
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 716
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 715
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic blacklist lambda$notifyViewInsetsChanged$8$android-view-contentcapture-MainContentCaptureSession(ILandroid/graphics/Insets;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "viewInsets"    # Landroid/graphics/Insets;

    .line 756
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 757
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 756
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic blacklist lambda$notifyViewTextChanged$7$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;IIII)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "eventText"    # Ljava/lang/CharSequence;
    .param p4, "composingStart"    # I
    .param p5, "composingEnd"    # I
    .param p6, "startIndex"    # I
    .param p7, "endIndex"    # I

    .line 737
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 739
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 740
    invoke-virtual {v0, p4, p5}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 741
    invoke-virtual {v0, p6, p7}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 737
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic blacklist lambda$notifyViewTreeEvent$9$android-view-contentcapture-MainContentCaptureSession(II)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "type"    # I

    .line 763
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic blacklist lambda$notifyWindowBoundsChanged$13$android-view-contentcapture-MainContentCaptureSession(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 783
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 785
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 783
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic blacklist lambda$onDestroy$0$android-view-contentcapture-MainContentCaptureSession()V
    .locals 1

    .line 270
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroySession()V

    .line 273
    nop

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroySession()V

    .line 273
    throw v0
.end method

.method synthetic blacklist lambda$onSessionStarted$1$android-view-contentcapture-MainContentCaptureSession()V
    .locals 3

    .line 290
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keeping session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when service died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v0, 0x400

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 292
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 293
    return-void
.end method

.method synthetic blacklist lambda$scheduleFlush$2$android-view-contentcapture-MainContentCaptureSession(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 515
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flushIfNeeded(I)V

    return-void
.end method

.method blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 3
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 220
    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 221
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    iget v2, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 222
    return-object v0
.end method

.method blacklist notifyChildSessionFinished(II)V
    .locals 2
    .param p1, "parentSessionId"    # I
    .param p2, "childSessionId"    # I

    .line 704
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda9;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method blacklist notifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2
    .param p1, "parentSessionId"    # I
    .param p2, "childSessionId"    # I
    .param p3, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 698
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;IILandroid/view/contentcapture/ContentCaptureContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method blacklist notifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 777
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda5;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/contentcapture/ContentCaptureContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 779
    return-void
.end method

.method blacklist notifySessionPaused(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 772
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda8;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

.method blacklist notifySessionResumed(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 767
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    return-void
.end method

.method blacklist notifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "node"    # Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    .line 709
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    return-void
.end method

.method public blacklist notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 715
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda10;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method

.method public blacklist notifyViewInsetsChanged(ILandroid/graphics/Insets;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "viewInsets"    # Landroid/graphics/Insets;

    .line 756
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda13;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/graphics/Insets;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method

.method blacklist notifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 723
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    invoke-direct {v9, v10}, Landroid/view/contentcapture/MainContentCaptureSession;->stringOrSpannedStringWithoutNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 727
    .local v11, "eventText":Ljava/lang/CharSequence;
    instance-of v0, v10, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 728
    move-object v0, v10

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 729
    .local v0, "composingStart":I
    move-object v1, v10

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    move v12, v0

    move v13, v1

    .local v1, "composingEnd":I
    goto :goto_0

    .line 731
    .end local v0    # "composingStart":I
    .end local v1    # "composingEnd":I
    :cond_0
    const/4 v0, -0x1

    .line 732
    .restart local v0    # "composingStart":I
    const/4 v1, -0x1

    move v12, v0

    move v13, v1

    .line 735
    .end local v0    # "composingStart":I
    .local v12, "composingStart":I
    .local v13, "composingEnd":I
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 736
    .local v14, "startIndex":I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 737
    .local v15, "endIndex":I
    iget-object v8, v9, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v11

    move v5, v12

    move v6, v13

    move-object v9, v7

    move v7, v14

    move-object v10, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;IIII)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 742
    return-void
.end method

.method public blacklist notifyViewTreeEvent(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "started"    # Z

    .line 762
    if-eqz p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 763
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda12;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 764
    return-void
.end method

.method public blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 783
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda3;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    return-void
.end method

.method blacklist onDestroy()V
    .locals 2

    .line 267
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda2;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method

.method blacklist setDisabled(Z)Z
    .locals 2
    .param p1, "disabled"    # Z

    .line 690
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "flags"    # I

    .line 231
    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_2

    .line 241
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring handleStartSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while on state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 243
    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    return-void

    .line 247
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 248
    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    .line 249
    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    .line 250
    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    .line 252
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_4

    .line 253
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartSession(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    iget-object v8, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    move-object v5, p3

    move v7, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/contentcapture/IContentCaptureManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 576
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 577
    return-void
.end method
