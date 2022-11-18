.class Landroid/service/translation/TranslationService$1;
.super Landroid/service/translation/ITranslationService$Stub;
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

    .line 100
    iput-object p1, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-direct {p0}, Landroid/service/translation/ITranslationService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onConnected$0(Ljava/lang/Object;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/IBinder;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/service/translation/TranslationService;

    invoke-static {v0, p1}, Landroid/service/translation/TranslationService;->-$$Nest$mhandleOnConnected(Landroid/service/translation/TranslationService;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCreateTranslationSession$1(Ljava/lang/Object;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/translation/TranslationContext;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Lcom/android/internal/os/IResultReceiver;

    .line 116
    move-object v0, p0

    check-cast v0, Landroid/service/translation/TranslationService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/translation/TranslationService;->-$$Nest$mhandleOnCreateTranslationSession(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTranslationCapabilitiesRequest$2(Ljava/lang/Object;IILandroid/os/ResultReceiver;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Landroid/os/ResultReceiver;

    .line 125
    move-object v0, p0

    check-cast v0, Landroid/service/translation/TranslationService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/translation/TranslationService;->-$$Nest$mhandleOnTranslationCapabilitiesRequest(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/IBinder;

    .line 103
    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 4
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 116
    invoke-static {v1, v2, p1, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 3

    .line 109
    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public blacklist onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 125
    invoke-static {v1, v2, v3, v4, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method
