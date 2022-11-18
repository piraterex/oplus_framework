.class public Landroid/view/ScrollCaptureConnection;
.super Landroid/view/IScrollCaptureConnection$Stub;
.source "ScrollCaptureConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureConnection$ConsumerCallback;,
        Landroid/view/ScrollCaptureConnection$RunnableCallback;,
        Landroid/view/ScrollCaptureConnection$SafeCallback;
    }
.end annotation


# static fields
.field private static final blacklist END_CAPTURE:Ljava/lang/String; = "endCapture"

.field private static final blacklist REQUEST_IMAGE:Ljava/lang/String; = "requestImage"

.field private static final blacklist SESSION:Ljava/lang/String; = "Session"

.field private static final blacklist START_CAPTURE:Ljava/lang/String; = "startCapture"

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureConnection"

.field private static final blacklist TRACE_TRACK:Ljava/lang/String; = "Scroll Capture"


# instance fields
.field private volatile blacklist mActive:Z

.field private blacklist mCancellation:Landroid/os/CancellationSignal;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private volatile blacklist mConnected:Z

.field private blacklist mLocal:Landroid/view/ScrollCaptureCallback;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private blacklist mRemote:Landroid/view/IScrollCaptureCallbacks;

.field private final blacklist mScrollBounds:Landroid/graphics/Rect;

.field private blacklist mSession:Landroid/view/ScrollCaptureSession;

.field private blacklist mTraceId:I

.field private final blacklist mUiThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$aHa1nYzlA8DXYbBXEppFatNBwME(Landroid/view/ScrollCaptureConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onStartCaptureCompleted()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zWgTS0v3aZzF3a5x0BYqDeVA_uU(Landroid/view/ScrollCaptureConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onEndCaptureCompleted()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V
    .locals 2
    .param p1, "uiThread"    # Ljava/util/concurrent/Executor;
    .param p2, "selectedTarget"    # Landroid/view/ScrollCaptureTarget;

    .line 86
    invoke-direct {p0}, Landroid/view/IScrollCaptureConnection$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    .line 87
    const-string v0, "<uiThread> must non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    .line 88
    const-string v0, "<selectedTarget> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "target.getScrollBounds() must be non-null to construct a client"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 92
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    .line 93
    return-void
.end method

.method private blacklist cancelPendingAction()V
    .locals 4

    .line 240
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 241
    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "CancellationSignal.cancel"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "ScrollCaptureConnection"

    const-string v1, "cancelling pending operation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 246
    :cond_0
    return-void
.end method

.method private blacklist checkActive()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    if-eqz v1, :cond_0

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 261
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not started!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/view/ScrollCaptureConnection;
    throw v1

    .line 263
    .restart local p0    # "this":Landroid/view/ScrollCaptureConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$close$3()V
    .locals 0

    .line 223
    return-void
.end method

.method static synthetic blacklist lambda$close$4(Landroid/view/ScrollCaptureCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 223
    new-instance v0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist onEndCaptureCompleted()V
    .locals 5

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 194
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1}, Landroid/view/IScrollCaptureCallbacks;->onCaptureEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    nop

    :goto_0
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 201
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 202
    goto :goto_1

    .line 200
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Caught exception confirming capture end!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 203
    :goto_1
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "endCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 204
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v4, "Session"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 205
    return-void

    .line 200
    :goto_2
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 201
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 202
    throw v1
.end method

.method private blacklist onStartCaptureCompleted()V
    .locals 5

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->onCaptureStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollCaptureConnection"

    const-string v2, "Shutting down due to error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 132
    const-wide/16 v0, 0x2

    iget v2, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v3, "Scroll Capture"

    const-string/jumbo v4, "startCapture"

    invoke-static {v0, v1, v3, v4, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    .line 209
    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "binderDied"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "ScrollCaptureConnection"

    const-string v1, "Controlling process just died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 213
    return-void
.end method

.method public blacklist close()V
    .locals 4

    .line 218
    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "close"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "ScrollCaptureConnection"

    const-string v2, "close(): capture session still active! Ending now."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    .line 222
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 223
    .local v0, "callback":Landroid/view/ScrollCaptureCallback;
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 226
    .end local v0    # "callback":Landroid/view/ScrollCaptureCallback;
    :cond_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v0, :cond_1

    .line 227
    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 229
    :cond_1
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 230
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    .line 232
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    .line 233
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 234
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 236
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public blacklist endCapture()Landroid/os/ICancellationSignal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "endCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 174
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    .line 175
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    .line 176
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 177
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 179
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureConnection;)V

    .line 180
    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 182
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 187
    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 279
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 282
    throw v0
.end method

.method public blacklist isActive()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    return v0
.end method

.method synthetic blacklist lambda$endCapture$2$android-view-ScrollCaptureConnection(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 183
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$requestImage$1$android-view-ScrollCaptureConnection(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "requestRect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/util/function/Consumer;

    .line 148
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 152
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$startCapture$0$android-view-ScrollCaptureConnection(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 118
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-interface {v0, v1, v2, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist onImageRequestCompleted(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "capturedArea"    # Landroid/graphics/Rect;

    .line 160
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 166
    goto :goto_1

    .line 165
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Shutting down due to error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 167
    :goto_1
    const-wide/16 v0, 0x2

    iget v2, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v3, "Scroll Capture"

    const-string/jumbo v4, "requestImage"

    invoke-static {v0, v1, v3, v4, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 168
    return-void

    .line 165
    :goto_2
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 166
    throw v1
.end method

.method public blacklist requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .locals 5
    .param p1, "requestRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string/jumbo v4, "requestImage"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 139
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    .line 140
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    .line 141
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 142
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 144
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;-><init>(Landroid/view/ScrollCaptureConnection;)V

    .line 145
    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    .line 147
    .local v1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;-><init>(Landroid/view/ScrollCaptureConnection;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-object v0
.end method

.method public blacklist startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "remote"    # Landroid/view/IScrollCaptureCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    .line 100
    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "Session"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 101
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string/jumbo v4, "startCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "ScrollCaptureConnection.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "<callbacks> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IScrollCaptureCallbacks;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    .line 108
    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    .line 111
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 112
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 113
    new-instance v1, Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    invoke-direct {v1, p1, v2, v3}, Landroid/view/ScrollCaptureSession;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    .line 115
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;-><init>(Landroid/view/ScrollCaptureConnection;)V

    .line 116
    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 118
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-object v0

    .line 105
    .end local v0    # "cancellation":Landroid/os/ICancellationSignal;
    .end local v1    # "listener":Ljava/lang/Runnable;
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "surface must be valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureConnection{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
