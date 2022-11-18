.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 54
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 57
    .local v0, "count":I
    const/16 v1, 0xff

    const/4 v2, 0x0

    if-lez p2, :cond_1

    .line 59
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    int-to-byte v1, v1

    .local v1, "code":B
    goto :goto_2

    .line 63
    .end local v1    # "code":B
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-byte v1, v1

    .line 66
    .restart local v1    # "code":B
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 68
    aput-byte v1, p1, p2

    .line 69
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 72
    :cond_3
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "TBC"

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

    .line 28
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

    .line 81
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    .line 83
    .local v0, "code":B
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 84
    .local v1, "index":I
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-ne v2, v0, :cond_0

    .line 86
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2
.end method
