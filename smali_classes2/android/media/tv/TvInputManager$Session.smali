.class public final Landroid/media/tv/TvInputManager$Session;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Session$PendingEvent;,
        Landroid/media/tv/TvInputManager$Session$TvInputEventSender;,
        Landroid/media/tv/TvInputManager$Session$InputEventHandler;,
        Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    }
.end annotation


# static fields
.field static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field private static final greylist-max-o INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final greylist-max-o mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChannel:Landroid/view/InputChannel;

.field private final greylist-max-o mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

.field private blacklist mIAppNotificationEnabled:Z

.field private blacklist mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private final greylist-max-o mMetadataLock:Ljava/lang/Object;

.field private final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSelectedAudioTrackId:Ljava/lang/String;

.field private greylist-max-o mSelectedSubtitleTrackId:Ljava/lang/String;

.field private greylist-max-o mSelectedVideoTrackId:Ljava/lang/String;

.field private greylist-max-o mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

.field private final greylist-max-o mSeq:I

.field private final greylist-max-o mService:Landroid/media/tv/ITvInputManager;

.field private final greylist-max-o mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mToken:Landroid/os/IBinder;

.field private final greylist-max-o mUserId:I

.field private greylist-max-o mVideoHeight:I

.field private final greylist-max-o mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseInternal(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "service"    # Landroid/media/tv/ITvInputManager;
    .param p4, "userId"    # I
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/ITvInputManager;",
            "II",
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    .line 2347
    .local p6, "sessionCallbackRecordMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/tv/TvInputManager$SessionCallbackRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2315
    new-instance v0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    .line 2317
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 2318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    .line 2325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    .line 2329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    .line 2331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 2344
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z

    .line 2348
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 2349
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 2350
    iput-object p3, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    .line 2351
    iput p4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    .line 2352
    iput p5, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    .line 2353
    iput-object p6, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 2354
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager$Session-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private greylist-max-o containsTrack(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2556
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 2557
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2558
    const/4 v0, 0x1

    return v0

    .line 2560
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_0
    goto :goto_0

    .line 2561
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .locals 6

    .line 3116
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(I)V

    .line 3118
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3119
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3120
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3121
    .local v3, "seq":I
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 3122
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3123
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 3119
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3125
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3129
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3130
    .local v0, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    if-nez v0, :cond_0

    .line 3131
    new-instance v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent-IA;)V

    move-object v0, v1

    .line 3133
    :cond_0
    iput-object p1, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3134
    iput-object p2, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 3135
    iput-object p3, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 3136
    iput-object p4, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 3137
    return-object v0
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3141
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->recycle()V

    .line 3142
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3143
    return-void
.end method

.method private greylist-max-o releaseInternal()V
    .locals 3

    .line 3150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 3151
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v1

    .line 3152
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1

    .line 3153
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-eqz v2, :cond_0

    .line 3154
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->flushPendingEventsLocked()V

    .line 3155
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->dispose()V

    .line 3156
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 3158
    :cond_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 3159
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 3161
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3162
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3163
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3164
    monitor-exit v0

    .line 3165
    return-void

    .line 3164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3161
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 3
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3045
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3046
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v1

    .line 3047
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3048
    monitor-exit v0

    return-void

    .line 3050
    .end local v1    # "result":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3052
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    .line 3053
    return-void

    .line 3050
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    .locals 6
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3056
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 3057
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-nez v1, :cond_0

    .line 3058
    new-instance v1, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 3061
    :cond_0
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3062
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 3063
    .local v1, "seq":I
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3064
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3065
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3066
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3067
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3068
    const/4 v3, -0x1

    return v3

    .line 3071
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "seq":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method greylist-max-o createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 2924
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2926
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2929
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2930
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    return-void

    .line 2934
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2, p2, v3}, Landroid/media/tv/ITvInputManager;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2937
    nop

    .line 2938
    return-void

    .line 2935
    :catch_0
    move-exception v0

    .line 2936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "view must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3005
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3006
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3009
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_0

    .line 3010
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3012
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;

    move-result-object v1

    .line 3013
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 3015
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 3019
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3020
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3021
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v3, v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3022
    const/4 v3, -0x1

    monitor-exit v0

    return v3

    .line 3023
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o dispatchSurfaceChanged(III)V
    .locals 6
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2426
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 2427
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    return-void

    .line 2431
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2434
    nop

    .line 2435
    return-void

    .line 2432
    :catch_0
    move-exception v0

    .line 2433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o finishedInputEvent(IZZ)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 3079
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3080
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3081
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 3082
    monitor-exit v0

    return-void

    .line 3085
    :cond_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3086
    .local v2, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3088
    if-eqz p3, :cond_1

    .line 3089
    const-string v3, "TvInputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3092
    :cond_1
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3094
    .end local v1    # "index":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3096
    invoke-virtual {p0, v2, p2}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    .line 3097
    return-void

    .line 3094
    .end local v2    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .locals 1

    .line 2357
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object v0
.end method

.method public greylist-max-o getSelectedTrack(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .line 2604
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2605
    if-nez p1, :cond_0

    .line 2606
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2612
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2607
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2608
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2609
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2610
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2612
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2612
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o getToken()Landroid/os/IBinder;
    .locals 1

    .line 3146
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getTracks(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .line 2574
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2575
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2576
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    if-nez v2, :cond_0

    .line 2577
    monitor-exit v0

    return-object v1

    .line 2579
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2591
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2580
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 2581
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    if-nez v2, :cond_2

    .line 2582
    monitor-exit v0

    return-object v1

    .line 2584
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2585
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 2586
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    if-nez v2, :cond_4

    .line 2587
    monitor-exit v0

    return-object v1

    .line 2589
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2591
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2591
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;
    .locals 6

    .line 2689
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2690
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2691
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvTrackInfo;

    .line 2692
    .local v2, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2693
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    move-result v3

    .line 2694
    .local v3, "videoWidth":I
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    move-result v4

    .line 2695
    .local v4, "videoHeight":I
    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    if-ne v5, v3, :cond_0

    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    if-eq v5, v4, :cond_1

    .line 2696
    :cond_0
    iput v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 2697
    iput v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 2698
    monitor-exit v0

    return-object v2

    .line 2701
    .end local v2    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v3    # "videoWidth":I
    .end local v4    # "videoHeight":I
    :cond_1
    goto :goto_0

    .line 2703
    :cond_2
    monitor-exit v0

    .line 2704
    const/4 v0, 0x0

    return-object v0

    .line 2703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .param p2, "handled"    # Z

    .line 3101
    iput-boolean p2, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 3102
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3105
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->run()V

    goto :goto_0

    .line 3109
    :cond_0
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3110
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3113
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method blacklist pauseRecording(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2860
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2861
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    return-void

    .line 2865
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2868
    nop

    .line 2869
    return-void

    .line 2866
    :catch_0
    move-exception v0

    .line 2867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 2946
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2948
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    return-void

    .line 2952
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    nop

    .line 2956
    return-void

    .line 2953
    :catch_0
    move-exception v0

    .line 2954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o release()V
    .locals 3

    .line 2368
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2369
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    return-void

    .line 2373
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    nop

    .line 2378
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    .line 2379
    return-void

    .line 2374
    :catch_0
    move-exception v0

    .line 2375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeBroadcastInfo(I)V
    .locals 3
    .param p1, "requestId"    # I

    .line 3185
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 3186
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    return-void

    .line 3190
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->removeBroadcastInfo(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3193
    nop

    .line 3194
    return-void

    .line 3191
    :catch_0
    move-exception v0

    .line 3192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o removeOverlayView()V
    .locals 3

    .line 2962
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2963
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return-void

    .line 2967
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->removeOverlayView(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    nop

    .line 2971
    return-void

    .line 2968
    :catch_0
    move-exception v0

    .line 2969
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestAd(Landroid/media/tv/AdRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 3197
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 3198
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    return-void

    .line 3202
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    nop

    .line 3206
    return-void

    .line 3203
    :catch_0
    move-exception v0

    .line 3204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 3168
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 3169
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    return-void

    .line 3173
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3176
    nop

    .line 3177
    return-void

    .line 3174
    :catch_0
    move-exception v0

    .line 3175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist resumeRecording(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2880
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2881
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    return-void

    .line 2885
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2888
    nop

    .line 2889
    return-void

    .line 2886
    :catch_0
    move-exception v0

    .line 2887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o selectTrack(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 2524
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2525
    if-nez p1, :cond_0

    .line 2526
    if-eqz p2, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2527
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    monitor-exit v0

    return-void

    .line 2530
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2531
    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2532
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid video trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    monitor-exit v0

    return-void

    .line 2535
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 2536
    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2537
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid subtitle trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    monitor-exit v0

    return-void

    .line 2543
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2544
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_3

    .line 2545
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    return-void

    .line 2549
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2552
    nop

    .line 2553
    return-void

    .line 2550
    :catch_0
    move-exception v0

    .line 2551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2543
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2541
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "type":I
    .end local p2    # "trackId":Ljava/lang/String;
    throw v1

    .line 2543
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "type":I
    .restart local p2    # "trackId":Ljava/lang/String;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2901
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2902
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    return-void

    .line 2906
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    nop

    .line 2910
    return-void

    .line 2907
    :catch_0
    move-exception v0

    .line 2908
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setCaptionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2502
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2503
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    return-void

    .line 2507
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setCaptionEnabled(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    nop

    .line 2511
    return-void

    .line 2508
    :catch_0
    move-exception v0

    .line 2509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInteractiveAppNotificationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2623
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2624
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    return-void

    .line 2628
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V

    .line 2629
    iput-boolean p1, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    nop

    .line 2633
    return-void

    .line 2630
    :catch_0
    move-exception v0

    .line 2631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "iAppSession"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 2361
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 2362
    return-void
.end method

.method greylist-max-o setMain()V
    .locals 3

    .line 2388
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2389
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    return-void

    .line 2393
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->setMainSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2396
    nop

    .line 2397
    return-void

    .line 2394
    :catch_0
    move-exception v0

    .line 2395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setStreamVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .line 2444
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2445
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    return-void

    .line 2449
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 2452
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setVolume(Landroid/os/IBinder;FI)V

    .line 2455
    nop

    .line 2456
    return-void

    .line 2450
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume should be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "volume":F
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "volume":F
    :catch_0
    move-exception v0

    .line 2454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2405
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2406
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    return-void

    .line 2411
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2414
    nop

    .line 2415
    return-void

    .line 2412
    :catch_0
    move-exception v0

    .line 2413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o startRecording(Landroid/net/Uri;)V
    .locals 1
    .param p1, "programUri"    # Landroid/net/Uri;

    .line 2814
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2815
    return-void
.end method

.method blacklist startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2825
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2826
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    return-void

    .line 2830
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    nop

    .line 2834
    return-void

    .line 2831
    :catch_0
    move-exception v0

    .line 2832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o stopRecording()V
    .locals 3

    .line 2840
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2841
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    return-void

    .line 2845
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->stopRecording(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2848
    nop

    .line 2849
    return-void

    .line 2846
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftEnablePositionTracking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 2796
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2797
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    return-void

    .line 2801
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2804
    nop

    .line 2805
    return-void

    .line 2802
    :catch_0
    move-exception v0

    .line 2803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftPause()V
    .locals 3

    .line 2726
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2727
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    return-void

    .line 2731
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->timeShiftPause(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    nop

    .line 2735
    return-void

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftPlay(Landroid/net/Uri;)V
    .locals 3
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 2711
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2712
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    return-void

    .line 2716
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    nop

    .line 2720
    return-void

    .line 2717
    :catch_0
    move-exception v0

    .line 2718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftResume()V
    .locals 3

    .line 2741
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2742
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    return-void

    .line 2746
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->timeShiftResume(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    nop

    .line 2750
    return-void

    .line 2747
    :catch_0
    move-exception v0

    .line 2748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftSeekTo(J)V
    .locals 3
    .param p1, "timeMs"    # J

    .line 2762
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2763
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    return-void

    .line 2767
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSeekTo(Landroid/os/IBinder;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2770
    nop

    .line 2771
    return-void

    .line 2768
    :catch_0
    move-exception v0

    .line 2769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 2779
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2780
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-void

    .line 2784
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2787
    nop

    .line 2788
    return-void

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o tune(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2465
    return-void
.end method

.method public greylist-max-o tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2474
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2476
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    return-void

    .line 2479
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2480
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2481
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2482
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2483
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 2484
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 2485
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 2486
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 2487
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 2488
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2493
    nop

    .line 2494
    return-void

    .line 2491
    :catch_0
    move-exception v0

    .line 2492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2488
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method greylist-max-o unblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 4
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .line 2977
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2979
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    return-void

    .line 2983
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2, v3}, Landroid/media/tv/ITvInputManager;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2986
    nop

    .line 2987
    return-void

    .line 2984
    :catch_0
    move-exception v0

    .line 2985
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o updateTrackSelection(ILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 2663
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    const/4 v1, 0x1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 2665
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2666
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 2667
    monitor-exit v0

    return v1

    .line 2677
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2668
    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 2669
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2670
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 2671
    monitor-exit v0

    return v1

    .line 2672
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 2673
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2674
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 2675
    monitor-exit v0

    return v1

    .line 2677
    :cond_2
    monitor-exit v0

    .line 2678
    const/4 v0, 0x0

    return v0

    .line 2677
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o updateTracks(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2640
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2641
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2642
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2643
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2644
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvTrackInfo;

    .line 2645
    .local v2, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 2646
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2647
    :cond_0
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 2648
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2649
    :cond_1
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2650
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2652
    .end local v2    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_2
    :goto_1
    goto :goto_0

    .line 2653
    :cond_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 2654
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    nop

    :goto_3
    monitor-exit v0

    .line 2653
    return v3

    .line 2655
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
