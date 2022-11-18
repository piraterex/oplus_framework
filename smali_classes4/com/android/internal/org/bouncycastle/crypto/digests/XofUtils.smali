.class public Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;
.super Ljava/lang/Object;
.source "XofUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist leftEncode(J)[B
    .locals 8
    .param p0, "strLen"    # J

    .line 11
    const/4 v0, 0x1

    .line 13
    .local v0, "n":B
    move-wide v1, p0

    .line 14
    .local v1, "v":J
    :goto_0
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 16
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 21
    .local v4, "b":[B
    const/4 v5, 0x0

    aput-byte v0, v4, v5

    .line 23
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-gt v5, v0, :cond_1

    .line 25
    sub-int v6, v0, v5

    mul-int/2addr v6, v3

    shr-long v6, p0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 23
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 28
    .end local v5    # "i":I
    :cond_1
    return-object v4
.end method

.method public static blacklist rightEncode(J)[B
    .locals 8
    .param p0, "strLen"    # J

    .line 33
    const/4 v0, 0x1

    .line 35
    .local v0, "n":B
    move-wide v1, p0

    .line 36
    .local v1, "v":J
    :goto_0
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 38
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 41
    :cond_0
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 43
    .local v4, "b":[B
    aput-byte v0, v4, v0

    .line 45
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 47
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v3

    shr-long v6, p0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    .end local v5    # "i":I
    :cond_1
    return-object v4
.end method
