.class public abstract Landroid/media/tv/interactive/TvInteractiveAppService$Session;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMediaFrame:Landroid/graphics/Rect;

.field private blacklist mMediaView:Landroid/view/View;

.field private blacklist mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

.field private blacklist mMediaViewContainer:Landroid/widget/FrameLayout;

.field private blacklist mMediaViewEnabled:Z

.field private final blacklist mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;

.field private blacklist mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaFrame(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    .line 331
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    .line 332
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    .line 333
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    .line 334
    return-void
.end method

.method private blacklist executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 1272
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-nez v1, :cond_0

    .line 1275
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1277
    :cond_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1278
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1284
    :goto_0
    monitor-exit v0

    .line 1285
    return-void

    .line 1284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1239
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1241
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1242
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1243
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 1244
    :cond_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1245
    monitor-exit v0

    .line 1246
    return-void

    .line 1245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 987
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 988
    return-void
.end method

.method blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 1295
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 1299
    :cond_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 1300
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 1301
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    .line 1302
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1

    .line 1303
    return-void

    .line 1305
    :cond_1
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    .line 1306
    if-nez v0, :cond_2

    .line 1307
    return-void

    .line 1309
    :cond_2
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    if-eqz v0, :cond_3

    .line 1310
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->cancel(Z)Z

    .line 1311
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    .line 1316
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 1317
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1319
    const/16 v0, 0x3e9

    .line 1323
    .local v0, "type":I
    const/16 v1, 0x218

    .line 1326
    .local v1, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1327
    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 1329
    :cond_4
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v9, -0x2

    move-object v2, v10

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v10, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1332
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1334
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1335
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1336
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    return-void
.end method

.method blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 991
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method blacklist dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 1210
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1211
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 1212
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    return v1

    .line 1212
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    goto :goto_0

    .line 1217
    :cond_1
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 1218
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 1219
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 1220
    .local v2, "source":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1221
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1222
    return v1

    .line 1224
    :cond_2
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    .line 1225
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1226
    return v1

    .line 1229
    :cond_3
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1230
    return v1

    .line 1217
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "source":I
    :cond_4
    :goto_0
    nop

    .line 1235
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dispatchSurfaceChanged(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1268
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSurfaceChanged(III)V

    .line 1269
    return-void
.end method

.method public whitelist isMediaViewEnabled()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public whitelist layoutSurface(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 668
    if-gt p1, p3, :cond_0

    if-gt p2, p4, :cond_0

    .line 671
    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;IIII)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 688
    return-void

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 1115
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdResponse(Landroid/media/tv/AdResponse;)V

    .line 1116
    return-void
.end method

.method public final whitelist notifyBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;

    .line 1160
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1177
    return-void
.end method

.method blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 1105
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 1106
    return-void
.end method

.method blacklist notifyContentAllowed()V
    .locals 0

    .line 1080
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentAllowed()V

    .line 1081
    return-void
.end method

.method blacklist notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1087
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 1088
    return-void
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1023
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1024
    return-void
.end method

.method public whitelist notifySessionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "err"    # I

    .line 1130
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1147
    return-void
.end method

.method blacklist notifySignalStrength(I)V
    .locals 0
    .param p1, "strength"    # I

    .line 1094
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSignalStrength(I)V

    .line 1095
    return-void
.end method

.method public final whitelist notifyTeletextAppStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1186
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1203
    return-void
.end method

.method blacklist notifyTrackSelected(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 1052
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackSelected(ILjava/lang/String;)V

    .line 1053
    return-void
.end method

.method blacklist notifyTracksChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1059
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTracksChanged(Ljava/util/List;)V

    .line 1060
    return-void
.end method

.method blacklist notifyTuned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1045
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTuned(Landroid/net/Uri;)V

    .line 1046
    return-void
.end method

.method blacklist notifyVideoAvailable()V
    .locals 0

    .line 1066
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoAvailable()V

    .line 1067
    return-void
.end method

.method blacklist notifyVideoUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 1073
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoUnavailable(I)V

    .line 1074
    return-void
.end method

.method public whitelist onAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 598
    return-void
.end method

.method public whitelist onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 592
    return-void
.end method

.method public whitelist onContentAllowed()V
    .locals 0

    .line 574
    return-void
.end method

.method public whitelist onContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 580
    return-void
.end method

.method public whitelist onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 405
    return-void
.end method

.method public whitelist onCreateMediaView()Landroid/view/View;
    .locals 1

    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCurrentChannelLcn(I)V
    .locals 0
    .param p1, "lcn"    # I

    .line 436
    return-void
.end method

.method public whitelist onCurrentChannelUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 430
    return-void
.end method

.method public whitelist onCurrentTvInputId(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 456
    return-void
.end method

.method public whitelist onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 417
    return-void
.end method

.method public whitelist onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 481
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMediaViewSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 520
    return-void
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onResetInteractiveApp()V
    .locals 0

    .line 392
    return-void
.end method

.method public abstract whitelist onSetSurface(Landroid/view/Surface;)Z
.end method

.method public whitelist onSetTeletextAppEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 424
    return-void
.end method

.method public whitelist onSignalStrength(I)V
    .locals 0
    .param p1, "strength"    # I

    .line 586
    return-void
.end method

.method public whitelist onSigningResult(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 467
    return-void
.end method

.method public whitelist onStartInteractiveApp()V
    .locals 0

    .line 380
    return-void
.end method

.method public whitelist onStopInteractiveApp()V
    .locals 0

    .line 386
    return-void
.end method

.method public whitelist onStreamVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 444
    return-void
.end method

.method public whitelist onSurfaceChanged(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 506
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTrackSelected(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 550
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTracksChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTuned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 544
    return-void
.end method

.method public whitelist onVideoAvailable()V
    .locals 0

    .line 562
    return-void
.end method

.method public whitelist onVideoUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 568
    return-void
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 1346
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 1347
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1350
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    .line 1352
    :cond_1
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 1353
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1356
    :cond_2
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1357
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1358
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1359
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1360
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    return-void

    .line 1354
    :cond_3
    :goto_0
    return-void
.end method

.method blacklist release()V
    .locals 2

    .line 1027
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRelease()V

    .line 1028
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1030
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    .line 1032
    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1034
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1035
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 1039
    return-void

    .line 1035
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist removeBroadcastInfo(I)V
    .locals 1
    .param p1, "requestId"    # I

    .line 721
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method blacklist removeMediaView(Z)V
    .locals 3
    .param p1, "clearWindowToken"    # Z

    .line 1368
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1369
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 1370
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 1372
    :cond_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 1376
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1377
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    .line 1378
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1379
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 1380
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1382
    :cond_1
    return-void
.end method

.method public whitelist requestAd(Landroid/media/tv/AdRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 956
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 972
    return-void
.end method

.method public whitelist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 696
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 713
    return-void
.end method

.method public whitelist requestCurrentChannelLcn()V
    .locals 1

    .line 819
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method

.method public whitelist requestCurrentChannelUri()V
    .locals 1

    .line 796
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 812
    return-void
.end method

.method public whitelist requestCurrentTvInputId()V
    .locals 1

    .line 890
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 906
    return-void
.end method

.method public whitelist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 931
    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 947
    return-void
.end method

.method public whitelist requestStreamVolume()V
    .locals 1

    .line 842
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method public whitelist requestTrackInfoList()V
    .locals 1

    .line 865
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method blacklist resetInteractiveApp()V
    .locals 0

    .line 983
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onResetInteractiveApp()V

    .line 984
    return-void
.end method

.method blacklist scheduleMediaViewCleanup()V
    .locals 5

    .line 1389
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 1390
    .local v0, "mediaViewParent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1391
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask-IA;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    .line 1392
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1395
    :cond_0
    return-void
.end method

.method blacklist sendCurrentChannelLcn(I)V
    .locals 0
    .param p1, "lcn"    # I

    .line 1003
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelLcn(I)V

    .line 1004
    return-void
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 999
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    .line 1000
    return-void
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1015
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public whitelist sendPlaybackCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 749
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 1019
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSigningResult(Ljava/lang/String;[B)V

    .line 1020
    return-void
.end method

.method blacklist sendStreamVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 1007
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStreamVolume(F)V

    .line 1008
    return-void
.end method

.method blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1011
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackInfoList(Ljava/util/List;)V

    .line 1012
    return-void
.end method

.method public whitelist setMediaViewEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 349
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method blacklist setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1252
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetSurface(Landroid/view/Surface;)Z

    .line 1253
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1256
    :cond_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    .line 1258
    return-void
.end method

.method blacklist setTeletextAppEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 995
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetTeletextAppEnabled(Z)V

    .line 996
    return-void
.end method

.method public whitelist setVideoBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 773
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method blacklist startInteractiveApp()V
    .locals 0

    .line 975
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStartInteractiveApp()V

    .line 976
    return-void
.end method

.method blacklist stopInteractiveApp()V
    .locals 0

    .line 979
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStopInteractiveApp()V

    .line 980
    return-void
.end method
