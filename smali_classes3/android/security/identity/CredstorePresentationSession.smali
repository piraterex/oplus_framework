.class Landroid/security/identity/CredstorePresentationSession;
.super Landroid/security/identity/PresentationSession;
.source "CredstorePresentationSession.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstorePresentationSession"


# instance fields
.field private blacklist mBinder:Landroid/security/identity/ISession;

.field private blacklist mCipherSuite:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCredentialCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreIdentityCredential;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEphemeralKeyPair:Ljava/security/KeyPair;

.field private blacklist mOperationHandle:J

.field private blacklist mOperationHandleSet:Z

.field private blacklist mSessionTranscript:[B

.field private blacklist mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cipherSuite"    # I
    .param p3, "store"    # Landroid/security/identity/CredstoreIdentityCredentialStore;
    .param p4, "binder"    # Landroid/security/identity/ISession;

    .line 55
    invoke-direct {p0}, Landroid/security/identity/PresentationSession;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    .line 48
    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    .line 56
    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    .line 57
    iput p2, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    .line 58
    iput-object p3, p0, Landroid/security/identity/CredstorePresentationSession;->mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 59
    iput-object p4, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    .line 60
    return-void
.end method

.method private blacklist ensureEphemeralKeyPair()V
    .locals 9

    .line 63
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getEphemeralKeyPair()[B

    move-result-object v0

    .line 76
    .local v0, "pkcs12":[B
    const-string v1, "ephemeralKey"

    .line 77
    .local v1, "alias":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [C

    .line 79
    .local v2, "password":[C
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 80
    .local v3, "ks":Ljava/security/KeyStore;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 82
    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    .line 84
    .local v5, "privKey":Ljava/security/PrivateKey;
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 85
    .local v6, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 87
    .local v7, "pubKey":Ljava/security/PublicKey;
    new-instance v8, Ljava/security/KeyPair;

    invoke-direct {v8, v7, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v8, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "pkcs12":[B
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "password":[C
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    .end local v6    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "pubKey":Ljava/security/PublicKey;
    nop

    .line 99
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getCredentialData(Ljava/lang/String;Landroid/security/identity/CredentialDataRequest;)Landroid/security/identity/CredentialDataResult;
    .locals 8
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/security/identity/CredentialDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/NoAuthenticationKeyAvailableException;,
            Landroid/security/identity/InvalidReaderSignatureException;,
            Landroid/security/identity/InvalidRequestMessageException;,
            Landroid/security/identity/EphemeralPublicKeyNotFoundException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/CredstoreIdentityCredential;

    .line 145
    .local v0, "credential":Landroid/security/identity/CredstoreIdentityCredential;
    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    .line 147
    invoke-interface {v1, p1}, Landroid/security/identity/ISession;->getCredentialForPresentation(Ljava/lang/String;)Landroid/security/identity/ICredential;

    move-result-object v6

    .line 148
    .local v6, "credstoreCredential":Landroid/security/identity/ICredential;
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v3, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    move-object v2, v1

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;)V

    move-object v0, v1

    .line 151
    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExhaustedKeys()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExhaustedKeys(Z)V

    .line 154
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExpiredKeys()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExpiredKeys(Z)V

    .line 155
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isIncrementUseCount()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/identity/CredstoreIdentityCredential;->setIncrementKeyUsageCount(Z)V

    .line 158
    .end local v6    # "credstoreCredential":Landroid/security/identity/ICredential;
    :cond_0
    nop

    .line 159
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object v1

    .line 160
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getDeviceSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 162
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v4

    .line 158
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object v1

    .line 166
    .local v1, "deviceSignedResult":Landroid/security/identity/ResultData;
    nop

    .line 167
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object v2

    .line 168
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getIssuerSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 170
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v5

    .line 166
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object v2

    .line 172
    .local v2, "issuerSignedResult":Landroid/security/identity/ResultData;
    new-instance v3, Landroid/security/identity/CredstoreCredentialDataResult;

    invoke-direct {v3, v1, v2}, Landroid/security/identity/CredstoreCredentialDataResult;-><init>(Landroid/security/identity/ResultData;Landroid/security/identity/ResultData;)V
    :try_end_0
    .catch Landroid/security/identity/SessionTranscriptMismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 178
    .end local v0    # "credential":Landroid/security/identity/CredstoreIdentityCredential;
    .end local v1    # "deviceSignedResult":Landroid/security/identity/ResultData;
    .end local v2    # "issuerSignedResult":Landroid/security/identity/ResultData;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 182
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 175
    .local v0, "e":Landroid/security/identity/SessionTranscriptMismatchException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCredstoreOperationHandle()J
    .locals 4

    .line 196
    iget-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    if-nez v0, :cond_0

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getAuthChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 207
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    return-wide v0
.end method

.method public whitelist getEphemeralKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 103
    invoke-direct {p0}, Landroid/security/identity/CredstorePresentationSession;->ensureEphemeralKeyPair()V

    .line 104
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public whitelist setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "readerEphemeralPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 111
    nop

    .line 112
    :try_start_0
    invoke-static {p1}, Landroid/security/identity/Util;->publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B

    move-result-object v0

    .line 113
    .local v0, "uncompressedForm":[B
    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v1, v0}, Landroid/security/identity/ISession;->setReaderEphemeralPublicKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "uncompressedForm":[B
    nop

    .line 120
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setSessionTranscript([B)V
    .locals 4
    .param p1, "sessionTranscript"    # [B

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0, p1}, Landroid/security/identity/ISession;->setSessionTranscript([B)V

    .line 126
    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 127
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
