.class final Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "CarrierMessagingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierMessagingCallbackInternal"
.end annotation


# instance fields
.field final blacklist mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 395
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 396
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    .line 397
    iput-object p3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 398
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDownloadMmsComplete$4$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I)V
    .locals 1
    .param p1, "result"    # I

    .line 426
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onDownloadMmsComplete(I)V

    return-void
.end method

.method synthetic blacklist lambda$onFilterComplete$0$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I)V
    .locals 1
    .param p1, "result"    # I

    .line 402
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onReceiveSmsComplete(I)V

    return-void
.end method

.method synthetic blacklist lambda$onSendMmsComplete$3$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I[B)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .line 420
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMmsComplete(I[B)V

    return-void
.end method

.method synthetic blacklist lambda$onSendMultipartSmsComplete$2$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I[I)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .line 414
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMultipartSmsComplete(I[I)V

    return-void
.end method

.method synthetic blacklist lambda$onSendSmsComplete$1$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(II)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .line 407
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendSmsComplete(II)V

    return-void
.end method

.method public blacklist onDownloadMmsComplete(I)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda4;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public blacklist onFilterComplete(I)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public blacklist onSendMmsComplete(I[B)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda3;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public blacklist onSendMultipartSmsComplete(I[I)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda2;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method public blacklist onSendSmsComplete(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method
