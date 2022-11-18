.class public Landroid/view/SyncRtSurfaceTransactionApplier;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_ALL:I = -0x1

.field public static final blacklist FLAG_ALPHA:I = 0x1

.field public static final blacklist FLAG_BACKGROUND_BLUR_RADIUS:I = 0x20

.field public static final blacklist FLAG_CORNER_RADIUS:I = 0x10

.field public static final blacklist FLAG_LAYER:I = 0x8

.field public static final blacklist FLAG_MATRIX:I = 0x2

.field public static final blacklist FLAG_TRANSACTION:I = 0x80

.field public static final blacklist FLAG_VISIBILITY:I = 0x40

.field public static final blacklist FLAG_WINDOW_CROP:I = 0x4


# instance fields
.field private blacklist mTargetSc:Landroid/view/SurfaceControl;

.field private final blacklist mTargetViewRootImpl:Landroid/view/ViewRootImpl;

.field private final blacklist mTmpFloat9:[F


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 52
    return-void
.end method

.method public static blacklist applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V
    .locals 2
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "params"    # Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .param p2, "tmpFloat9"    # [F

    .line 105
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 110
    :cond_0
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    :cond_1
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 117
    :cond_2
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 120
    :cond_3
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 123
    :cond_4
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 126
    :cond_5
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 129
    :cond_6
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 130
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->backgroundBlurRadius:I

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 132
    :cond_7
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 133
    iget-boolean v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->visible:Z

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 136
    :cond_8
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 139
    :cond_9
    :goto_0
    return-void

    .line 106
    :cond_a
    :goto_1
    const-string v0, "SyncRtSurfaceTransactionApplier"

    const-string v1, "applyParams error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static blacklist create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SyncRtSurfaceTransactionApplier;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SyncRtSurfaceTransactionApplier;>;"
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {v0, p0}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$1;

    invoke-direct {v0, p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$1;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 168
    :goto_0
    return-void
.end method


# virtual methods
.method varargs blacklist applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 87
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 88
    aget-object v1, p2, v0

    .line 89
    .local v1, "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v2, v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 90
    .local v2, "surface":Landroid/view/SurfaceControl;
    iget-object v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    invoke-static {p1, v1, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 87
    .end local v1    # "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .end local v2    # "surface":Landroid/view/SurfaceControl;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method blacklist applyTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frame"    # J

    .line 95
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 100
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$scheduleApply$0$android-view-SyncRtSurfaceTransactionApplier(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frame"    # J

    .line 68
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 74
    return-void
.end method

.method public varargs blacklist scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 3
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 60
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    .line 64
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 65
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 67
    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;-><init>(Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 77
    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 78
    return-void
.end method
