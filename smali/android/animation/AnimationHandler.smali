.class public Landroid/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroid/animation/AnimationHandler$AnimationFrameCallback;,
        Landroid/animation/AnimationHandler$MyFrameCallbackProvider;
    }
.end annotation


# static fields
.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "AnimationHandler"

.field public static final greylist-max-o sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sAnimatorPausingEnabled:Z

.field private static blacklist sOverrideAnimatorPausingSystemProperty:Z


# instance fields
.field private final greylist-max-o mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAnimatorRequestors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCommitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mListDirty:Z

.field private final blacklist mPausedAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPauser:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationCallbacks(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcommitAnimationFrame(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/animation/AnimationHandler;->commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoAnimationFrame(Landroid/animation/AnimationHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/animation/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProvider(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Landroid/animation/AnimationHandler;->isPauseBgAnimationsEnabledInSystemProperties()Z

    move-result v0

    sput-boolean v0, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Landroid/animation/AnimationHandler;->sOverrideAnimatorPausingSystemProperty:Z

    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    .line 83
    new-instance v0, Landroid/animation/AnimationHandler$1;

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler$1;-><init>(Landroid/animation/AnimationHandler;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 216
    new-instance v0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;-><init>(Landroid/animation/AnimationHandler;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mPauser:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method private greylist-max-o cleanUpList()V
    .locals 2

    .line 379
    iget-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 381
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 382
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 387
    :cond_2
    return-void
.end method

.method private greylist-max-o commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 1
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "frameTime"    # J

    .line 322
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {p1, p2, p3}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->commitAnimationFrame(J)V

    .line 325
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    return-void
.end method

.method private greylist-max-o doAnimationFrame(J)V
    .locals 7
    .param p1, "frameTime"    # J

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 300
    .local v0, "currentTime":J
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 301
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 302
    iget-object v4, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 303
    .local v4, "callback":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v4, :cond_0

    .line 304
    goto :goto_1

    .line 306
    :cond_0
    invoke-direct {p0, v4, v0, v1}, Landroid/animation/AnimationHandler;->isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    invoke-interface {v4, p1, p2}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 308
    iget-object v5, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimationHandler$2;

    invoke-direct {v6, p0, v4}, Landroid/animation/AnimationHandler$2;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    invoke-interface {v5, v6}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postCommitCallback(Ljava/lang/Runnable;)V

    .line 301
    .end local v4    # "callback":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->cleanUpList()V

    .line 319
    return-void
.end method

.method public static greylist-max-o getAnimationCount()I
    .locals 2

    .line 351
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    .line 352
    .local v0, "handler":Landroid/animation/AnimationHandler;
    if-nez v0, :cond_0

    .line 353
    const/4 v1, 0x0

    return v1

    .line 355
    :cond_0
    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getCallbackSize()I

    move-result v1

    return v1
.end method

.method private greylist-max-o getCallbackSize()I
    .locals 4

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "count":I
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 392
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 393
    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 397
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public static greylist-max-o getFrameDelay()J
    .locals 2

    .line 363
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o getInstance()Landroid/animation/AnimationHandler;
    .locals 2

    .line 97
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Landroid/animation/AnimationHandler;

    invoke-direct {v1}, Landroid/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private greylist-max-o getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    .line 245
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider-IA;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method private greylist-max-o isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "currentTime"    # J

    .line 336
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 337
    .local v0, "startTime":Ljava/lang/Long;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_1

    .line 341
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return v1

    .line 344
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isPauseBgAnimationsEnabledInSystemProperties()Z
    .locals 2

    .line 110
    sget-boolean v0, Landroid/animation/AnimationHandler;->sOverrideAnimatorPausingSystemProperty:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 112
    const-string v1, "framework.pause_bg_animations.enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    return v0
.end method

.method public static blacklist removeRequestor(Ljava/lang/Object;)V
    .locals 1
    .param p0, "requestor"    # Ljava/lang/Object;

    .line 144
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler;->removeRequestorImpl(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private blacklist removeRequestorImpl(Ljava/lang/Object;)V
    .locals 1
    .param p1, "requestor"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 151
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public static blacklist requestAnimatorsEnabled(ZLjava/lang/Object;)V
    .locals 1
    .param p0, "enable"    # Z
    .param p1, "requestor"    # Ljava/lang/Object;

    .line 170
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabledImpl(ZLjava/lang/Object;)V

    .line 171
    return-void
.end method

.method private blacklist requestAnimatorsEnabledImpl(ZLjava/lang/Object;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "requestor"    # Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    .line 175
    .local v0, "wasEmpty":Z
    invoke-static {}, Landroid/animation/AnimationHandler;->isPauseBgAnimationsEnabledInSystemProperties()Z

    move-result v1

    invoke-static {v1}, Landroid/animation/AnimationHandler;->setAnimatorPausingEnabled(Z)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 181
    :goto_0
    sget-boolean v1, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    if-nez v1, :cond_1

    .line 185
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->resumeAnimators()V

    .line 186
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 189
    .local v1, "isEmpty":Z
    if-eq v0, v1, :cond_3

    .line 191
    if-nez v1, :cond_2

    .line 193
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->resumeAnimators()V

    goto :goto_1

    .line 196
    :cond_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/AnimationHandler;->mPauser:Landroid/view/Choreographer$FrameCallback;

    .line 197
    invoke-static {}, Landroid/animation/Animator;->getBackgroundPauseDelay()J

    move-result-wide v4

    .line 196
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 206
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist resumeAnimators()V
    .locals 2

    .line 209
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mPauser:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 210
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 211
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    return-void
.end method

.method public static blacklist setAnimatorPausingEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 122
    sput-boolean p0, Landroid/animation/AnimationHandler;->sAnimatorPausingEnabled:Z

    .line 123
    return-void
.end method

.method public static greylist-max-o setFrameDelay(J)V
    .locals 1
    .param p0, "delay"    # J

    .line 359
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->setFrameDelay(J)V

    .line 360
    return-void
.end method

.method public static blacklist setOverrideAnimatorPausingSystemProperty(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 135
    sput-boolean p0, Landroid/animation/AnimationHandler;->sOverrideAnimatorPausingSystemProperty:Z

    .line 136
    return-void
.end method


# virtual methods
.method public greylist-max-o addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 3
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "delay"    # J

    .line 255
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 263
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_2
    return-void
.end method

.method public greylist-max-o addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 279
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    return-void
.end method

.method greylist-max-o autoCancelBasedOn(Landroid/animation/ObjectAnimator;)V
    .locals 3
    .param p1, "objectAnimator"    # Landroid/animation/ObjectAnimator;

    .line 367
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 368
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 369
    .local v1, "cb":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v1, :cond_0

    .line 370
    goto :goto_1

    .line 372
    :cond_0
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->shouldAutoCancel(Landroid/animation/AnimationHandler$AnimationFrameCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 367
    .end local v1    # "cb":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 376
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method synthetic blacklist lambda$new$0$android-animation-AnimationHandler(J)V
    .locals 6
    .param p1, "frameTimeNanos"    # J

    .line 217
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimatorRequestors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 222
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 223
    .local v1, "animator":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 225
    invoke-virtual {v1}, Landroid/animation/Animator;->isPaused()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mPausedAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v1}, Landroid/animation/Animator;->pause()V

    .line 221
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public greylist-max-o removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 289
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 292
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 293
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 296
    :cond_0
    return-void
.end method

.method public greylist-max-o setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider-IA;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0

    .line 240
    :cond_0
    iput-object p1, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 242
    :goto_0
    return-void
.end method
