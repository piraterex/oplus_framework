.class final Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IPlayerShell"
.end annotation


# instance fields
.field private volatile greylist-max-o mIPlayer:Landroid/media/IPlayer;

.field final greylist-max-o mMonitor:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V
    .locals 0
    .param p1, "monitor"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "iplayer"    # Landroid/media/IPlayer;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    .line 604
    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    .line 605
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 3

    .line 627
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v0, :cond_1

    .line 628
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPlayerShell binderDied for piid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$fgetmPlayerIId(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$mplayerDied(Landroid/media/AudioPlaybackConfiguration;)V

    goto :goto_0

    .line 630
    :cond_1
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPlayerShell binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_2
    :goto_0
    return-void
.end method

.method greylist-max-o getIPlayer()Landroid/media/IPlayer;
    .locals 1

    .line 623
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    return-object v0
.end method

.method declared-synchronized greylist-max-o monitorDeath()V
    .locals 4

    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 609
    monitor-exit p0

    return-void

    .line 612
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    goto :goto_0

    .line 613
    .end local p0    # "this":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v1, :cond_1

    .line 615
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link to client death for piid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$fgetmPlayerIId(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 617
    :cond_1
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o release()V
    .locals 2

    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 635
    monitor-exit p0

    return-void

    .line 637
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    .line 639
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 633
    .end local p0    # "this":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
