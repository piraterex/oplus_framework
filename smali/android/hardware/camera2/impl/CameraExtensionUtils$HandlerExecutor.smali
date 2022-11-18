.class public final Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;
.super Ljava/lang/Object;
.source "CameraExtensionUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runCmd"    # Ljava/lang/Runnable;

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "CameraExtensionUtils"

    const-string v2, "Handler thread unavailable, skipping message!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method
