.class final Landroid/media/ImageReader$HandlerExecutor;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor blacklist <init>(Landroid/media/ImageReader;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1120
    iput-object p1, p0, Landroid/media/ImageReader$HandlerExecutor;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroid/media/ImageReader$HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 1122
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 1126
    iget-object v0, p0, Landroid/media/ImageReader$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1127
    return-void
.end method
