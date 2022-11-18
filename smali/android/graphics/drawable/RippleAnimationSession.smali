.class public final Landroid/graphics/drawable/RippleAnimationSession;
.super Ljava/lang/Object;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;,
        Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
    }
.end annotation


# static fields
.field private static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final blacklist MAX_NOISE_PHASE:J = 0x20L

.field private static final blacklist NOISE_ANIMATION_DURATION:J = 0x1b58L

.field private static final blacklist TAG:Ljava/lang/String; = "RippleAnimationSession"


# instance fields
.field private blacklist ENTER_ANIM_DURATION:I

.field private blacklist EXIT_ANIM_DURATION:I

.field private blacklist mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCurrentAnimation:Landroid/animation/Animator;

.field private blacklist mForceSoftware:Z

.field private blacklist mLoopAnimation:Landroid/animation/Animator;

.field private blacklist mOnSessionEnd:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/RippleAnimationSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnUpdate:Ljava/lang/Runnable;

.field private final blacklist mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRippleAnimationSessionExtImpl:Landroid/graphics/drawable/IRippleAnimationSessionExt;

.field private blacklist mStartTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnSessionEnd(Landroid/graphics/drawable/RippleAnimationSession;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnSessionEnd:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAnimationEnd(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/graphics/drawable/RippleAnimationSession;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;Z)V
    .locals 1
    .param p2, "forceSoftware"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;Z)V"
        }
    .end annotation

    .line 73
    .local p1, "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Landroid/graphics/drawable/IRippleAnimationSessionExt;

    .line 51
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/IRippleAnimationSessionExt;

    iput-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mRippleAnimationSessionExtImpl:Landroid/graphics/drawable/IRippleAnimationSessionExt;

    .line 52
    invoke-interface {v0}, Landroid/graphics/drawable/IRippleAnimationSessionExt;->getEnterAnimationDuration()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->ENTER_ANIM_DURATION:I

    .line 53
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mRippleAnimationSessionExtImpl:Landroid/graphics/drawable/IRippleAnimationSessionExt;

    invoke-interface {v0}, Landroid/graphics/drawable/IRippleAnimationSessionExt;->getExitAnimationDuration()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->EXIT_ANIM_DURATION:I

    .line 74
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 75
    iput-boolean p2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    .line 76
    return-void
.end method

.method private blacklist computeDelay()J
    .locals 6

    .line 151
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    sub-long/2addr v0, v2

    .line 152
    .local v0, "timePassed":J
    iget v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->ENTER_ANIM_DURATION:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private blacklist enterHardware(Landroid/graphics/RecordingCanvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v0

    .line 197
    .local v0, "props":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator;

    .line 198
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/CanvasProperty;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 199
    .local v1, "expand":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 200
    new-instance v2, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getNoisePhase()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/CanvasProperty;

    iget-wide v4, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    const-wide/16 v6, 0x20

    add-long/2addr v4, v6

    long-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 202
    .local v2, "loop":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v2, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 203
    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/RippleAnimationSession;->startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 204
    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 205
    return-void
.end method

.method private blacklist enterSoftware()V
    .locals 6

    .line 232
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 233
    .local v1, "expand":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    new-array v0, v0, [F

    iget-wide v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    long-to-float v4, v2

    const/4 v5, 0x0

    aput v4, v0, v5

    const-wide/16 v4, 0x20

    add-long/2addr v2, v4

    long-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 238
    .local v0, "loop":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/RippleAnimationSession;->startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 243
    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 244
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private blacklist exitHardware(Landroid/graphics/RecordingCanvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v0

    .line 167
    .local v0, "props":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator;

    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/CanvasProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 169
    .local v1, "exit":Landroid/graphics/animation/RenderNodeAnimator;
    iget v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->EXIT_ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 170
    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession$2;

    invoke-direct {v2, p0, p0, v1}, Landroid/graphics/drawable/RippleAnimationSession$2;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-virtual {v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    invoke-virtual {v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 183
    iget-object v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mRippleAnimationSessionExtImpl:Landroid/graphics/drawable/IRippleAnimationSessionExt;

    invoke-interface {v2}, Landroid/graphics/drawable/IRippleAnimationSessionExt;->getExitAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->computeDelay()J

    move-result-wide v2

    .line 189
    .local v2, "delay":J
    invoke-virtual {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setStartDelay(J)V

    .line 190
    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->start()V

    .line 191
    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 192
    return-void
.end method

.method private blacklist exitSoftware()V
    .locals 3

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 129
    .local v0, "expand":Landroid/animation/ValueAnimator;
    iget v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->EXIT_ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->computeDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 131
    new-instance v1, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    new-instance v1, Landroid/graphics/drawable/RippleAnimationSession$1;

    invoke-direct {v1, p0, p0, v0}, Landroid/graphics/drawable/RippleAnimationSession$1;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    sget-object v1, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    iput-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 148
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist notifyUpdate()V
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnUpdate:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 157
    :cond_0
    return-void
.end method

.method private blacklist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 106
    return-void
.end method

.method private blacklist startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 2
    .param p1, "expand"    # Landroid/animation/Animator;
    .param p2, "loop"    # Landroid/animation/Animator;

    .line 208
    iget v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->ENTER_ANIM_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 209
    new-instance v0, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;-><init>(Landroid/graphics/drawable/RippleAnimationSession;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mRippleAnimationSessionExtImpl:Landroid/graphics/drawable/IRippleAnimationSessionExt;

    invoke-interface {v0}, Landroid/graphics/drawable/IRippleAnimationSessionExt;->getEnterAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 217
    const-wide/16 v0, 0x1b58

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 218
    new-instance v0, Landroid/graphics/drawable/RippleAnimationSession$3;

    invoke-direct {v0, p0, p0}, Landroid/graphics/drawable/RippleAnimationSession$3;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    sget-object v0, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 227
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 228
    :cond_0
    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    .line 229
    return-void
.end method

.method private blacklist useRTAnimations(Landroid/graphics/Canvas;)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 120
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 122
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 123
    .local v0, "hwCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v2, v0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method blacklist end()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 96
    :cond_0
    return-void
.end method

.method blacklist enter(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 83
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    .line 84
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->useRTAnimations(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleAnimationSession;->enterHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->enterSoftware()V

    .line 89
    :goto_0
    return-object p0
.end method

.method blacklist exit(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 99
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->useRTAnimations(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleAnimationSession;->exitHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->exitSoftware()V

    .line 101
    :goto_0
    return-object p0
.end method

.method blacklist getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 263
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 264
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 265
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 266
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getNoisePhase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v5

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 267
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getPaint()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 268
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v7

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 269
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getColor()I

    move-result v8

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 270
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    return-object v0
.end method

.method blacklist getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    return-object v0
.end method

.method blacklist isForceSoftware()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    return v0
.end method

.method synthetic blacklist lambda$enterSoftware$1$android-graphics-drawable-RippleAnimationSession(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "expand"    # Landroid/animation/ValueAnimator;
    .param p2, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    .line 234
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 235
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    .line 236
    return-void
.end method

.method synthetic blacklist lambda$enterSoftware$2$android-graphics-drawable-RippleAnimationSession(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "loop"    # Landroid/animation/ValueAnimator;
    .param p2, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    .line 239
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleShader;->setNoisePhase(F)V

    .line 241
    return-void
.end method

.method synthetic blacklist lambda$exitSoftware$0$android-graphics-drawable-RippleAnimationSession(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "expand"    # Landroid/animation/ValueAnimator;
    .param p2, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    .line 134
    return-void
.end method

.method blacklist setForceSoftwareAnimation(Z)Landroid/graphics/drawable/RippleAnimationSession;
    .locals 0
    .param p1, "forceSw"    # Z

    .line 160
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    .line 161
    return-object p0
.end method

.method blacklist setOnAnimationUpdated(Ljava/lang/Runnable;)Landroid/graphics/drawable/RippleAnimationSession;
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 115
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnUpdate:Ljava/lang/Runnable;

    .line 116
    return-object p0
.end method

.method blacklist setOnSessionEnd(Ljava/util/function/Consumer;)Landroid/graphics/drawable/RippleAnimationSession;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/RippleAnimationSession;",
            ">;)",
            "Landroid/graphics/drawable/RippleAnimationSession;"
        }
    .end annotation

    .line 110
    .local p1, "onSessionEnd":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/RippleAnimationSession;>;"
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnSessionEnd:Ljava/util/function/Consumer;

    .line 111
    return-object p0
.end method

.method blacklist setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setRadius(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setRadius(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    .line 253
    :cond_0
    return-void
.end method
