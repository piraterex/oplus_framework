.class Landroid/telephony/ims/stub/ImsUtImplBase$1;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsUtImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mUtListener:Landroid/telephony/ims/ImsUtListener;

.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsUtImplBase;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V
    .locals 1
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 132
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    nop

    .line 301
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsUtImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    const-string v2, "ImsUtImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 308
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsUtImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    const-string v3, "ImsUtImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$executeMethodAsync$20(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 295
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$21(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 306
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method synthetic blacklist lambda$close$0$android-telephony-ims-stub-ImsUtImplBase$1()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->close()V

    return-void
.end method

.method synthetic blacklist lambda$queryCLIP$5$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCLIR$4$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCOLP$7$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCOLR$6$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCallBarring$1$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "cbType"    # I

    .line 143
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarring(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCallBarringForServiceClass$17$android-telephony-ims-stub-ImsUtImplBase$1(II)Ljava/lang/Integer;
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 269
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 270
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarringForServiceClass(II)I

    move-result v0

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCallForward$2$android-telephony-ims-stub-ImsUtImplBase$1(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$queryCallWaiting$3$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallWaiting()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$setListener$16$android-telephony-ims-stub-ImsUtImplBase$1(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    const/4 v1, 0x0

    const-string v2, "ImsUtImplBase"

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 246
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    return-void

    .line 251
    :cond_1
    if-nez p1, :cond_2

    .line 252
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_0

    .line 253
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-nez v0, :cond_3

    .line 254
    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_0

    .line 257
    :cond_3
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    .line 262
    :goto_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setListener(Landroid/telephony/ims/ImsUtListener;)V

    .line 263
    return-void
.end method

.method synthetic blacklist lambda$transact$8$android-telephony-ims-stub-ImsUtImplBase$1(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 1
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 190
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->transact(Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCLIP$13$android-telephony-ims-stub-ImsUtImplBase$1(Z)Ljava/lang/Integer;
    .locals 1
    .param p1, "enable"    # Z

    .line 222
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIP(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCLIR$12$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "clirMode"    # I

    .line 216
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIR(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCOLP$15$android-telephony-ims-stub-ImsUtImplBase$1(Z)Ljava/lang/Integer;
    .locals 1
    .param p1, "enable"    # Z

    .line 234
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLP(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCOLR$14$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "presentation"    # I

    .line 228
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLR(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCallBarring$9$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 197
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCallBarringForServiceClass$18$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 277
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 278
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCallBarringWithPassword$19$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 286
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCallForward$10$android-telephony-ims-stub-ImsUtImplBase$1(IILjava/lang/String;II)Ljava/lang/Integer;
    .locals 6
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 204
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$updateCallWaiting$11$android-telephony-ims-stub-ImsUtImplBase$1(ZI)Ljava/lang/Integer;
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 210
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallWaiting(ZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist queryCLIP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCLIR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCOLP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCOLR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallBarring(I)I
    .locals 2
    .param p1, "cbType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "queryCallBarring"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallBarringForServiceClass(II)I
    .locals 2
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II)V

    const-string/jumbo v1, "queryCallBarringForServiceClass"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallForward(ILjava/lang/String;)I
    .locals 2
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ILjava/lang/String;)V

    const-string/jumbo v1, "queryCallForward"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallWaiting()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public blacklist transact(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)V

    const-string/jumbo v1, "transact"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCLIP(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo v1, "updateCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCLIR(I)I
    .locals 2
    .param p1, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "updateCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCOLP(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo v1, "updateCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCOLR(I)I
    .locals 2
    .param p1, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "updateCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallBarring(II[Ljava/lang/String;)I
    .locals 2
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;)V

    const-string/jumbo v1, "updateCallBarring"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    new-instance v6, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;I)V

    const-string/jumbo v0, "updateCallBarringForServiceClass"

    invoke-direct {p0, v6, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    new-instance v7, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "updateCallBarringWithPassword"

    invoke-direct {p0, v7, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallForward(IILjava/lang/String;II)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    new-instance v7, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)V

    const-string/jumbo v0, "updateCallForward"

    invoke-direct {p0, v7, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallWaiting(ZI)I
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ZI)V

    const-string/jumbo v1, "updateCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
