.class Landroid/service/autofill/AutofillService$1;
.super Landroid/service/autofill/IAutoFillService$Stub;
.source "AutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/AutofillService;


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/AutofillService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/autofill/AutofillService;

    .line 602
    iput-object p1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-direct {p0}, Landroid/service/autofill/IAutoFillService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedStateChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 605
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    .line 606
    if-eqz p1, :cond_0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda2;-><init>()V

    :goto_0
    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    .line 605
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 608
    return-void
.end method

.method public blacklist onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    .locals 7
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "callback"    # Landroid/service/autofill/IFillCallback;

    .line 612
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 614
    .local v0, "transport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p2, v0}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 618
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v3, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    .line 620
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/autofill/FillCallback;

    .line 621
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v6

    invoke-direct {v5, p2, v6}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    .line 618
    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    return-void
.end method

.method public blacklist onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    .locals 4
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;
    .param p2, "callback"    # Landroid/service/autofill/ISaveCallback;

    .line 626
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SaveCallback;

    invoke-direct {v3, p2}, Landroid/service/autofill/SaveCallback;-><init>(Landroid/service/autofill/ISaveCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    return-void
.end method

.method public blacklist onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 633
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;

    const-string/jumbo v4, "passwords"

    invoke-direct {v3, p1, v4}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;-><init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    return-void
.end method
