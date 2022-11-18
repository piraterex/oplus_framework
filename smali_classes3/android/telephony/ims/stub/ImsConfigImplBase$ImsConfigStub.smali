.class public Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
.super Landroid/telephony/ims/aidl/IImsConfig$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsConfigStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mProvisionedIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProvisionedStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "imsConfigImplBase"    # Landroid/telephony/ims/stub/ImsConfigImplBase;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 97
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    .line 98
    iput-object p2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    .line 101
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

    .line 488
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    nop

    .line 495
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConfigImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 492
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string v2, "ImsConfigImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
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

    .line 499
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 502
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfigImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    const-string v3, "ImsConfigImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    .line 319
    .local v0, "ref":Landroid/telephony/ims/stub/ImsConfigImplBase;
    if-eqz v0, :cond_0

    .line 322
    return-object v0

    .line 320
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Fail to get ImsConfigImpl"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic blacklist lambda$executeMethodAsync$15(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 489
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$16(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 500
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o notifyImsConfigChanged(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V

    .line 364
    return-void
.end method

.method private greylist-max-o notifyImsConfigChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V

    .line 368
    return-void
.end method


# virtual methods
.method public greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 106
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addImsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    return-void

    .line 115
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception addImsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 385
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addRcsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 397
    return-void

    .line 394
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception addRcsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o getConfigInt(I)I
    .locals 4
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 149
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getConfigInt"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    .local v1, "retVal":I
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 174
    return v1

    .line 170
    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception getConfigString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public greylist-max-o getConfigString(I)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 188
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getConfigString"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 213
    return-object v1

    .line 209
    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception getConfigString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method synthetic blacklist lambda$addImsConfigCallback$0$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$addRcsConfigCallback$9$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 387
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$getConfigInt$2$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 5
    .param p1, "item"    # I
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 150
    const/4 v0, -0x1

    .line 151
    .local v0, "returnVal":I
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 156
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigInt(I)I

    move-result v2

    move v0, v2

    .line 157
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_1
    nop

    .line 165
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 165
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method synthetic blacklist lambda$getConfigString$3$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 195
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 196
    if-eqz v0, :cond_1

    .line 197
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_1
    nop

    .line 204
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 205
    return-object v0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 201
    monitor-exit v1

    return-object v0

    .line 204
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method synthetic blacklist lambda$notifyIntImsConfigChanged$13$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(IILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 455
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyRcsAutoConfigurationReceived$7$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub([BZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 332
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyRcsAutoConfigurationRemoved$8$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 350
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyStringImsConfigChanged$14$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 472
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$removeImsConfigCallback$1$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$removeRcsConfigCallback$10$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 404
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$setConfigInt$4$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 231
    const/4 v0, -0x1

    .line 233
    .local v0, "returnVal":I
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(II)I

    move-result v2

    move v0, v2

    .line 236
    if-nez v0, :cond_0

    .line 237
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_0
    const-string v2, "ImsConfigImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set provision value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 242
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "returnVal":I
    .end local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .end local p1    # "item":I
    .end local p2    # "value":I
    .end local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 245
    .restart local v0    # "returnVal":I
    .restart local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .restart local p1    # "item":I
    .restart local p2    # "value":I
    .restart local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method synthetic blacklist lambda$setConfigString$5$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 275
    const/4 v0, -0x1

    .line 277
    .local v0, "returnVal":I
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    .line 280
    if-nez v0, :cond_0

    .line 281
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 283
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "returnVal":I
    .end local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .end local p1    # "item":I
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 286
    .restart local v0    # "returnVal":I
    .restart local p0    # "this":Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    .restart local p1    # "item":I
    .restart local p2    # "value":Ljava/lang/String;
    .restart local p3    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method synthetic blacklist lambda$setRcsClientConfiguration$12$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 438
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$triggerRcsReconfiguration$11$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 421
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->triggerAutoConfiguration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$updateImsCarrierConfigs$6$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyIntImsConfigChanged(II)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 453
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyIntImsConfigChanged"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 465
    return-void

    .line 462
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyIntImsConfigChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyRcsAutoConfigurationReceived([BZ)V
    .locals 3
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 330
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;[BZLjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyRcsAutoConfigurationReceived"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 342
    return-void

    .line 339
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyRcsAutoConfigurationReceived"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyRcsAutoConfigurationRemoved()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 348
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyRcsAutoConfigurationRemoved"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 360
    return-void

    .line 357
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyRcsAutoConfigurationRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyStringImsConfigChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 470
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyStringImsConfigChanged"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 482
    return-void

    .line 479
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyStringImsConfigChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 123
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "removeImsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 135
    return-void

    .line 132
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception removeImsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 402
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "removeRcsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 414
    return-void

    .line 411
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception removeRcsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o setConfigInt(II)I
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 230
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setConfigInt"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 251
    .local v1, "retVal":I
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 256
    return v1

    .line 252
    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception setConfigInt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public greylist-max-o setConfigString(ILjava/lang/String;)I
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 274
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setConfigString"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 292
    .local v1, "retVal":I
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 297
    return v1

    .line 293
    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception setConfigInt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 3
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 436
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setRcsClientConfiguration"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 448
    return-void

    .line 445
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception setRcsClientConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist triggerRcsReconfiguration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 419
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "triggerRcsReconfiguration"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 431
    return-void

    .line 428
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception triggerRcsReconfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method protected blacklist updateCachedValue(II)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 371
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist updateCachedValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 303
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "updateImsCarrierConfigs"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 315
    return-void

    .line 312
    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception updateImsCarrierConfigs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method
