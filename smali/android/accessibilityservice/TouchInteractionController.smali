.class public final Landroid/accessibilityservice/TouchInteractionController;
.super Ljava/lang/Object;
.source "TouchInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/TouchInteractionController$Callback;,
        Landroid/accessibilityservice/TouchInteractionController$State;
    }
.end annotation


# static fields
.field private static final blacklist MAX_POINTER_COUNT:I = 0x20

.field public static final whitelist STATE_CLEAR:I = 0x0

.field public static final whitelist STATE_DELEGATING:I = 0x4

.field public static final whitelist STATE_DRAGGING:I = 0x3

.field public static final whitelist STATE_TOUCH_EXPLORING:I = 0x2

.field public static final whitelist STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private blacklist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/TouchInteractionController$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mQueuedMotionEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mServiceDetectsGestures:Z

.field private blacklist mState:I

.field private blacklist mStateChangeRequested:Z


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    .line 114
    iput v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 118
    iput p3, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    .line 119
    iput-object p2, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 121
    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$1(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;
    .param p1, "state"    # I

    .line 221
    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendEventToAllListeners$0(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 197
    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private blacklist sendEventToAllListeners(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 188
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 192
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 194
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 195
    .local v3, "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 196
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_0

    .line 197
    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 200
    :cond_0
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 193
    .end local v3    # "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_1
    return-void

    .line 192
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist setServiceDetectsGestures(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .line 246
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 247
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 248
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceDetectsGesturesEnabled(IZ)V

    .line 251
    iput-boolean p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 256
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 411
    packed-switch p0, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 421
    :pswitch_0
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 419
    :pswitch_1
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 417
    :pswitch_2
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 415
    :pswitch_3
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    .line 413
    :pswitch_4
    const-string v0, "STATE_CLEAR"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist validateTransitionRequest()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 383
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State transition requests are not allowed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 381
    invoke-static {v2}, Landroid/accessibilityservice/TouchInteractionController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State transitions are not allowed without first adding a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .locals 1

    .line 392
    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    return v0
.end method

.method public whitelist getMaxPointerCount()I
    .locals 1

    .line 387
    const/16 v0, 0x20

    return v0
.end method

.method public whitelist getState()I
    .locals 2

    .line 403
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    monitor-exit v0

    return v1

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 179
    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    .line 184
    :goto_0
    return-void
.end method

.method blacklist onStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .line 210
    iput p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 212
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 216
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 218
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 219
    .local v3, "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 220
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_0

    .line 221
    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 224
    :cond_0
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    .line 217
    .end local v3    # "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    .line 228
    :goto_2
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 229
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 231
    :cond_2
    return-void

    .line 216
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist performClick()V
    .locals 3

    .line 341
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 342
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 343
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTap(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 350
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist performLongClickAndStartDrag()V
    .locals 3

    .line 363
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 364
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 365
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTapAndHold(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 372
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/TouchInteractionController$Callback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 132
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    .line 136
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 138
    invoke-direct {p0, v2}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 140
    :cond_1
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist requestDelegating()V
    .locals 3

    .line 316
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 318
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 319
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 320
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDelegating(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    nop

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 328
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist requestDragging(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .line 291
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 292
    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    .line 296
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 297
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 298
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDragging(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    nop

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 306
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 293
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestTouchExploration()V
    .locals 3

    .line 265
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 267
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 268
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 269
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestTouchExploration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .line 275
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist unregisterAllCallbacks()V
    .locals 2

    .line 166
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 169
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 170
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 172
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/accessibilityservice/TouchInteractionController$Callback;)Z
    .locals 4
    .param p1, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 150
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 155
    .local v2, "result":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 156
    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 158
    :cond_2
    monitor-exit v0

    return v2

    .line 159
    .end local v2    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
