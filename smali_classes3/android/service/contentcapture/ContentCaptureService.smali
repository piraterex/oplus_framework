.class public abstract Landroid/service/contentcapture/ContentCaptureService;
.super Landroid/app/Service;
.source "ContentCaptureService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;,
        Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentcapture.ContentCaptureService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.content_capture"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

.field private blacklist mCallerMismatchTimeout:J

.field private final blacklist mClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private final blacklist mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastCallerMismatchLog:J

.field private final blacklist mServerInterface:Landroid/service/contentcapture/IContentCaptureService;

.field private final blacklist mSessionUids:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataShareAdapterResourceManager(Landroid/service/contentcapture/ContentCaptureService;)Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    .locals 0

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleFinishSession(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/service/contentcapture/ContentCaptureService;->handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDisconnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendEvents(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 78
    const-class v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;-><init>(Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager-IA;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 128
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    .line 134
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$1;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$1;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    .line 193
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$2;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$2;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 210
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist handleFinishSession(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 532
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 533
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 534
    return-void
.end method

.method private blacklist handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z
    .locals 9
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;
    .param p2, "uid"    # I

    .line 581
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 587
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v0

    .local v0, "sessionId":I
    goto :goto_0

    .line 584
    .end local v0    # "sessionId":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v0

    .line 585
    .restart local v0    # "sessionId":I
    nop

    .line 589
    :goto_0
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    .line 590
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 591
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIsRightCallerFor("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): no session for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    return v2

    .line 597
    :cond_1
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 598
    .local v1, "rightUid":I
    if-eq v1, p2, :cond_3

    .line 599
    sget-object v3, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid call from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " belongs to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 602
    .local v3, "now":J
    iget-wide v5, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 603
    const/16 v5, 0xce

    .line 604
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 605
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 603
    invoke-static {v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 606
    iput-wide v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    .line 608
    :cond_2
    return v2

    .line 610
    .end local v3    # "now":J
    :cond_3
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 573
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 574
    return-void
.end method

.method private blacklist handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 528
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/service/contentcapture/ContentCaptureService;->onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V

    .line 529
    return-void
.end method

.method private blacklist handleOnConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;

    .line 429
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureServiceCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 430
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onConnected()V

    .line 431
    return-void
.end method

.method private blacklist handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # I
    .param p3, "uid"    # I
    .param p4, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "initialState"    # I

    .line 443
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p2}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 446
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureContext;->getFlags()I

    move-result v0

    .line 447
    .local v0, "clientFlags":I
    const/4 v1, 0x0

    .line 448
    .local v1, "stateFlags":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 449
    or-int/lit8 v1, v1, 0x20

    .line 451
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    .line 452
    or-int/lit8 v1, v1, 0x40

    .line 454
    :cond_1
    if-nez v1, :cond_2

    .line 455
    move v1, p5

    goto :goto_0

    .line 457
    :cond_2
    or-int/lit8 v1, v1, 0x4

    .line 459
    :goto_0
    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v2}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p4, v1, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 460
    return-void
.end method

.method private blacklist handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 537
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 538
    return-void
.end method

.method private blacklist handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .locals 1
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "callback"    # Landroid/service/contentcapture/IDataShareCallback;

    .line 542
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$3;

    invoke-direct {v0, p0, p2}, Landroid/service/contentcapture/ContentCaptureService$3;-><init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/IDataShareCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V

    .line 570
    return-void
.end method

.method private blacklist handleOnDisconnected()V
    .locals 1

    .line 434
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onDisconnected()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 436
    return-void
.end method

.method private blacklist handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .locals 16
    .param p1, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;I",
            "Landroid/content/ContentCaptureOptions;",
            ")V"
        }
    .end annotation

    .line 465
    .local p2, "parceledEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    .line 466
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleSendEvents() received empty list of events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 472
    :cond_0
    new-instance v0, Landroid/service/contentcapture/FlushMetrics;

    invoke-direct {v0}, Landroid/service/contentcapture/FlushMetrics;-><init>()V

    move-object v9, v0

    .line 473
    .local v9, "metrics":Landroid/service/contentcapture/FlushMetrics;
    const/4 v0, 0x0

    .line 477
    .local v0, "activityComponent":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 478
    .local v1, "lastSessionId":I
    const/4 v2, 0x0

    .line 480
    .local v2, "sessionId":Landroid/view/contentcapture/ContentCaptureSessionId;
    const/4 v3, 0x0

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move v13, v3

    .end local v0    # "activityComponent":Landroid/content/ComponentName;
    .end local v1    # "lastSessionId":I
    .end local v2    # "sessionId":Landroid/view/contentcapture/ContentCaptureSessionId;
    .local v10, "activityComponent":Landroid/content/ComponentName;
    .local v11, "lastSessionId":I
    .local v12, "sessionId":Landroid/view/contentcapture/ContentCaptureSessionId;
    .local v13, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_5

    .line 481
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 482
    .local v14, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {v6, v14, v7}, Landroid/service/contentcapture/ContentCaptureService;->handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 483
    :cond_1
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v15

    .line 484
    .local v15, "sessionIdInt":I
    if-eq v15, v11, :cond_3

    .line 485
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, v15}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    move-object v12, v0

    .line 486
    move v1, v15

    .line 487
    .end local v11    # "lastSessionId":I
    .restart local v1    # "lastSessionId":I
    if-eqz v13, :cond_2

    .line 488
    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 489
    invoke-virtual {v9}, Landroid/service/contentcapture/FlushMetrics;->reset()V

    .line 492
    :cond_2
    move v11, v1

    .end local v1    # "lastSessionId":I
    .restart local v11    # "lastSessionId":I
    :cond_3
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v0

    .line 493
    .local v0, "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    if-nez v10, :cond_4

    if-eqz v0, :cond_4

    .line 494
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 496
    :cond_4
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    :pswitch_0
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    goto :goto_1

    .line 517
    :pswitch_1
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 518
    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 519
    goto :goto_1

    .line 513
    :pswitch_2
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 514
    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 515
    goto :goto_1

    .line 509
    :pswitch_3
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 510
    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 511
    goto :goto_1

    .line 498
    :pswitch_4
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext;->setParentSessionId(I)V

    .line 499
    iget-object v1, v6, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v15, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 500
    invoke-virtual {v6, v0, v12}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 501
    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 502
    goto :goto_1

    .line 504
    :pswitch_5
    iget-object v1, v6, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseIntArray;->delete(I)V

    .line 505
    invoke-virtual {v6, v12}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 506
    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 507
    nop

    .line 480
    .end local v0    # "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    .end local v14    # "event":Landroid/view/contentcapture/ContentCaptureEvent;
    .end local v15    # "sessionIdInt":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 524
    .end local v13    # "i":I
    :cond_5
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 525
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V
    .locals 4
    .param p0, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p1, "sessionState"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 627
    if-eqz p2, :cond_0

    .line 628
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "binder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 634
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 633
    .restart local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_2

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error async reporting result to client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private blacklist writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "flushMetrics"    # Landroid/service/contentcapture/FlushMetrics;
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .param p5, "flushReason"    # I

    .line 645
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_0

    .line 646
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeSessionFlush(): no server callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void

    .line 651
    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to write flush metrics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public final whitelist disableSelf()V
    .locals 3

    .line 388
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 391
    .local v0, "callback":Landroid/service/contentcapture/IContentCaptureServiceCallback;
    if-nez v0, :cond_1

    .line 392
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v2, "disableSelf(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 396
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->disableSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 400
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 416
    const-string v0, "Debug: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " Verbose: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 417
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 418
    .local v0, "size":I
    const-string v1, "Number sessions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 419
    if-lez v0, :cond_0

    .line 420
    const-string v1, "  "

    .line 421
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 422
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 423
    const-string v3, ": uid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 372
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityEvent(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    return-void
.end method

.method public whitelist onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 360
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivitySnapshot(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.contentcapture.ContentCaptureService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.contentcapture.ContentCaptureService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onConnected()V
    .locals 3

    .line 298
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public whitelist onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;
    .param p2, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 323
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContentCaptureEventsRequest(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    return-void
.end method

.method public whitelist onCreate()V
    .locals 4

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method public whitelist onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .locals 3
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 309
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    return-void
.end method

.method public whitelist onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 332
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataRemovalRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    return-void
.end method

.method public whitelist onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "callback"    # Landroid/service/contentcapture/DataShareCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 347
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataShareRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    return-void
.end method

.method public whitelist onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 381
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    return-void
.end method

.method public whitelist onDisconnected()V
    .locals 3

    .line 410
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public final whitelist setContentCaptureConditions(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "conditions":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 280
    .local v0, "callback":Landroid/service/contentcapture/IContentCaptureServiceCallback;
    if-nez v0, :cond_0

    .line 281
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentCaptureConditions(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 286
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final whitelist setContentCaptureWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 244
    .local v0, "callback":Landroid/service/contentcapture/IContentCaptureServiceCallback;
    if-nez v0, :cond_0

    .line 245
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentCaptureWhitelist(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 250
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
