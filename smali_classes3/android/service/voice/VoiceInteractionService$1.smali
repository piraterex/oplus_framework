.class Landroid/service/voice/VoiceInteractionService$1;
.super Landroid/service/voice/IVoiceInteractionService$Stub;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionService;

    .line 92
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getActiveServiceSupportedActions$2(Ljava/lang/Object;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/util/List;
    .param p2, "x$1"    # Lcom/android/internal/app/IVoiceActionCheckCallback;

    .line 123
    move-object v0, p0

    check-cast v0, Landroid/service/voice/VoiceInteractionService;

    invoke-static {v0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monHandleVoiceActionCheck(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$shutdown$0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/service/voice/VoiceInteractionService;

    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monShutdownInternal(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method

.method static synthetic blacklist lambda$soundModelsChanged$1(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 108
    move-object v0, p0

    check-cast v0, Landroid/service/voice/VoiceInteractionService;

    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->-$$Nest$monSoundModelsChangedInternal(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method


# virtual methods
.method public blacklist getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .locals 3
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceActionCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 122
    .local p1, "voiceActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 123
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method public blacklist launchVoiceAssistFromKeyguard()V
    .locals 3

    .line 114
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public blacklist ready()V
    .locals 3

    .line 95
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public blacklist shutdown()V
    .locals 3

    .line 101
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public blacklist soundModelsChanged()V
    .locals 3

    .line 107
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method
