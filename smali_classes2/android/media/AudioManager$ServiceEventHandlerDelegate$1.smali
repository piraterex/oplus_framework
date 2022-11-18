.class Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field final synthetic blacklist val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4220
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 4223
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AudioManager"

    packed-switch v0, :pswitch_data_0

    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4247
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    .line 4249
    .local v0, "cbData":Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;
    iget-object v2, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-eqz v2, :cond_1

    .line 4250
    invoke-static {}, Landroid/media/AudioManager;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4251
    const-string v2, "dispatching onPlaybackConfigChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :cond_0
    iget-object v1, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    iget-object v2, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 4255
    .end local v0    # "cbData":Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;
    :cond_1
    goto :goto_0

    .line 4237
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    .line 4239
    .local v0, "cbData":Landroid/media/AudioManager$RecordConfigChangeCallbackData;
    iget-object v2, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eqz v2, :cond_3

    .line 4240
    invoke-static {}, Landroid/media/AudioManager;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4241
    const-string v2, "dispatching onRecordingConfigChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    :cond_2
    iget-object v1, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    .line 4245
    .end local v0    # "cbData":Landroid/media/AudioManager$RecordConfigChangeCallbackData;
    :cond_3
    goto :goto_0

    .line 4225
    :pswitch_2
    iget-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    iget-object v0, v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/media/AudioManager;->-$$Nest$mfindFocusRequestInfo(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    .line 4226
    .local v0, "fri":Landroid/media/AudioManager$FocusRequestInfo;
    if-eqz v0, :cond_4

    .line 4227
    iget-object v2, v0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 4228
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    .line 4229
    .local v2, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    if-eqz v2, :cond_4

    .line 4230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatching onAudioFocusChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 4235
    .end local v0    # "fri":Landroid/media/AudioManager$FocusRequestInfo;
    .end local v2    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :cond_4
    nop

    .line 4259
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
