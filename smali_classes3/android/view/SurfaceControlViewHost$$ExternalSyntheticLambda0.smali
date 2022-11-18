.class public final synthetic Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist finished(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
