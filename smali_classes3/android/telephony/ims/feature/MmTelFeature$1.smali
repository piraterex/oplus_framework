.class Landroid/telephony/ims/feature/MmTelFeature$1;
.super Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/feature/MmTelFeature;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/feature/MmTelFeature;

    .line 94
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;-><init>()V

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
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

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

    const-string v2, "MmTelFeature Binder - "

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
    const-string v2, "MmTelFeature"

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

    .line 315
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 318
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
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

    .line 328
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 331
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 305
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeature Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$21(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 295
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$23(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 316
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResultNoException$24(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 329
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$22(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 306
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 268
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V

    const-string v1, "acknowledgeSms"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 274
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V

    const-string v1, "acknowledgeSmsReport"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 228
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "addCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public blacklist changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 241
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "changeCapabilitiesConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public blacklist changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/List;)V

    const-string v1, "changeOfferedRtpHeaderExtensionTypes"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;II)V

    const-string v1, "createCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 124
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "createCallSession"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsCallSession;

    .line 133
    .local v1, "result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 137
    return-object v1

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 173
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getEcbmInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsEcbm;

    .line 182
    .local v1, "result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 186
    return-object v1

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getFeatureState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "getFeatureState"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 198
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getMultiEndpointInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 207
    .local v1, "result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 211
    return-object v1

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "getSmsFormat"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 154
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "getUtInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsUt;

    .line 163
    .local v1, "result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 167
    return-object v1

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method synthetic blacklist lambda$acknowledgeSms$17$android-telephony-ims-feature-MmTelFeature$1(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 268
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 269
    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V

    .line 268
    return-void
.end method

.method synthetic blacklist lambda$acknowledgeSmsReport$18$android-telephony-ims-feature-MmTelFeature$1(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 274
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 275
    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V

    .line 274
    return-void
.end method

.method synthetic blacklist lambda$addCapabilityCallback$11$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 228
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 229
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 228
    return-void
.end method

.method synthetic blacklist lambda$changeCapabilitiesConfiguration$13$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 242
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 241
    return-void
.end method

.method synthetic blacklist lambda$changeOfferedRtpHeaderExtensionTypes$3$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/List;)V
    .locals 2
    .param p1, "types"    # Ljava/util/List;

    .line 117
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V

    return-void
.end method

.method synthetic blacklist lambda$createCallProfile$2$android-telephony-ims-feature-MmTelFeature$1(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$createCallSession$4$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 129
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getEcbmInterface$7$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 178
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getFeatureState$1$android-telephony-ims-feature-MmTelFeature$1()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getMultiEndpointInterface$9$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 203
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getSmsFormat$19$android-telephony-ims-feature-MmTelFeature$1()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 281
    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetSmsFormat(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method synthetic blacklist lambda$getUtInterface$6$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$onSmsReady$20$android-telephony-ims-feature-MmTelFeature$1()V
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V

    return-void
.end method

.method synthetic blacklist lambda$queryCapabilityConfiguration$14$android-telephony-ims-feature-MmTelFeature$1(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 249
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method synthetic blacklist lambda$queryCapabilityStatus$10$android-telephony-ims-feature-MmTelFeature$1()Ljava/lang/Integer;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 217
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$removeCapabilityCallback$12$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 234
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 235
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 234
    return-void
.end method

.method synthetic blacklist lambda$sendSms$16$android-telephony-ims-feature-MmTelFeature$1(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .param p6, "pdu"    # [B

    .line 262
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 263
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msendSms(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 262
    return-void
.end method

.method synthetic blacklist lambda$setListener$0$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 98
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method synthetic blacklist lambda$setSmsListener$15$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 255
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetSmsListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method synthetic blacklist lambda$setUiTtyMode$8$android-telephony-ims-feature-MmTelFeature$1(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 191
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    return-void
.end method

.method synthetic blacklist lambda$shouldProcessCall$5$android-telephony-ims-feature-MmTelFeature$1([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 143
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onSmsReady()V
    .locals 2

    .line 286
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string/jumbo v1, "onSmsReady"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 249
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "queryCapabilityConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public blacklist queryCapabilityStatus()I
    .locals 2

    .line 216
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string/jumbo v1, "queryCapabilityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 219
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 222
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 234
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "removeCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .param p6, "pdu"    # [B

    .line 262
    new-instance v8, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILjava/lang/String;Ljava/lang/String;Z[B)V

    const-string/jumbo v0, "sendSms"

    invoke-direct {p0, v8, v0}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 2
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 98
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 255
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsSmsListener;)V

    const-string/jumbo v1, "setSmsListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public blacklist setUiTtyMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/os/Message;)V

    const-string/jumbo v1, "setUiTtyMode"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public blacklist shouldProcessCall([Ljava/lang/String;)I
    .locals 2
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "shouldProcessCall"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 147
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
