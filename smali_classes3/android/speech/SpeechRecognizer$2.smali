.class Landroid/speech/SpeechRecognizer$2;
.super Landroid/speech/IRecognitionServiceManagerCallback$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/SpeechRecognizer;->connectToSystemService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer;

    .line 707
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .locals 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind to system recognition service failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmListener(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 724
    return-void
.end method

.method public blacklist onSuccess(Landroid/speech/IRecognitionService;)V
    .locals 2
    .param p1, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer;->-$$Nest$fputmService(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)V

    .line 714
    :goto_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 717
    :cond_0
    return-void
.end method
