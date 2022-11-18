.class Landroid/media/AudioManager$4;
.super Landroid/media/IRecordingConfigDispatcher$Stub;
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

    .line 5675
    iput-object p1, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IRecordingConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchRecordingConfigChange(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 5678
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v0, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5679
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5681
    iget-object v2, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    .line 5682
    .local v2, "arci":Landroid/media/AudioManager$AudioRecordingCallbackInfo;
    iget-object v3, v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 5683
    iget-object v3, v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    iget-object v5, v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-direct {v4, v5, p1}, Landroid/media/AudioManager$RecordConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Ljava/util/List;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5686
    .local v3, "m":Landroid/os/Message;
    iget-object v4, v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5680
    .end local v2    # "arci":Landroid/media/AudioManager$AudioRecordingCallbackInfo;
    .end local v3    # "m":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5690
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 5691
    return-void

    .line 5690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
