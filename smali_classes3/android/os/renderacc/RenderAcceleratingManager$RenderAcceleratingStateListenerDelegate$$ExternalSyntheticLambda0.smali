.class public final synthetic Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;

    iput p2, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;

    iget v1, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;->lambda$onStateReport$0$android-os-renderacc-RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate(I)V

    return-void
.end method
