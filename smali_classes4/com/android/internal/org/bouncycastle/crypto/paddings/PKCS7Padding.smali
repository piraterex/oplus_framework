.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 44
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 46
    .local v0, "code":B
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 48
    aput-byte v0, p1, p2

    .line 49
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "PKCS7"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist padCount([B)I
    .locals 8
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 61
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 62
    .local v0, "count":I
    int-to-byte v2, v0

    .line 65
    .local v2, "countAsbyte":B
    array-length v3, p1

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    or-int/2addr v3, v5

    .line 67
    .local v3, "failed":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_4

    .line 69
    array-length v6, p1

    sub-int/2addr v6, v5

    if-gt v6, v0, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    aget-byte v7, p1, v5

    if-eq v7, v2, :cond_3

    move v7, v1

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    and-int/2addr v6, v7

    or-int/2addr v3, v6

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 72
    .end local v5    # "i":I
    :cond_4
    if-nez v3, :cond_5

    .line 77
    return v0

    .line 74
    :cond_5
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v4, "pad block corrupted"

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
