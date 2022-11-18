.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKey()[B
    .locals 2

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 44
    .local v0, "newKey":[B
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 46
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 48
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    return-object v0

    .line 48
    :cond_0
    goto :goto_0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 24
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 26
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    .line 36
    :goto_1
    return-void
.end method
