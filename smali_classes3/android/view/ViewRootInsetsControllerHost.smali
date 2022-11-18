.class public Landroid/view/ViewRootInsetsControllerHost;
.super Ljava/lang/Object;
.source "ViewRootInsetsControllerHost.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ViewRootInsetsControllerHost;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "VRInsetsControllerHost"

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 46
    return-void
.end method

.method private blacklist isVisibleToUser()Z
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$releaseSurfaceControlFromRt$0(Landroid/view/SurfaceControl;J)V
    .locals 0
    .param p0, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p1, "frame"    # J

    .line 224
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 225
    return-void
.end method


# virtual methods
.method public blacklist addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 60
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$1;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootInsetsControllerHost$1;-><init>(Landroid/view/ViewRootInsetsControllerHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 73
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 2
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 122
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootInsetsControllerHost;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 136
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v1, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 137
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 139
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :goto_0
    return-void

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View of the ViewRootImpl is not initiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dipToPx(I)I
    .locals 1
    .param p1, "dips"    # I

    .line 248
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v0

    return v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 112
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VRInsetsControllerHost"

    const-string/jumbo v1, "windowInsetsAnimation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 115
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 118
    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 77
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 81
    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 97
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    .line 103
    .local v1, "anim":Landroid/view/WindowInsetsAnimation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowInsetsAnimation progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v3, "VRInsetsControllerHost"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v1    # "anim":Landroid/view/WindowInsetsAnimation;
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 87
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VRInsetsControllerHost"

    const-string/jumbo v1, "windowInsetsAnimation started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 235
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public blacklist getRootViewTitle()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemBarsAppearance()I
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    return v0
.end method

.method public blacklist getSystemBarsBehavior()I
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    return v0
.end method

.method public blacklist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .locals 2

    .line 256
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    return-object v1

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 261
    return-object v1

    .line 263
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist hasAnimationCallbacks()Z
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemBarsAppearanceControlled()Z
    .locals 2

    .line 190
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSystemBarsBehaviorControlled()Z
    .locals 2

    .line 210
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist notifyInsetsChanged()V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    .line 56
    return-void
.end method

.method public blacklist postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 143
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 222
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 227
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 231
    :goto_0
    return-void
.end method

.method public blacklist setSystemBarsAppearance(II)V
    .locals 4
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 173
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 174
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 175
    .local v0, "insetsFlags":Landroid/view/InsetsFlags;
    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    .line 176
    .local v1, "newAppearance":I
    iget v2, v0, Landroid/view/InsetsFlags;->appearance:I

    if-eq v2, v1, :cond_0

    .line 177
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 178
    iget-object v2, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 179
    iget-object v2, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 181
    :cond_0
    return-void
.end method

.method public blacklist setSystemBarsBehavior(I)V
    .locals 3
    .param p1, "behavior"    # I

    .line 195
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 196
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    if-eq v0, p1, :cond_0

    .line 197
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput p1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 198
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 199
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 201
    :cond_0
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(IZZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "visible"    # Z
    .param p3, "hasControl"    # Z

    .line 149
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->updateCompatSysUiVisibility(IZZ)V

    .line 150
    return-void
.end method

.method public blacklist updateRequestedVisibilities(Landroid/view/InsetsVisibilities;)V
    .locals 3
    .param p1, "vis"    # Landroid/view/InsetsVisibilities;

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRInsetsControllerHost"

    const-string v2, "Failed to call insetsModified"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
