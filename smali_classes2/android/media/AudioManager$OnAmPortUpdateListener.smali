.class Landroid/media/AudioManager$OnAmPortUpdateListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAmPortUpdateListener"
.end annotation


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "OnAmPortUpdateListener"


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 7566
    iput-object p1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAmPortUpdateListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 0
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    .line 7579
    return-void
.end method

.method public greylist-max-o onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 3
    .param p1, "portList"    # [Landroid/media/AudioPort;

    .line 7569
    iget-object v0, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmDeviceCallbacks(Landroid/media/AudioManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 7570
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioManager;->-$$Nest$mbroadcastDeviceListChange_sync(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 7571
    monitor-exit v0

    .line 7572
    return-void

    .line 7571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onServiceDied()V
    .locals 3

    .line 7585
    iget-object v0, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmDeviceCallbacks(Landroid/media/AudioManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 7586
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioManager;->-$$Nest$mbroadcastDeviceListChange_sync(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 7587
    monitor-exit v0

    .line 7588
    return-void

    .line 7587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
