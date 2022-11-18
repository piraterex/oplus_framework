.class public final synthetic Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsAnimationControlImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsAnimationControlImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;->f$0:Landroid/view/InsetsAnimationControlImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;->f$0:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->cancel()V

    return-void
.end method
