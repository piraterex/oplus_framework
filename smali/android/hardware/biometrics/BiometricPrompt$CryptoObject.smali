.class public final Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
.super Landroid/hardware/biometrics/CryptoObject;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/security/identity/IdentityCredential;)V
    .locals 0
    .param p1, "credential"    # Landroid/security/identity/IdentityCredential;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 721
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Landroid/security/identity/IdentityCredential;)V

    .line 722
    return-void
.end method

.method public constructor whitelist <init>(Landroid/security/identity/PresentationSession;)V
    .locals 0
    .param p1, "session"    # Landroid/security/identity/PresentationSession;

    .line 725
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Landroid/security/identity/PresentationSession;)V

    .line 726
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;)V
    .locals 0
    .param p1, "signature"    # Ljava/security/Signature;

    .line 702
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 703
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 706
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 707
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 710
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 711
    return-void
.end method


# virtual methods
.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 741
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 749
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPresentationSession()Landroid/security/identity/PresentationSession;
    .locals 1

    .line 767
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getPresentationSession()Landroid/security/identity/PresentationSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .locals 1

    .line 733
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
