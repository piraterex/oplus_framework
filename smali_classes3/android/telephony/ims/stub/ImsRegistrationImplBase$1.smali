.class Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;
.super Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 135
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;-><init>()V

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

    .line 189
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    nop

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsRegistrationImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
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

    .line 210
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 213
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRegistrationImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v3, "ImsRegistrationImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 200
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsRegistrationImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$6(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 190
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$8(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 211
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$7(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 201
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 147
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addRegistrationCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    return-void

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist getRegistrationTechnology()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V

    const-string v1, "getRegistrationTechnology"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$addRegistrationCallback$1$android-telephony-ims-stub-ImsRegistrationImplBase$1(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$maddRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$getRegistrationTechnology$0$android-telephony-ims-stub-ImsRegistrationImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v0

    .line 139
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$removeRegistrationCallback$2$android-telephony-ims-stub-ImsRegistrationImplBase$1(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 162
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->-$$Nest$mremoveRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method synthetic blacklist lambda$triggerFullNetworkRegistration$3$android-telephony-ims-stub-ImsRegistrationImplBase$1(ILjava/lang/String;)V
    .locals 1
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 169
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    .line 168
    return-void
.end method

.method synthetic blacklist lambda$triggerSipDelegateDeregistration$5$android-telephony-ims-stub-ImsRegistrationImplBase$1()V
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 182
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->triggerSipDelegateDeregistration()V

    .line 181
    return-void
.end method

.method synthetic blacklist lambda$triggerUpdateSipDelegateRegistration$4$android-telephony-ims-stub-ImsRegistrationImplBase$1()V
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 176
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateSipDelegateRegistration()V

    .line 175
    return-void
.end method

.method public blacklist removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    const-string/jumbo v1, "removeRegistrationCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public blacklist triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;ILjava/lang/String;)V

    const-string/jumbo v1, "triggerFullNetworkRegistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public blacklist triggerSipDelegateDeregistration()V
    .locals 2

    .line 181
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V

    const-string/jumbo v1, "triggerSipDelegateDeregistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public blacklist triggerUpdateSipDelegateRegistration()V
    .locals 2

    .line 175
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V

    const-string/jumbo v1, "triggerUpdateSipDelegateRegistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 177
    return-void
.end method
