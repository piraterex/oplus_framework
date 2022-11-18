.class Landroid/view/ThreadedRenderer$1;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ThreadedRenderer;

.field final synthetic blacklist val$frameCallbacks:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ThreadedRenderer;

    .line 696
    iput-object p1, p0, Landroid/view/ThreadedRenderer$1;->this$0:Landroid/view/ThreadedRenderer;

    iput-object p2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFrameDraw$0(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p0, "frameCommitCallbacks"    # Ljava/util/ArrayList;
    .param p1, "didProduceBuffer"    # Z

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 718
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    invoke-interface {v1, p1}, Landroid/graphics/HardwareRenderer$FrameCommitCallback;->onFrameCommit(Z)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 3
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v0, "frameCommitCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/HardwareRenderer$FrameCommitCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 705
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 706
    invoke-interface {v2, p1, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    move-result-object v2

    .line 707
    .local v2, "frameCommitCallback":Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    if-eqz v2, :cond_0

    .line 708
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v2    # "frameCommitCallback":Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    const/4 v1, 0x0

    return-object v1

    .line 716
    :cond_2
    new-instance v1, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0
    .param p1, "frame"    # J

    .line 699
    return-void
.end method
