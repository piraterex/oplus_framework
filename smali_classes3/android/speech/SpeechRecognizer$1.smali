.class Landroid/speech/SpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 189
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;

    .line 211
    .local v0, "args":Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;
    iget-object v1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v2, v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    .line 213
    goto :goto_0

    .line 207
    .end local v0    # "args":Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizer;Landroid/content/ComponentName;)V

    .line 208
    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/RecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V

    .line 205
    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizer;)V

    .line 202
    goto :goto_0

    .line 198
    :pswitch_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizer;)V

    .line 199
    goto :goto_0

    .line 195
    :pswitch_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V

    .line 196
    nop

    .line 218
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
