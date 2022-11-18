.class Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 126
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 333
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v2, "ImsCallSessionImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
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

    .line 343
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 346
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsCallSessionImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    const-string v3, "ImsCallSessionImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic blacklist lambda$executeMethodAsync$35(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$36(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 344
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 199
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string v1, "accept"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public blacklist close()V
    .locals 2

    .line 129
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "transferToSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 222
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Lcom/android/ims/internal/IImsCallSession;)V

    const-string v1, "consultativeTransfer"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .locals 2
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 205
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string v1, "deflect"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public blacklist extendToConference([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 257
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string v1, "extendToConference"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public blacklist getCallId()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getCallId"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 140
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 146
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getLocalCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string v1, "getProperty"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 152
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getRemoteCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist getState()I
    .locals 2

    .line 164
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getState"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 295
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "getVideoCallProvider"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v0
.end method

.method public blacklist hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 236
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "hold"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public blacklist inviteParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 263
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "inviteParticipants"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public blacklist isInCall()Z
    .locals 2

    .line 170
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "isInCall"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isMultiparty()Z
    .locals 2

    .line 301
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "isMultiparty"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$accept$12$android-telephony-ims-stub-ImsCallSessionImplBase$1(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 199
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method synthetic blacklist lambda$close$0$android-telephony-ims-stub-ImsCallSessionImplBase$1()V
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->close()V

    return-void
.end method

.method synthetic blacklist lambda$consultativeTransfer$16$android-telephony-ims-stub-ImsCallSessionImplBase$1(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "transferToSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 223
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 224
    .local v0, "otherSession":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    .line 225
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 226
    return-void
.end method

.method synthetic blacklist lambda$deflect$13$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)V
    .locals 1
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->deflect(Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$extendToConference$22$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 257
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->extendToConference([Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$getCallId$1$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCallProfile$2$android-telephony-ims-stub-ImsCallSessionImplBase$1()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getLocalCallProfile$3$android-telephony-ims-stub-ImsCallSessionImplBase$1()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 147
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method synthetic blacklist lambda$getProperty$5$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getRemoteCallProfile$4$android-telephony-ims-stub-ImsCallSessionImplBase$1()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 153
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method synthetic blacklist lambda$getState$6$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/Integer;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getVideoCallProvider$29$android-telephony-ims-stub-ImsCallSessionImplBase$1()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 296
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method synthetic blacklist lambda$hold$18$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 236
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method synthetic blacklist lambda$inviteParticipants$23$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 263
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->inviteParticipants([Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$isInCall$7$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/Boolean;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isInCall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$isMultiparty$30$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/Boolean;
    .locals 1

    .line 301
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isMultiparty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$merge$20$android-telephony-ims-stub-ImsCallSessionImplBase$1()V
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->merge()V

    return-void
.end method

.method synthetic blacklist lambda$reject$14$android-telephony-ims-stub-ImsCallSessionImplBase$1(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 211
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->reject(I)V

    return-void
.end method

.method synthetic blacklist lambda$removeParticipants$24$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 269
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->removeParticipants([Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$resume$19$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method synthetic blacklist lambda$sendDtmf$25$android-telephony-ims-stub-ImsCallSessionImplBase$1(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 275
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRtpHeaderExtensions$34$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/util/List;)V
    .locals 2
    .param p1, "extensions"    # Ljava/util/List;

    .line 325
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttMessage$33$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 319
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttModifyRequest$31$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 307
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttModifyResponse$32$android-telephony-ims-stub-ImsCallSessionImplBase$1(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 313
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyResponse(Z)V

    return-void
.end method

.method synthetic blacklist lambda$sendUssd$28$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$setListener$8$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    new-instance v1, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    return-void
.end method

.method synthetic blacklist lambda$setMute$9$android-telephony-ims-stub-ImsCallSessionImplBase$1(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 182
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setMute(Z)V

    return-void
.end method

.method synthetic blacklist lambda$start$10$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 187
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method synthetic blacklist lambda$startConference$11$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 193
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method synthetic blacklist lambda$startDtmf$26$android-telephony-ims-stub-ImsCallSessionImplBase$1(C)V
    .locals 1
    .param p1, "c"    # C

    .line 280
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startDtmf(C)V

    return-void
.end method

.method synthetic blacklist lambda$stopDtmf$27$android-telephony-ims-stub-ImsCallSessionImplBase$1()V
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->stopDtmf()V

    return-void
.end method

.method synthetic blacklist lambda$terminate$17$android-telephony-ims-stub-ImsCallSessionImplBase$1(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 231
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->terminate(I)V

    return-void
.end method

.method synthetic blacklist lambda$transfer$15$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 216
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->transfer(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic blacklist lambda$update$21$android-telephony-ims-stub-ImsCallSessionImplBase$1(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 251
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public blacklist merge()V
    .locals 2

    .line 246
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "merge"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public blacklist reject(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 211
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V

    const-string/jumbo v1, "reject"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public blacklist removeParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 269
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "removeParticipants"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public blacklist resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 241
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "resume"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 275
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;CLandroid/os/Message;)V

    const-string/jumbo v1, "sendDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/util/List;)V

    const-string/jumbo v1, "sendRtpHeaderExtensions"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public blacklist sendRttMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 319
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string/jumbo v1, "sendRttMessage"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public blacklist sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 307
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "sendRttModifyRequest"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public blacklist sendRttModifyResponse(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 313
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V

    const-string/jumbo v1, "sendRttModifyResponse"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public blacklist sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 290
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string/jumbo v1, "sendUssd"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 176
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public blacklist setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 182
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V

    const-string/jumbo v1, "setMute"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public blacklist start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 187
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public blacklist startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "startConference"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public blacklist startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 280
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;C)V

    const-string/jumbo v1, "startDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public blacklist stopDtmf()V
    .locals 2

    .line 285
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "stopDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public blacklist terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 231
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V

    const-string/jumbo v1, "terminate"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 216
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Z)V

    const-string/jumbo v1, "transfer"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public blacklist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 251
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "update"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 253
    return-void
.end method
