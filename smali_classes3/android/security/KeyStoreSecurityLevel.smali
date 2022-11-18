.class public Landroid/security/KeyStoreSecurityLevel;
.super Ljava/lang/Object;
.source "KeyStoreSecurityLevel.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreSecurityLevel"


# instance fields
.field private final blacklist mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V
    .locals 1
    .param p1, "securityLevel"    # Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Landroid/system/keystore2/IKeystoreSecurityLevel;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 50
    iput-object p1, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 51
    return-void
.end method

.method private blacklist handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/security/CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 55
    .local p1, "request":Landroid/security/CheckedRemoteRequest;, "Landroid/security/CheckedRemoteRequest<TR;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/security/CheckedRemoteRequest;->execute()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreSecurityLevel"

    const-string v2, "Could not connect to Keystore."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1
.end method

.method protected static blacklist interruptedPreservingSleep(J)V
    .locals 6
    .param p0, "millis"    # J

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "wasInterrupted":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 203
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    .line 206
    .local v2, "target":J
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_1

    .line 210
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 216
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 219
    :cond_0
    return-void

    .line 208
    :catch_1
    move-exception v4

    .line 209
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 214
    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public blacklist createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;
    .locals 5
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)",
            "Landroid/security/KeyStoreOperation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 80
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 83
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    const/4 v2, 0x0

    .line 81
    invoke-interface {v0, p1, v1, v2}, Landroid/system/keystore2/IKeystoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object v0

    .line 86
    .local v0, "createOperationResponse":Landroid/system/keystore2/CreateOperationResponse;
    const/4 v1, 0x0

    .line 87
    .local v1, "challenge":Ljava/lang/Long;
    iget-object v2, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    iget-wide v2, v2, Landroid/system/keystore2/OperationChallenge;->challenge:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 90
    :cond_0
    const/4 v2, 0x0

    .line 91
    .local v2, "parameters":[Landroid/hardware/security/keymint/KeyParameter;
    iget-object v3, v0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, v0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    iget-object v3, v3, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;

    move-object v2, v3

    .line 94
    :cond_1
    new-instance v3, Landroid/security/KeyStoreOperation;

    iget-object v4, v0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-direct {v3, v4, v1, v2}, Landroid/security/KeyStoreOperation;-><init>(Landroid/system/keystore2/IKeystoreOperation;Ljava/lang/Long;[Landroid/hardware/security/keymint/KeyParameter;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 122
    .end local v0    # "createOperationResponse":Landroid/system/keystore2/CreateOperationResponse;
    .end local v1    # "challenge":Ljava/lang/Long;
    .end local v2    # "parameters":[Landroid/hardware/security/keymint/KeyParameter;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreSecurityLevel"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    new-instance v1, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v1}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v1

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_0

    .line 120
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1

    .line 101
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 102
    .local v1, "backOffHint":J
    const-wide/32 v3, 0xa206cc8

    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    invoke-static {v1, v2}, Landroid/security/KeyStoreSecurityLevel;->interruptedPreservingSleep(J)V

    .line 117
    nop

    .line 125
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "backOffHint":J
    goto :goto_0

    .line 106
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v1    # "backOffHint":J
    :cond_2
    new-instance v3, Landroid/security/keystore/BackendBusyException;

    invoke-direct {v3, v1, v2}, Landroid/security/keystore/BackendBusyException;-><init>(J)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .locals 8
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[B)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 145
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    new-instance v7, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda1;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v7}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    return-object v0
.end method

.method public blacklist importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .locals 8
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[B)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 166
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    new-instance v7, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda0;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v7}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    return-object v0
.end method

.method public blacklist importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .locals 9
    .param p1, "wrappedKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "wrappedKey"    # [B
    .param p4, "maskingKey"    # [B
    .param p6, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "[B[B",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;[",
            "Landroid/system/keystore2/AuthenticatorSpec;",
            ")",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 189
    .local p5, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 190
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 191
    iget-wide v1, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 192
    iput-object p3, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 193
    iget v1, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 195
    new-instance v8, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)V

    invoke-direct {p0, v8}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyMetadata;

    return-object v1
.end method

.method synthetic blacklist lambda$generateKey$0$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .locals 6
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 146
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 145
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$importKey$1$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .locals 6
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 167
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 166
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$importWrappedKey$2$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .locals 6
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "maskingKey"    # [B
    .param p4, "args"    # Ljava/util/Collection;
    .param p5, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 197
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 195
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method
