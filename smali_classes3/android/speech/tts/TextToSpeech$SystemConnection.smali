.class Landroid/speech/tts/TextToSpeech$SystemConnection;
.super Landroid/speech/tts/TextToSpeech$Connection;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemConnection"
.end annotation


# instance fields
.field private volatile blacklist mSession:Landroid/speech/tts/ITextToSpeechSession;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/speech/tts/TextToSpeech$SystemConnection;Landroid/speech/tts/ITextToSpeechSession;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->mSession:Landroid/speech/tts/ITextToSpeechSession;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 1

    .line 2392
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$SystemConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$SystemConnection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method


# virtual methods
.method blacklist connect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "engine"    # Ljava/lang/String;

    .line 2399
    const-string/jumbo v0, "texttospeech"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2401
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/ITextToSpeechManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechManager;

    move-result-object v1

    .line 2403
    .local v1, "manager":Landroid/speech/tts/ITextToSpeechManager;
    const-string v2, "TextToSpeech"

    if-nez v1, :cond_0

    .line 2404
    const-string v3, "System service is not available!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    const/4 v2, 0x0

    return v2

    .line 2413
    :cond_0
    :try_start_0
    new-instance v3, Landroid/speech/tts/TextToSpeech$SystemConnection$1;

    invoke-direct {v3, p0}, Landroid/speech/tts/TextToSpeech$SystemConnection$1;-><init>(Landroid/speech/tts/TextToSpeech$SystemConnection;)V

    invoke-interface {v1, p1, v3}, Landroid/speech/tts/ITextToSpeechManager;->createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2435
    const/4 v2, 0x1

    return v2

    .line 2436
    :catch_0
    move-exception v3

    .line 2437
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "Error communicating with the System Server: "

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2438
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method blacklist disconnect()V
    .locals 4

    .line 2444
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->mSession:Landroid/speech/tts/ITextToSpeechSession;

    .line 2446
    .local v0, "session":Landroid/speech/tts/ITextToSpeechSession;
    if-eqz v0, :cond_0

    .line 2448
    :try_start_0
    invoke-interface {v0}, Landroid/speech/tts/ITextToSpeechSession;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    goto :goto_0

    .line 2449
    :catch_0
    move-exception v1

    .line 2450
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TextToSpeech"

    const-string v3, "Error disconnecting session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2453
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$SystemConnection;->clearServiceConnection()Z

    .line 2455
    :cond_0
    return-void
.end method
