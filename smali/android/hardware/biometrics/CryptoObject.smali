.class public Landroid/hardware/biometrics/CryptoObject;
.super Ljava/lang/Object;
.source "CryptoObject.java"


# instance fields
.field private final greylist-max-o mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/security/identity/IdentityCredential;)V
    .locals 0
    .param p1, "credential"    # Landroid/security/identity/IdentityCredential;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/PresentationSession;)V
    .locals 0
    .param p1, "session"    # Landroid/security/identity/PresentationSession;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/Signature;)V
    .locals 0
    .param p1, "signature"    # Ljava/security/Signature;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public greylist-max-o getCipher()Ljavax/crypto/Cipher;
    .locals 2

    .line 78
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/security/identity/IdentityCredential;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getMac()Ljavax/crypto/Mac;
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final greylist-max-o getOpId()J
    .locals 2

    .line 112
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 113
    const-wide/16 v0, 0x0

    return-wide v0

    .line 114
    :cond_0
    instance-of v1, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_1
    instance-of v1, v0, Landroid/security/identity/PresentationSession;

    if-eqz v1, :cond_2

    .line 117
    check-cast v0, Landroid/security/identity/PresentationSession;

    invoke-virtual {v0}, Landroid/security/identity/PresentationSession;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_2
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPresentationSession()Landroid/security/identity/PresentationSession;
    .locals 2

    .line 104
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Landroid/security/identity/PresentationSession;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/security/identity/PresentationSession;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getSignature()Ljava/security/Signature;
    .locals 2

    .line 70
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljava/security/Signature;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
