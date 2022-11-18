.class final Landroid/media/AudioManager$BlockingFocusResultReceiver;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingFocusResultReceiver"
.end annotation


# instance fields
.field private final greylist-max-o mFocusClientId:Ljava/lang/String;

.field private greylist-max-o mFocusRequestResult:I

.field private final greylist-max-o mLock:Landroid/media/AudioManager$SafeWaitObject;

.field private greylist-max-o mResultReceived:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;

    .line 4809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4802
    new-instance v0, Landroid/media/AudioManager$SafeWaitObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioManager$SafeWaitObject;-><init>(Landroid/media/AudioManager$SafeWaitObject-IA;)V

    iput-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    .line 4803
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    .line 4806
    iput v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    .line 4810
    iput-object p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusClientId:Ljava/lang/String;

    .line 4811
    return-void
.end method


# virtual methods
.method greylist-max-o notifyResult(I)V
    .locals 2
    .param p1, "requestResult"    # I

    .line 4817
    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    .line 4818
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    .line 4819
    iput p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    .line 4820
    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1}, Landroid/media/AudioManager$SafeWaitObject;->safeNotify()V

    .line 4821
    monitor-exit v0

    .line 4822
    return-void

    .line 4821
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o receivedResult()Z
    .locals 1

    .line 4813
    iget-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    return v0
.end method

.method greylist-max-o requestResult()I
    .locals 1

    .line 4814
    iget v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    return v0
.end method

.method public greylist-max-o waitForResult(J)V
    .locals 2
    .param p1, "timeOutMs"    # J

    .line 4825
    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    .line 4826
    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    if-eqz v1, :cond_0

    .line 4828
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 4831
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1, p1, p2}, Landroid/media/AudioManager$SafeWaitObject;->safeWait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4832
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 4833
    :try_start_2
    monitor-exit v0

    .line 4834
    return-void

    .line 4833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
