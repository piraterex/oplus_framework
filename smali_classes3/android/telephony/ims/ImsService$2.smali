.class Landroid/telephony/ims/ImsService$2;
.super Landroid/telephony/ims/aidl/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/ImsService;

    .line 225
    iput-object p1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 371
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "ImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
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

    .line 380
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 383
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 386
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    const-string v3, "ImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic blacklist lambda$executeMethodAsync$14(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 372
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$15(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 381
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 267
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/ImsService$2;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    const-string v1, "addFeatureStatusCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public blacklist createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 244
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsService;->getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature;

    .line 245
    .local v0, "f":Landroid/telephony/ims/feature/MmTelFeature;
    if-nez v0, :cond_0

    .line 246
    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/ImsService$2;I)V

    const-string v2, "createEmergencyOnlyMmTelFeature"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 233
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsService;->getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature;

    .line 234
    .local v0, "f":Landroid/telephony/ims/feature/MmTelFeature;
    if-nez v0, :cond_0

    .line 235
    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v2, "createMmTelFeature"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 255
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsService;->getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/RcsFeature;

    .line 256
    .local v0, "f":Landroid/telephony/ims/feature/RcsFeature;
    if-nez v0, :cond_0

    .line 257
    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v2, "createRcsFeature"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsFeature;

    return-object v1

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    return-object v1
.end method

.method public blacklist disableIms(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 363
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "disableIms"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public blacklist enableIms(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 357
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "enableIms"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 316
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "getConfig"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0
.end method

.method public blacklist getImsServiceCapabilities()J
    .locals 2

    .line 297
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string v1, "getImsServiceCapabilities"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 330
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "getRegistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .locals 2
    .param p1, "slotId"    # I

    .line 344
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/ImsService$2;I)V

    const-string v1, "getSipTransport"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/ISipTransport;

    return-object v0
.end method

.method synthetic blacklist lambda$addFeatureStatusCallback$3$android-telephony-ims-ImsService$2(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 267
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method synthetic blacklist lambda$createEmergencyOnlyMmTelFeature$1$android-telephony-ims-ImsService$2(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsService;->-$$Nest$mcreateEmergencyOnlyMmTelFeatureInternal(Landroid/telephony/ims/ImsService;I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$createMmTelFeature$0$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 235
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->-$$Nest$mcreateMmTelFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$createRcsFeature$2$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 258
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->-$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$disableIms$13$android-telephony-ims-ImsService$2(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 364
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->disableImsForSubscription(II)V

    return-void
.end method

.method synthetic blacklist lambda$enableIms$12$android-telephony-ims-ImsService$2(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 358
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->enableImsForSubscription(II)V

    return-void
.end method

.method synthetic blacklist lambda$getConfig$9$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 317
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    .line 318
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    .line 319
    .local v0, "c":Landroid/telephony/ims/stub/ImsConfigImplBase;
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 321
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    return-object v1

    .line 323
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getImsServiceCapabilities$7$android-telephony-ims-ImsService$2()Ljava/lang/Long;
    .locals 7

    .line 298
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->getImsServiceCapabilities()J

    move-result-wide v0

    .line 299
    .local v0, "caps":J
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->-$$Nest$smsanitizeCapabilities(J)J

    move-result-wide v2

    .line 300
    .local v2, "sanitizedCaps":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing invalid bits from field: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-long v5, v0, v2

    .line 302
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    const-string v5, "ImsService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method synthetic blacklist lambda$getRegistration$10$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 331
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    .line 332
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    .line 333
    .local v0, "r":Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 335
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    return-object v1

    .line 337
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getSipTransport$11$android-telephony-ims-ImsService$2(I)Landroid/telephony/ims/aidl/ISipTransport;
    .locals 2
    .param p1, "slotId"    # I

    .line 345
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsService;->getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;

    move-result-object v0

    .line 346
    .local v0, "s":Landroid/telephony/ims/stub/SipTransportImplBase;
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/SipTransportImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 348
    invoke-virtual {v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->getBinder()Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v1

    return-object v1

    .line 350
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$notifyImsServiceReadyForFeatureCreation$8$android-telephony-ims-ImsService$2()V
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->readyForFeatureCreation()V

    return-void
.end method

.method synthetic blacklist lambda$querySupportedImsFeatures$6$android-telephony-ims-ImsService$2()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$removeFeatureStatusCallback$4$android-telephony-ims-ImsService$2(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 274
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method synthetic blacklist lambda$removeImsFeature$5$android-telephony-ims-ImsService$2(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 284
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->-$$Nest$mremoveImsFeature(Landroid/telephony/ims/ImsService;II)V

    return-void
.end method

.method public blacklist notifyImsServiceReadyForFeatureCreation()V
    .locals 2

    .line 310
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string/jumbo v1, "notifyImsServiceReadyForFeatureCreation"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public blacklist querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 2

    .line 291
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string v1, "ImsFeatureConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    return-object v0
.end method

.method public blacklist removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 274
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsService$2;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    const-string/jumbo v1, "removeFeatureStatusCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public blacklist removeImsFeature(IIZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "changeSubId"    # Z

    .line 280
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->isImsFeatureCreatedForSlot(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "ImsService"

    const-string v1, "Do not remove Ims feature for compatibility"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string/jumbo v1, "removeImsFeature"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/telephony/ims/ImsService;->-$$Nest$msetImsFeatureCreatedForSlot(Landroid/telephony/ims/ImsService;IIZ)V

    .line 287
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    .line 228
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsService;->-$$Nest$fputmListener(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 229
    return-void
.end method
