.class Landroid/media/AudioManager$5;
.super Landroid/media/IAudioServerStateDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 7607
    iput-object p1, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioServerStateDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchAudioServerStateChange$0(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioManager$AudioServerStateCallback;

    .line 7622
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerUp()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchAudioServerStateChange$1(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioManager$AudioServerStateCallback;

    .line 7624
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerDown()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchAudioServerStateChange(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 7613
    iget-object v0, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmAudioServerStateCbLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7614
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmAudioServerStateExec(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 7615
    .local v1, "exec":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmAudioServerStateCb(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;

    move-result-object v2

    .line 7616
    .local v2, "cb":Landroid/media/AudioManager$AudioServerStateCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7618
    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7621
    :cond_0
    if-eqz p1, :cond_1

    .line 7622
    new-instance v0, Landroid/media/AudioManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroid/media/AudioManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7624
    :cond_1
    new-instance v0, Landroid/media/AudioManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/media/AudioManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7626
    :goto_0
    return-void

    .line 7619
    :cond_2
    :goto_1
    return-void

    .line 7616
    .end local v1    # "exec":Ljava/util/concurrent/Executor;
    .end local v2    # "cb":Landroid/media/AudioManager$AudioServerStateCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
