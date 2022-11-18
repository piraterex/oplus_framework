.class Landroid/view/InsetsController$PendingControlRequest;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingControlRequest"
.end annotation


# instance fields
.field final blacklist animationType:I

.field final blacklist cancellationSignal:Landroid/os/CancellationSignal;

.field final blacklist durationMs:J

.field final blacklist interpolator:Landroid/view/animation/Interpolator;

.field final blacklist layoutInsetsDuringAnimation:I

.field final blacklist listener:Landroid/view/WindowInsetsAnimationControlListener;

.field final blacklist types:I

.field final blacklist useInsetsAnimationThread:Z


# direct methods
.method constructor blacklist <init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "durationMs"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animationType"    # I
    .param p7, "layoutInsetsDuringAnimation"    # I
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p9, "useInsetsAnimationThread"    # Z

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, Landroid/view/InsetsController$PendingControlRequest;->types:I

    .line 570
    iput-object p2, p0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 571
    iput-wide p3, p0, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    .line 572
    iput-object p5, p0, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    .line 573
    iput p6, p0, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    .line 574
    iput p7, p0, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    .line 575
    iput-object p8, p0, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 576
    iput-boolean p9, p0, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    .line 577
    return-void
.end method
