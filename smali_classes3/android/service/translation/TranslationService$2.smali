.class Landroid/service/translation/TranslationService$2;
.super Landroid/view/translation/ITranslationDirectManager$Stub;
.source "TranslationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/translation/TranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/translation/TranslationService;


# direct methods
.method constructor blacklist <init>(Landroid/service/translation/TranslationService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/translation/TranslationService;

    .line 166
    iput-object p1, p0, Landroid/service/translation/TranslationService$2;->this$0:Landroid/service/translation/TranslationService;

    invoke-direct {p0}, Landroid/view/translation/ITranslationDirectManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinishTranslationSession(I)V
    .locals 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/service/translation/TranslationService$2;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$2$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$2$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$2;->this$0:Landroid/service/translation/TranslationService;

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 181
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method

.method public blacklist onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    .locals 7
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "sessionId"    # I
    .param p3, "transport"    # Landroid/os/ICancellationSignal;
    .param p4, "callback"    # Landroid/service/translation/ITranslationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    new-instance v5, Landroid/service/translation/OnTranslationResultCallbackWrapper;

    invoke-direct {v5, p4}, Landroid/service/translation/OnTranslationResultCallbackWrapper;-><init>(Landroid/service/translation/ITranslationCallback;)V

    .line 173
    .local v5, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    iget-object v0, p0, Landroid/service/translation/TranslationService$2;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/service/translation/TranslationService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/translation/TranslationService$2$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/service/translation/TranslationService$2;->this$0:Landroid/service/translation/TranslationService;

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 175
    invoke-static {p3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 173
    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method
