.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;,
        Landroid/view/InsetsController$Host;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field private static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field static blacklist DEBUG:Z = false

.field static final blacklist DEBUG_DEPTH:I

.field static blacklist DEBUG_PANIC:Z = false

.field private static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z = false

.field private static blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mCaptionInsetsHeight:I

.field private final blacklist mConsumerCreator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisabledUserAnimationInsetsTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private final blacklist mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLastWindowingMode:I

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private final blacklist mRequestedVisibilityChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$PRU-rByC-T6Cyol8QANPZ-P3LX8(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ePJ4opFbfn8Q38r5Oo7RWmAEQ48(Landroid/view/InsetsController;)I
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    .line 226
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 228
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 230
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 242
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 244
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 246
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 250
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    .line 262
    const-string/jumbo v1, "persist.sys.assert.panic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/InsetsController;->DEBUG_PANIC:Z

    .line 263
    const-string v0, "debug.insets_controller.depth"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/InsetsController;->DEBUG_DEPTH:I

    .line 327
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .locals 2
    .param p1, "host"    # Landroid/view/InsetsController$Host;

    .line 639
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>()V

    .line 646
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 639
    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V

    .line 647
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V
    .locals 1
    .param p1, "host"    # Landroid/view/InsetsController$Host;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 652
    .local p2, "consumerCreator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/view/InsetsController;Ljava/lang/Integer;Landroid/view/InsetsSourceConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 593
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 596
    new-instance v0, Landroid/view/InsetsVisibilities;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 598
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 600
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 604
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 606
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    .line 622
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 625
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 635
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    .line 653
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 654
    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    .line 655
    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 656
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 701
    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .locals 2

    .line 1332
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1334
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1335
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1336
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_0
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .locals 2

    .line 1426
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1427
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1428
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1426
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1430
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .locals 5

    .line 1714
    const/4 v0, 0x0

    .line 1715
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1716
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1717
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 1718
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1719
    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v0, v4

    .line 1715
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1722
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 9
    .param p1, "control"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "invokeCallback"    # Z

    .line 1395
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1396
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1395
    const-string v2, "cancelAnimation of types: %d, animType: %d, host: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "InsetsController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_0
    if-eqz p2, :cond_1

    .line 1398
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    .line 1400
    :cond_1
    const/4 v0, 0x0

    .line 1401
    .local v0, "stateChanged":Z
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1402
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    .line 1403
    .local v3, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v4, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v4, p1, :cond_4

    .line 1404
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1405
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 1406
    .local v4, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1407
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0x13

    if-ne v1, v6, :cond_2

    .line 1408
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v6, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1410
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 1408
    const-string v8, "InsetsSourceConsumer#notifyAnimationFinished"

    invoke-virtual {v1, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1412
    :cond_2
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->notifyAnimationFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1406
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1414
    .end local v5    # "j":I
    :cond_3
    if-eqz p2, :cond_5

    .line 1415
    iget-object v1, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v1}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_2

    .line 1401
    .end local v3    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v4    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1420
    .end local v2    # "i":I
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 1421
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1423
    :cond_6
    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .locals 5
    .param p1, "types"    # I

    .line 1314
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1315
    .local v0, "originalmTypesBeingCancelled":I
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1317
    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1318
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1319
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 1320
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1317
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1323
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1324
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :cond_2
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1328
    nop

    .line 1329
    return-void

    .line 1327
    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1328
    throw v1
.end method

.method private blacklist captionInsetsUnchanged()Z
    .locals 4

    .line 819
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 820
    return v1

    .line 822
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-nez v0, :cond_1

    .line 824
    return v1

    .line 826
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 828
    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 829
    return v1

    .line 832
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;
    .locals 16
    .param p1, "fromIme"    # Z
    .param p4, "animationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1219
    .local p2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 1220
    .local v3, "typesReady":I
    const/4 v4, 0x1

    .line 1221
    .local v4, "imeReady":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_d

    .line 1222
    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 1223
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v2, :cond_1

    const/4 v9, 0x2

    if-ne v2, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v6

    .line 1225
    .local v9, "show":Z
    :goto_2
    const/4 v10, 0x0

    .line 1226
    .local v10, "canRun":Z
    const-string v11, "InsetsController"

    const/4 v12, 0x0

    if-eqz v9, :cond_4

    .line 1228
    if-eqz v1, :cond_2

    .line 1229
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v13

    iget-object v14, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1230
    invoke-interface {v14}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 1229
    const-string v15, "ImeInsetsSourceConsumer#requestShow"

    invoke-virtual {v13, v15, v14, v12}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1233
    :cond_2
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->requestShow(Z)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto :goto_3

    .line 1238
    :pswitch_0
    const/4 v4, 0x0

    .line 1239
    sget-boolean v13, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v13, :cond_3

    const-string/jumbo v13, "requestShow IME_SHOW_DELAYED"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1235
    :pswitch_1
    const/4 v10, 0x1

    .line 1236
    nop

    .line 1246
    :cond_3
    :goto_3
    goto :goto_4

    .line 1252
    :cond_4
    if-nez v1, :cond_5

    .line 1253
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->notifyHidden()V

    .line 1255
    :cond_5
    const/4 v10, 0x1

    .line 1257
    :goto_4
    if-nez v10, :cond_6

    .line 1261
    move-object/from16 v14, p3

    goto :goto_5

    .line 1263
    :cond_6
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v13

    .line 1264
    .local v13, "control":Landroid/view/InsetsSourceControl;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 1265
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    new-instance v12, Landroid/view/InsetsSourceControl;

    invoke-direct {v12, v13}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v14, p3

    invoke-virtual {v14, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1266
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v11

    or-int/2addr v3, v11

    goto :goto_5

    .line 1264
    :cond_7
    move-object/from16 v14, p3

    .line 1267
    if-nez v2, :cond_a

    .line 1268
    sget-boolean v15, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collectSourceControls no control for show(). fromIme: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_8
    if-eqz v1, :cond_9

    .line 1273
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v6

    iget-object v11, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1274
    invoke-interface {v11}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v11

    .line 1273
    const-string v15, "InsetsSourceConsumer#show"

    invoke-virtual {v6, v15, v11, v12}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1277
    :cond_9
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    goto :goto_5

    .line 1278
    :cond_a
    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    .line 1279
    if-eqz v1, :cond_b

    .line 1280
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v11

    iget-object v15, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1281
    invoke-interface {v15}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    .line 1280
    const-string v6, "InsetsSourceConsumer#hide"

    invoke-virtual {v11, v6, v15, v12}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1284
    :cond_b
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->hide()V

    .line 1221
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v9    # "show":Z
    .end local v10    # "canRun":Z
    .end local v13    # "control":Landroid/view/InsetsSourceControl;
    :cond_c
    :goto_5
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v7, p2

    move-object/from16 v14, p3

    .line 1287
    .end local v5    # "i":I
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V
    .locals 26
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "durationMs"    # J
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "animationType"    # I
    .param p10, "layoutInsetsDuringAnimation"    # I
    .param p11, "useInsetsAnimationThread"    # Z

    .line 1113
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p9

    move/from16 v10, p11

    iget v0, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int v0, p1, v0

    if-nez v0, :cond_11

    .line 1119
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v9, "InsetsController"

    if-ne v11, v1, :cond_2

    .line 1120
    iget v2, v14, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    and-int v2, p1, v2

    .line 1121
    .local v2, "disabledTypes":I
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user animation disabled types: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget v3, v14, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    not-int v3, v3

    and-int v3, p1, v3

    .line 1124
    .end local p1    # "types":I
    .local v3, "types":I
    if-eqz v12, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    iget-object v4, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 1125
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1128
    invoke-virtual {v14, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v0, v11}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    .line 1131
    .end local v2    # "disabledTypes":I
    :cond_1
    move v8, v3

    goto :goto_0

    .line 1119
    .end local v3    # "types":I
    .restart local p1    # "types":I
    :cond_2
    move/from16 v8, p1

    .line 1131
    .end local p1    # "types":I
    .local v8, "types":I
    :goto_0
    const/4 v7, 0x0

    if-nez v8, :cond_4

    .line 1133
    invoke-interface {v13, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1134
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1135
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "no types to animate in controlAnimationUnchecked"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_3
    return-void

    .line 1138
    :cond_4
    invoke-direct {v14, v8}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1139
    sget-boolean v2, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlAnimation types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_5
    iget v2, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v2, v8

    iput v2, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1142
    invoke-static {v8}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v6

    .line 1143
    .local v6, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v5, v2

    .line 1145
    .local v5, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct {v14, v12, v6, v5, v11}, Landroid/view/InsetsController;->collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 1147
    .local v3, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1148
    .local v16, "typesReady":I
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1149
    .local v17, "imeReady":Z
    sget-boolean v2, Landroid/view/InsetsController;->DEBUG:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    new-array v1, v1, [Ljava/lang/Object;

    .line 1150
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1149
    const-string v0, "controlAnimationUnchecked, typesReady: %s imeReady: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_6
    const-wide/16 v1, 0x8

    if-nez v17, :cond_9

    .line 1153
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1154
    new-instance v18, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v0, v18

    move-wide v11, v1

    move v1, v8

    move-object/from16 v2, p3

    move-object/from16 v19, v3

    move v7, v4

    .end local v3    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v19, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move-wide/from16 v3, p6

    move-object/from16 v20, v5

    .end local v5    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v20, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v5, p8

    move-object/from16 v21, v6

    .end local v6    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v21, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move/from16 v6, p9

    move v10, v7

    move/from16 v7, p10

    move/from16 v22, v8

    .end local v8    # "types":I
    .local v22, "types":I
    move-object/from16 v8, p2

    move-object v10, v9

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    .line 1158
    .local v0, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v0, v14, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1159
    iget-object v1, v14, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v14, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1160
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "Ime not ready. Create pending request"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_7
    if-eqz v15, :cond_8

    .line 1162
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v15, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1170
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1171
    const-string v1, "IC.showRequestFromApi"

    const/4 v2, 0x0

    invoke-static {v11, v12, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1172
    return-void

    .line 1175
    .end local v0    # "request":Landroid/view/InsetsController$PendingControlRequest;
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v20    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v21    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v22    # "types":I
    .restart local v3    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v5    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v6    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v8    # "types":I
    :cond_9
    move-wide v11, v1

    move-object/from16 v19, v3

    move v2, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v8

    move-object v10, v9

    .end local v3    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v5    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v6    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "types":I
    .restart local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v20    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v21    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v22    # "types":I
    if-nez v16, :cond_b

    .line 1176
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "No types ready. onCancelled()"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_a
    invoke-interface {v13, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1178
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1179
    return-void

    .line 1183
    :cond_b
    move v9, v2

    if-eqz p11, :cond_c

    .line 1184
    new-instance v18, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1186
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v23

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1187
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-object v15, v7

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v25, v10

    move/from16 v10, p9

    move/from16 v12, p9

    move/from16 v11, p10

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;)V

    goto :goto_1

    .line 1188
    :cond_c
    move-object v15, v7

    move-object/from16 v25, v10

    new-instance v18, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1190
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v12

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    :goto_1
    move-object/from16 v0, v18

    .line 1191
    .local v0, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, v16, v1

    if-eqz v1, :cond_d

    .line 1192
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1193
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1192
    const-string v3, "InsetsAnimationControlImpl"

    invoke-virtual {v1, v3, v2, v15}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1195
    :cond_d
    iget-object v1, v14, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    move/from16 v3, p9

    invoke-direct {v2, v0, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation added to runner. useInsetsAnimationThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v25

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    move/from16 v2, p11

    .line 1198
    :goto_2
    move-object/from16 v1, p2

    if-eqz v1, :cond_f

    .line 1199
    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v1, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const/4 v7, 0x0

    goto :goto_3

    .line 1203
    :cond_f
    const-string v4, "IC.pendingAnim"

    const-wide/16 v5, 0x8

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1205
    :goto_3
    if-nez p10, :cond_10

    .line 1206
    move/from16 v4, p5

    move/from16 v5, v22

    .end local v22    # "types":I
    .local v5, "types":I
    invoke-direct {v14, v5, v4}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_4

    .line 1208
    .end local v5    # "types":I
    .restart local v22    # "types":I
    :cond_10
    move/from16 v4, p5

    move/from16 v5, v22

    .end local v22    # "types":I
    .restart local v5    # "types":I
    invoke-direct {v14, v5, v7, v3, v4}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    .line 1210
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1211
    return-void

    .line 1114
    .end local v0    # "runner":Landroid/view/InsetsAnimationControlRunner;
    .end local v5    # "types":I
    .end local v16    # "typesReady":I
    .end local v17    # "imeReady":Z
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v20    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v21    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local p1    # "types":I
    :cond_11
    move v2, v10

    move v3, v11

    move v4, v12

    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start a new insets animation of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1115
    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while an existing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1116
    invoke-static {v6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is being cancelled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V
    .locals 14
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "fromIme"    # Z
    .param p5, "durationMs"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "animationType"    # I

    .line 1091
    move-object v12, p0

    iget-object v0, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1092
    move-object/from16 v13, p3

    invoke-interface {v13, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1093
    return-void

    .line 1095
    :cond_0
    move-object/from16 v13, p3

    if-eqz p4, :cond_1

    .line 1096
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1098
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1096
    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1101
    :cond_1
    iget-object v4, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 1102
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(I)I

    move-result v10

    const/4 v11, 0x0

    .line 1101
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1104
    return-void
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(I)I
    .locals 5
    .param p1, "types"    # I

    .line 1293
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1301
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1302
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1303
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    if-nez v3, :cond_0

    .line 1304
    goto :goto_1

    .line 1306
    :cond_0
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1307
    const/4 v2, 0x0

    return v2

    .line 1301
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1310
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private blacklist hideDirectly(IZIZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "animationFinished"    # Z
    .param p3, "animationType"    # I
    .param p4, "fromIme"    # Z

    .line 1558
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1559
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1560
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1559
    const-string v3, "InsetsController#hideDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1562
    :cond_0
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1563
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1564
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    .line 1563
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1566
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1568
    if-eqz p4, :cond_2

    .line 1569
    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1571
    :cond_2
    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .locals 4

    .line 1729
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1730
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1731
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    .line 1732
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1733
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1734
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 1733
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1736
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .locals 4
    .param p0, "controller"    # Landroid/view/InsetsController;
    .param p1, "type"    # Ljava/lang/Integer;

    .line 640
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 641
    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    .line 643
    :cond_0
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .locals 5
    .param p0, "alphaFraction"    # F

    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 234
    .local v1, "fraction":F
    const v2, 0x3eaaaaab

    .line 235
    .local v2, "fractionDelay":F
    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    .line 236
    return v0

    .line 238
    :cond_0
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    .line 239
    .local v3, "innerFraction":F
    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 6
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Landroid/graphics/Insets;
    .param p2, "endValue"    # Landroid/graphics/Insets;

    .line 327
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist showDirectly(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1574
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1575
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1576
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1575
    const-string v3, "InsetsController#showDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1578
    :cond_0
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1579
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1580
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    .line 1579
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1582
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1584
    if-eqz p2, :cond_2

    .line 1585
    const-wide/16 v3, 0x8

    const-string v1, "IC.showRequestFromIme"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1587
    :cond_2
    return-void
.end method

.method private blacklist startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V
    .locals 13
    .param p1, "fromState"    # Landroid/view/InsetsState;

    .line 836
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    return-void

    .line 839
    :cond_0
    const/4 v0, 0x0

    .line 840
    .local v0, "types":I
    const/4 v1, 0x0

    .line 841
    .local v1, "toState":Landroid/view/InsetsState;
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 842
    .local v2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 843
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 844
    .local v4, "type":I
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 845
    .local v5, "fromSource":Landroid/view/InsetsSource;
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 846
    .local v6, "toSource":Landroid/view/InsetsSource;
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 847
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 848
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 849
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 850
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 851
    :cond_1
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    .line 852
    if-nez v1, :cond_2

    .line 853
    new-instance v7, Landroid/view/InsetsState;

    invoke-direct {v7}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v7

    .line 855
    :cond_2
    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v1, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 842
    .end local v4    # "type":I
    .end local v5    # "fromSource":Landroid/view/InsetsSource;
    .end local v6    # "toSource":Landroid/view/InsetsSource;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 858
    .end local v3    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 859
    return-void

    .line 861
    :cond_5
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 862
    new-instance v3, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v5, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    sget-object v8, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x12c

    move-object v4, v3

    move-object v6, p1

    move-object v7, v1

    move v11, v0

    move-object v12, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 865
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v5, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method

.method private blacklist updateDisabledUserAnimationTypes(I)V
    .locals 5
    .param p1, "disabledUserAnimationTypes"    # I

    .line 803
    iget v0, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    xor-int/2addr v0, p1

    .line 804
    .local v0, "diff":I
    if-eqz v0, :cond_2

    .line 805
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 806
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 807
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 808
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 809
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 810
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 811
    goto :goto_1

    .line 805
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 814
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iput p1, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    .line 816
    :cond_2
    return-void
.end method

.method private blacklist updateRequestedVisibilities()V
    .locals 6

    .line 1490
    const/4 v0, 0x0

    .line 1491
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1492
    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1493
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    .line 1494
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1495
    goto :goto_1

    .line 1497
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    .line 1498
    .local v4, "requestedVisible":Z
    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v5

    if-eq v5, v4, :cond_1

    .line 1499
    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3, v4}, Landroid/view/InsetsVisibilities;->setVisibility(IZ)V

    .line 1500
    const/4 v0, 0x1

    .line 1491
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "type":I
    .end local v4    # "requestedVisible":Z
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1503
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1504
    if-nez v0, :cond_3

    .line 1505
    return-void

    .line 1507
    :cond_3
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->updateRequestedVisibilities(Landroid/view/InsetsVisibilities;)V

    .line 1508
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .locals 8
    .param p1, "newState"    # Landroid/view/InsetsState;

    .line 766
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "disabledUserAnimationTypes":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v1

    .line 769
    .local v2, "cancelledUserAnimationTypes":[I
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x18

    if-ge v3, v5, :cond_2

    .line 770
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 771
    .local v5, "source":Landroid/view/InsetsSource;
    if-nez v5, :cond_0

    goto :goto_1

    .line 772
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 773
    .local v6, "animationType":I
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 774
    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    .line 776
    .local v7, "insetsType":I
    or-int/2addr v0, v7

    .line 777
    if-ne v6, v4, :cond_1

    .line 779
    const/4 v6, -0x1

    .line 780
    aget v4, v2, v1

    or-int/2addr v4, v7

    aput v4, v2, v1

    .line 783
    .end local v7    # "insetsType":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    .line 769
    .end local v5    # "source":Landroid/view/InsetsSource;
    .end local v6    # "animationType":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 785
    .end local v3    # "type":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_2
    if-ge v3, v5, :cond_6

    .line 787
    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 788
    :cond_3
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 789
    .local v6, "source":Landroid/view/InsetsSource;
    if-nez v6, :cond_4

    goto :goto_3

    .line 790
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    if-nez v7, :cond_5

    .line 791
    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v7, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 785
    .end local v6    # "source":Landroid/view/InsetsSource;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 795
    .end local v3    # "type":I
    :cond_6
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->updateDisabledUserAnimationTypes(I)V

    .line 797
    aget v1, v2, v1

    if-eqz v1, :cond_7

    .line 798
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 1742
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 1745
    return-void
.end method

.method public blacklist applyAnimation(IZZ)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z

    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, "skipAnim":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1519
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1520
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1523
    .local v2, "imeControl":Landroid/view/InsetsSourceControl;
    :goto_0
    if-eqz v2, :cond_2

    .line 1524
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1525
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 1528
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v2    # "imeControl":Landroid/view/InsetsSourceControl;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/InsetsController;->applyAnimation(IZZZ)V

    .line 1529
    return-void
.end method

.method public blacklist applyAnimation(IZZZ)V
    .locals 14
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipAnim"    # Z

    .line 1534
    move-object v12, p0

    if-nez p1, :cond_1

    .line 1536
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "applyAnimation, nothing to animate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_0
    return-void

    .line 1540
    :cond_1
    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    .line 1541
    .local v13, "hasAnimationCallbacks":Z
    new-instance v7, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1542
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v4

    if-nez p4, :cond_3

    iget-boolean v0, v12, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v5, v0

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v1, -0x50

    .line 1543
    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v6

    move-object v0, v7

    move/from16 v1, p2

    move v2, v13

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZI)V

    move-object v3, v7

    .line 1547
    .local v3, "listener":Landroid/view/InsetsController$InternalAnimationControlListener;
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1549
    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 1550
    nop

    .line 1551
    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    .line 1547
    xor-int/lit8 v11, v13, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1553
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 1
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1377
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1378
    return-void
.end method

.method public blacklist calculateInsets(ZZIIIII)Landroid/view/WindowInsets;
    .locals 17
    .param p1, "isScreenRound"    # Z
    .param p2, "alwaysConsumeSystemBars"    # Z
    .param p3, "windowType"    # I
    .param p4, "windowingMode"    # I
    .param p5, "legacySoftInputMode"    # I
    .param p6, "legacyWindowFlags"    # I
    .param p7, "legacySystemUiFlags"    # I

    .line 875
    move-object/from16 v0, p0

    move/from16 v12, p3

    iput v12, v0, Landroid/view/InsetsController;->mWindowType:I

    .line 876
    move/from16 v13, p4

    iput v13, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    .line 877
    move/from16 v14, p5

    iput v14, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 878
    move/from16 v15, p6

    iput v15, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 879
    move/from16 v11, p7

    iput v11, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 880
    iget-object v1, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 883
    return-object v1
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .locals 6
    .param p1, "windowType"    # I
    .param p2, "windowingMode"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .line 891
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist cancelExistingAnimations()V
    .locals 1

    .line 1594
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1595
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 9
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1082
    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V

    .line 1084
    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1643
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 1642
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1645
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 1646
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1598
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1600
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1603
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1604
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1605
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1606
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1607
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1605
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1609
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1610
    return-void
.end method

.method public blacklist getAnimationType(I)I
    .locals 3
    .param p1, "type"    # I

    .line 1472
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1473
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1474
    .local v1, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsInternalType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    .line 1472
    .end local v1    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1478
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getHost()Landroid/view/InsetsController$Host;
    .locals 1

    .line 1772
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method blacklist getRequestedVisibilities()Landroid/view/InsetsVisibilities;
    .locals 1

    .line 1511
    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object v0
.end method

.method public blacklist getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;
    .locals 3
    .param p1, "type"    # I

    .line 1434
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1435
    .local v0, "controller":Landroid/view/InsetsSourceConsumer;
    if-eqz v0, :cond_0

    .line 1436
    return-object v0

    .line 1438
    :cond_0
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1439
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1440
    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 1

    .line 714
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 1

    .line 1669
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsAppearanceControlled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1671
    const/4 v0, 0x0

    return v0

    .line 1673
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 1

    .line 1701
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsBehaviorControlled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    const/4 v0, 0x0

    return v0

    .line 1705
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public whitelist hide(I)V
    .locals 1
    .param p1, "types"    # I

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->hide(IZ)V

    .line 1044
    return-void
.end method

.method public blacklist hide(IZ)V
    .locals 9
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1050
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG_PANIC:Z

    if-eqz v0, :cond_1

    .line 1051
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    sget v4, Landroid/view/InsetsController;->DEBUG_DEPTH:I

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string/jumbo v3, "hide: types=%d fromIme=%b callers=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "InsetsController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_1
    const-wide/16 v3, 0x8

    if-eqz p2, :cond_2

    .line 1055
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1056
    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 1055
    const-string v7, "InsetsController#hide"

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1057
    const-string v0, "IC.hideRequestFromIme"

    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    .line 1059
    :cond_2
    const-string v0, "IC.hideRequestFromApi"

    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1061
    :goto_0
    const/4 v0, 0x0

    .line 1062
    .local v0, "typesReady":I
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 1063
    .local v3, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_6

    .line 1064
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1065
    .local v5, "internalType":I
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 1066
    .local v6, "animationType":I
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v7

    .line 1067
    .local v7, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    :cond_3
    if-ne v6, v1, :cond_4

    .line 1070
    goto :goto_2

    .line 1072
    :cond_4
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v0, v8

    .line 1063
    .end local v5    # "internalType":I
    .end local v6    # "animationType":I
    .end local v7    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1074
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {p0, v0, v2, p2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 1075
    return-void
.end method

.method public blacklist isRequestedVisible(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 719
    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$controlAnimationUnchecked$5$android-view-InsetsController(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1163
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_1

    .line 1164
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_0
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1168
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$controlAnimationUnchecked$6$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 1
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1200
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1201
    return-void
.end method

.method synthetic blacklist lambda$new$3$android-view-InsetsController()V
    .locals 19

    .line 657
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 658
    iget-object v2, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    return-void

    .line 662
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v3, "finishedAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v4, Landroid/view/InsetsState;

    iget-object v5, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 665
    .local v4, "state":Landroid/view/InsetsState;
    iget-object v5, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    const-string v15, "InsetsController"

    if-ltz v5, :cond_4

    .line 666
    iget-object v7, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsController$RunningAnimation;

    .line 667
    .local v7, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    sget-boolean v8, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Running animation type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/view/InsetsController$RunningAnimation;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    iget-object v8, v7, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 669
    .local v8, "runner":Landroid/view/InsetsAnimationControlRunner;
    instance-of v9, v8, Landroid/view/WindowInsetsAnimationController;

    if-eqz v9, :cond_3

    .line 674
    iget-boolean v9, v7, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v9, :cond_2

    .line 675
    invoke-interface {v8}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_2
    move-object v9, v8

    check-cast v9, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v9, v4}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 679
    invoke-interface {v8}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v7    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v8    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 684
    .end local v5    # "i":I
    :cond_4
    iget-object v8, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v5, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 685
    invoke-virtual {v5}, Landroid/view/WindowInsets;->isRound()Z

    move-result v10

    iget-object v5, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v5}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v11

    iget v12, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v13, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v14, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget v5, v0, Landroid/view/InsetsController;->mWindowType:I

    iget v7, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    const/16 v17, 0x0

    .line 684
    move/from16 v16, v7

    move-object v7, v4

    move-object/from16 v18, v15

    move v15, v5

    invoke-virtual/range {v7 .. v17}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v5

    .line 688
    .local v5, "insets":Landroid/view/WindowInsets;
    iget-object v7, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 689
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 688
    invoke-interface {v7, v5, v8}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 690
    sget-boolean v7, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 691
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowInsetsAnimation;

    .line 692
    .local v8, "anim":Landroid/view/WindowInsetsAnimation;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 693
    invoke-virtual {v8}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v8}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v6

    .line 692
    const-string v10, "Running animation type: %d, progress: %f"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v18

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v8    # "anim":Landroid/view/WindowInsetsAnimation;
    goto :goto_1

    .line 697
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 698
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, v6}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 697
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 700
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method synthetic blacklist lambda$startAnimation$7$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 6
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "types"    # I
    .param p3, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p4, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .param p5, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1619
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    return-void

    .line 1623
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1624
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1625
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1626
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 1627
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_1

    .line 1628
    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    .line 1625
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1631
    .end local v0    # "i":I
    :cond_2
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1632
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 1633
    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 1634
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 1635
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 1636
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 1637
    return-void
.end method

.method synthetic blacklist lambda$updateState$4$android-view-InsetsController([I)V
    .locals 1
    .param p1, "cancelledUserAnimationTypes"    # [I

    .line 798
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .locals 5
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1381
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    .line 1382
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1383
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1384
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1385
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_0

    .line 1386
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1382
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1389
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    .line 1390
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1392
    :cond_2
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 5
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 1347
    const/4 v0, 0x0

    .line 1348
    .local v0, "isRunning":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1349
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v3, p1, :cond_0

    .line 1350
    const/4 v0, 0x1

    .line 1351
    goto :goto_1

    .line 1348
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1354
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const-string v1, "InsetsController"

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1355
    const-string/jumbo v2, "notifyFinished. No animation running, is it cancelled in controlAnimationUnchecked?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void

    .line 1360
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1361
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyFinished. shown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_3
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1365
    return-void

    .line 1367
    :cond_4
    if-eqz p2, :cond_5

    .line 1368
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-direct {p0, v1, v2}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_2

    .line 1370
    :cond_5
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    .line 1371
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    .line 1370
    invoke-direct {p0, v1, v2, v3, v2}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    .line 1373
    :goto_2
    return-void
.end method

.method public blacklist notifyVisibilityChanged()V
    .locals 1

    .line 1445
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1446
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .locals 13
    .param p1, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 899
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 900
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 901
    .local v3, "activeControl":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_0

    .line 903
    iget-object v4, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 900
    .end local v3    # "activeControl":Landroid/view/InsetsSourceControl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 908
    :cond_1
    const/4 v1, 0x0

    .line 909
    .local v1, "requestedVisibilityStale":Z
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 910
    .local v3, "showTypes":[I
    new-array v4, v2, [I

    .line 913
    .local v4, "hideTypes":[I
    iget-object v5, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 914
    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceConsumer;

    .line 915
    .local v6, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    .line 919
    .local v7, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v6, v7, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 913
    .end local v6    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v7    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 923
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .restart local v5    # "i":I
    :goto_2
    if-ltz v5, :cond_8

    .line 924
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceControl;

    .line 925
    .local v6, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    .line 926
    .local v7, "type":I
    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 927
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v8, v6, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 929
    if-nez v1, :cond_7

    .line 930
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v9

    .line 935
    .local v9, "requestedVisible":Z
    iget-object v10, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 936
    invoke-virtual {v10, v7}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v10

    if-eq v9, v10, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move v10, v0

    .line 940
    .local v10, "requestedVisibilityChanged":Z
    :goto_3
    const/16 v11, 0x13

    if-ne v7, v11, :cond_4

    if-eqz v9, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move v11, v0

    .line 942
    .local v11, "imeRequestedVisible":Z
    :goto_4
    if-nez v10, :cond_6

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v12, v0

    goto :goto_6

    :cond_6
    :goto_5
    move v12, v2

    :goto_6
    move v1, v12

    .line 923
    .end local v6    # "control":Landroid/view/InsetsSourceControl;
    .end local v7    # "type":I
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v9    # "requestedVisible":Z
    .end local v10    # "requestedVisibilityChanged":Z
    .end local v11    # "imeRequestedVisible":Z
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 946
    .end local v5    # "i":I
    :cond_8
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 948
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .restart local v5    # "i":I
    :goto_7
    if-ltz v5, :cond_9

    .line 949
    iget-object v6, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    iget-object v6, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v6, v7}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 948
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 952
    .end local v5    # "i":I
    :cond_9
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 956
    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v5

    .line 957
    .local v5, "animatingTypes":I
    aget v6, v3, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v3, v0

    .line 958
    aget v6, v4, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 960
    aget v6, v3, v0

    if-eqz v6, :cond_a

    .line 961
    aget v6, v3, v0

    invoke-virtual {p0, v6, v2, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 963
    :cond_a
    aget v2, v4, v0

    if-eqz v2, :cond_b

    .line 964
    aget v2, v4, v0

    invoke-virtual {p0, v2, v0, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 968
    :cond_b
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 969
    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 705
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 709
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 710
    return-void
.end method

.method public blacklist onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V
    .locals 1
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1483
    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1484
    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .locals 6
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "stateChanged":Z
    sget-boolean v1, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 730
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    invoke-direct {p0}, Landroid/view/InsetsController;->captionInsetsUnchanged()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    move v0, v1

    goto :goto_2

    .line 734
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .line 737
    :goto_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 738
    return v2

    .line 746
    :cond_3
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    const-string v4, "InsetsController"

    if-nez v1, :cond_4

    sget-boolean v1, Landroid/view/InsetsController;->DEBUG_PANIC:Z

    if-eqz v1, :cond_5

    .line 747
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateChanged: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " callers="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v5, Landroid/view/InsetsController;->DEBUG_DEPTH:I

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_5
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 752
    new-instance v1, Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v1, v5, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 753
    .local v1, "lastState":Landroid/view/InsetsState;
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 754
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 756
    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v5, v1, v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 758
    sget-boolean v2, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "onStateChanged, notifyInsetsChanged"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_6
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 760
    invoke-direct {p0, v1}, Landroid/view/InsetsController;->startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V

    .line 762
    :cond_7
    return v3
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1
    .param p1, "hasViewFocused"    # Z

    .line 1460
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1461
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    .line 1467
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1468
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1756
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 1757
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 1750
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1752
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 1761
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1762
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1763
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1764
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1765
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1766
    invoke-virtual {v3, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 1763
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1769
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 2
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1651
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1656
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1

    .line 1657
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 1658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 1660
    :cond_1
    return-void

    .line 1652
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 1654
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 1710
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 1711
    return-void
.end method

.method public blacklist setCaptionInsetsHeight(I)V
    .locals 6
    .param p1, "height"    # I

    .line 1679
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_0

    .line 1680
    return-void

    .line 1682
    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-eq v0, p1, :cond_2

    .line 1683
    iput p1, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 1684
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 1685
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    goto :goto_0

    .line 1688
    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 1690
    :goto_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1692
    :cond_2
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 1
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 1664
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 1665
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1
    .param p1, "behavior"    # I

    .line 1696
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 1697
    return-void
.end method

.method public whitelist show(I)V
    .locals 1
    .param p1, "types"    # I

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->show(IZ)V

    .line 974
    return-void
.end method

.method public blacklist show(IZ)V
    .locals 15
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 980
    move-object v12, p0

    move/from16 v13, p2

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "InsetsController"

    const/4 v5, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG_PANIC:Z

    if-eqz v0, :cond_1

    .line 981
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v3

    sget v6, Landroid/view/InsetsController;->DEBUG_DEPTH:I

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const-string/jumbo v6, "show: types=%d fromIme=%b callers=%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int v0, p1, v0

    if-eqz v0, :cond_2

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show(ime(), fromIme="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_2
    const/4 v0, 0x0

    const-string v6, "IC.showRequestFromApiToImeReady"

    const-wide/16 v7, 0x8

    if-eqz v13, :cond_3

    .line 988
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v9

    iget-object v10, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 989
    invoke-interface {v10}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 988
    const-string v11, "InsetsController#show"

    invoke-virtual {v9, v11, v10, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 990
    invoke-static {v7, v8, v6, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 991
    const-string v6, "IC.showRequestFromIme"

    invoke-static {v7, v8, v6, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    .line 993
    :cond_3
    const-string v9, "IC.showRequestFromApi"

    invoke-static {v7, v8, v9, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 994
    invoke-static {v7, v8, v6, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 997
    :goto_0
    if-eqz v13, :cond_4

    iget-object v6, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v6, :cond_4

    .line 998
    iget-object v14, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 999
    .local v14, "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1000
    iget-object v0, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1011
    return-void

    .line 1016
    .end local v14    # "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    :cond_4
    const/4 v0, 0x0

    .line 1017
    .local v0, "typesReady":I
    invoke-static/range {p1 .. p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v6

    .line 1018
    .local v6, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    sub-int/2addr v7, v3

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_a

    .line 1019
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1020
    .local v8, "internalType":I
    invoke-virtual {p0, v8}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v9

    .line 1021
    .local v9, "animationType":I
    invoke-virtual {p0, v8}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v10

    .line 1022
    .local v10, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v10}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    :cond_5
    if-nez v9, :cond_7

    .line 1026
    :cond_6
    sget-boolean v11, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v11, :cond_9

    new-array v11, v1, [Ljava/lang/Object;

    .line 1028
    invoke-virtual {v10}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v3

    invoke-virtual {v10}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v11, v2

    .line 1026
    const-string/jumbo v14, "show ignored for type: %d animType: %d requestedVisible: %s"

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1031
    :cond_7
    if-eqz v13, :cond_8

    if-ne v9, v2, :cond_8

    .line 1033
    goto :goto_2

    .line 1035
    :cond_8
    invoke-virtual {v10}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v11

    or-int/2addr v0, v11

    .line 1018
    .end local v8    # "internalType":I
    .end local v9    # "animationType":I
    .end local v10    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_9
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1037
    .end local v7    # "i":I
    :cond_a
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show typesReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_b
    invoke-virtual {p0, v0, v3, v13}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 1039
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 9
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 1617
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 1618
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 1638
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(IZZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "visible"    # Z
    .param p3, "hasControl"    # Z

    .line 1453
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(IZZ)V

    .line 1454
    return-void
.end method
