.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


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

    .line 45
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 47
    .local v0, "added":I
    const/16 v1, -0x80

    aput-byte v1, p1, p2

    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 50
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 52
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 53
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "ISO7816-4"

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

    .line 25
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

    .line 65
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 67
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 69
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 72
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x80

    if-ne v1, v2, :cond_1

    .line 77
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1

    .line 74
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
