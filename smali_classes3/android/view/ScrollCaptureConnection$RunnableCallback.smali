.class final Landroid/view/ScrollCaptureConnection$RunnableCallback;
.super Landroid/view/ScrollCaptureConnection$SafeCallback;
.source "ScrollCaptureConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ScrollCaptureConnection$SafeCallback<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "target"    # Ljava/lang/Runnable;

    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScrollCaptureConnection$SafeCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 320
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 324
    new-instance v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureConnection$RunnableCallback;->maybeAccept(Ljava/util/function/Consumer;)V

    .line 325
    return-void
.end method
