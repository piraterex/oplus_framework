.class Landroid/speech/tts/TextToSpeech$SystemConnection$1;
.super Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech$SystemConnection;->connect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeech$SystemConnection;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeech$SystemConnection;

    .line 2413
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Landroid/speech/tts/ITextToSpeechSession;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "session"    # Landroid/speech/tts/ITextToSpeechSession;
    .param p2, "serviceBinder"    # Landroid/os/IBinder;

    .line 2416
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech$SystemConnection;->-$$Nest$fputmSession(Landroid/speech/tts/TextToSpeech$SystemConnection;Landroid/speech/tts/ITextToSpeechSession;)V

    .line 2417
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/speech/tts/TextToSpeech$SystemConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2420
    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 2

    .line 2424
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech$SystemConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2425
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorInfo"    # Ljava/lang/String;

    .line 2429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System TTS connection error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$SystemConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V

    .line 2432
    return-void
.end method
