.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;
.super Ljava/lang/Object;
.source "ISO10126d2Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 47
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 49
    .local v0, "code":B
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 52
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    aput-byte v0, p1, p2

    .line 57
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "ISO10126-2"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    .line 27
    return-void
.end method

.method public blacklist padCount([B)I
    .locals 3
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 66
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 68
    .local v0, "count":I
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 73
    return v0

    .line 70
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
