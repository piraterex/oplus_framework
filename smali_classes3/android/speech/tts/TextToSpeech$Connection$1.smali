.class Landroid/speech/tts/TextToSpeech$Connection$1;
.super Landroid/speech/tts/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeech$Connection;

    .line 2177
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAudioAvailable(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "audio"    # [B

    .line 2225
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2226
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2227
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onAudioAvailable(Ljava/lang/String;[B)V

    .line 2229
    :cond_0
    return-void
.end method

.method public blacklist onBeginSynthesis(Ljava/lang/String;III)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .line 2216
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2217
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onBeginSynthesis(Ljava/lang/String;III)V

    .line 2221
    :cond_0
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 2196
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2197
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2198
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;I)V

    .line 2200
    :cond_0
    return-void
.end method

.method public blacklist onRangeStart(Ljava/lang/String;III)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "frame"    # I

    .line 2233
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2234
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onRangeStart(Ljava/lang/String;III)V

    .line 2237
    :cond_0
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 2204
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2205
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2206
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 2208
    :cond_0
    return-void
.end method

.method public blacklist onStop(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2180
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2181
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2182
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Ljava/lang/String;Z)V

    .line 2184
    :cond_0
    return-void
.end method

.method public blacklist onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 2188
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2189
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 2192
    :cond_0
    return-void
.end method
