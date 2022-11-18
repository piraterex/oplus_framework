.class Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
.super Landroid/os/renderacc/IRenderAcceleratingStateListener$Stub;
.source "RenderAcceleratingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/renderacc/RenderAcceleratingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderAcceleratingStateListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mListener:Landroid/os/renderacc/RenderAcceleratingStateListener;

.field final synthetic blacklist this$0:Landroid/os/renderacc/RenderAcceleratingManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/renderacc/RenderAcceleratingManager;Ljava/util/concurrent/ExecutorService;Landroid/os/renderacc/RenderAcceleratingStateListener;)V
    .locals 0
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "listener"    # Landroid/os/renderacc/RenderAcceleratingStateListener;

    .line 454
    iput-object p1, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;->this$0:Landroid/os/renderacc/RenderAcceleratingManager;

    invoke-direct {p0}, Landroid/os/renderacc/IRenderAcceleratingStateListener$Stub;-><init>()V

    .line 455
    iput-object p3, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;->mListener:Landroid/os/renderacc/RenderAcceleratingStateListener;

    .line 456
    iput-object p2, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 457
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onStateReport$0$android-os-renderacc-RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate(I)V
    .locals 1
    .param p1, "state"    # I

    .line 473
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;->mListener:Landroid/os/renderacc/RenderAcceleratingStateListener;

    invoke-interface {v0, p1}, Landroid/os/renderacc/RenderAcceleratingStateListener;->onStateReport(I)V

    return-void
.end method

.method public blacklist onStateReport(I)V
    .locals 2
    .param p1, "state"    # I

    .line 473
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method
