.class public final Landroid/graphics/HardwareRenderer$FrameRenderRequest;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameRenderRequest"
.end annotation


# instance fields
.field private blacklist mFrameInfo:Landroid/graphics/FrameInfo;

.field private blacklist mWaitForPresent:Z

.field final synthetic blacklist this$0:Landroid/graphics/HardwareRenderer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/graphics/HardwareRenderer$FrameRenderRequest;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->reset()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/HardwareRenderer;)V
    .locals 1
    .param p1, "this$0"    # Landroid/graphics/HardwareRenderer;

    .line 345
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Landroid/graphics/FrameInfo;

    invoke-direct {v0}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 345
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/HardwareRenderer;Landroid/graphics/HardwareRenderer$FrameRenderRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;-><init>(Landroid/graphics/HardwareRenderer;)V

    return-void
.end method

.method static synthetic blacklist lambda$setFrameCommitCallback$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "frameCommitCallback"    # Ljava/lang/Runnable;
    .param p2, "didProduceBuffer"    # Z

    .line 401
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist reset()V
    .locals 5

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mWaitForPresent:Z

    .line 351
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$fgetmRenderRequest(Landroid/graphics/HardwareRenderer;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 352
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 353
    return-void
.end method


# virtual methods
.method public whitelist setFrameCommitCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "frameCommitCallback"    # Ljava/lang/Runnable;

    .line 400
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$fgetmNativeProxy(Landroid/graphics/HardwareRenderer;)J

    move-result-wide v0

    new-instance v2, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 402
    return-object p0
.end method

.method public blacklist setFrameInfo(Landroid/graphics/FrameInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/graphics/FrameInfo;

    .line 357
    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    iget-object v1, v1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v2, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    return-void
.end method

.method public whitelist setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .locals 13
    .param p1, "vsyncTime"    # J

    .line 377
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    const-wide/16 v5, -0x1

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v11, -0x1

    move-wide v1, p1

    move-wide v3, p1

    move-wide v9, p1

    invoke-virtual/range {v0 .. v12}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    .line 379
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/FrameInfo;->addFlags(J)V

    .line 380
    return-object p0
.end method

.method public whitelist setWaitForPresent(Z)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .locals 0
    .param p1, "shouldWait"    # Z

    .line 421
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mWaitForPresent:Z

    .line 422
    return-object p0
.end method

.method public whitelist syncAndDraw()I
    .locals 2

    .line 435
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->syncAndDrawFrame(Landroid/graphics/FrameInfo;)I

    move-result v0

    .line 436
    .local v0, "syncResult":I
    iget-boolean v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mWaitForPresent:Z

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v1}, Landroid/graphics/HardwareRenderer;->fence()V

    .line 439
    :cond_0
    return v0
.end method
