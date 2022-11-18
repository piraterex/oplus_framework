.class Landroid/app/VoiceInteractor$2;
.super Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor blacklist <init>(Landroid/app/VoiceInteractor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/VoiceInteractor;

    .line 167
    iput-object p1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 190
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method public blacklist deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 203
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method public blacklist deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "complete"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    .line 197
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 198
    nop

    .line 197
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 199
    return-void
.end method

.method public blacklist deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 184
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public blacklist deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    .line 171
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 172
    nop

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 173
    return-void
.end method

.method public blacklist deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p4, "result"    # Landroid/os/Bundle;

    .line 178
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 179
    nop

    .line 178
    const/4 v3, 0x2

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 180
    return-void
.end method

.method public blacklist destroy()V
    .locals 3

    .line 209
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/VoiceInteractor$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/VoiceInteractor$2$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method
