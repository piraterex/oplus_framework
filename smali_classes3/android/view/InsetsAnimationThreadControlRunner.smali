.class public Landroid/view/InsetsAnimationThreadControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsAnimThreadRunner"


# instance fields
.field private final blacklist mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

.field private final blacklist mControl:Landroid/view/InsetsAnimationControlImpl;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseControls(Landroid/view/InsetsAnimationThreadControlRunner;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner;->releaseControls(Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;)V
    .locals 16
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "state"    # Landroid/view/InsetsState;
    .param p4, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p5, "types"    # I
    .param p6, "controller"    # Landroid/view/InsetsAnimationControlCallbacks;
    .param p7, "durationMs"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p10, "animationType"    # I
    .param p11, "layoutInsetsDuringAnimation"    # I
    .param p12, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p13, "mainThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "J",
            "Landroid/view/animation/Interpolator;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 115
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v7, Landroid/view/InsetsAnimationThreadControlRunner$1;

    invoke-direct {v7, v0}, Landroid/view/InsetsAnimationThreadControlRunner$1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;)V

    iput-object v7, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    .line 116
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    .line 117
    move-object/from16 v15, p6

    iput-object v15, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    .line 118
    new-instance v13, Landroid/view/InsetsAnimationControlImpl;

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    iput-object v14, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    .line 121
    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v2, v0, v4, v3}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method private blacklist releaseControls(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 3

    .line 174
    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsAnimationControlImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 140
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/InsetsAnimationControlImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 141
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimationType()I

    move-result v0

    return v0
.end method

.method public blacklist getControllingTypes()I
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getControllingTypes()I

    move-result v0

    return v0
.end method

.method public blacklist getTypes()I
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-view-InsetsAnimationThreadControlRunner(ILandroid/view/WindowInsetsAnimationControlListener;)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 122
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InsetsAsyncAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 127
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 128
    return-void
.end method

.method public blacklist notifyControlRevoked(I)V
    .locals 1
    .param p1, "types"    # I

    .line 158
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1}, Landroid/view/InsetsAnimationControlImpl;->notifyControlRevoked(I)V

    .line 159
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1, p1}, Landroid/view/InsetsAnimationControlImpl;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
