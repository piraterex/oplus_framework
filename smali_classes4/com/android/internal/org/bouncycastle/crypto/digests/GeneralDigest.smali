.class public abstract Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/internal/org/bouncycastle/util/Memoable;


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private final blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 29
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 39
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .locals 4
    .param p1, "encodedState"    # [B

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 43
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 45
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 46
    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;

    .line 50
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 53
    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 54
    return-void
.end method

.method public blacklist finish()V
    .locals 3

    .line 117
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 122
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 124
    :goto_0
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 132
    return-void
.end method

.method public blacklist getByteLength()I
    .locals 1

    .line 154
    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist populateState([B)V
    .locals 3
    .param p1, "state"    # [B

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 149
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 150
    return-void
.end method

.method protected abstract blacklist processBlock()V
.end method

.method protected abstract blacklist processLength(J)V
.end method

.method protected abstract blacklist processWord([BI)V
.end method

.method public blacklist reset()V
    .locals 4

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 141
    aput-byte v0, v2, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist update(B)V
    .locals 4
    .param p1, "in"    # B

    .line 59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 61
    array-length v1, v0

    if-ne v2, v1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 64
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 67
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 68
    return-void
.end method

.method public blacklist update([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 75
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "i":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_1

    .line 83
    :goto_0
    if-ge v1, p3, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    .line 86
    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    .line 88
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 89
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 90
    move v1, v5

    goto :goto_1

    .line 86
    :cond_0
    move v1, v5

    goto :goto_0

    .line 98
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_1
    :goto_1
    sub-int v0, p3, v1

    and-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v1

    .line 99
    .local v0, "limit":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 101
    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 99
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 107
    :cond_2
    :goto_3
    if-ge v1, p3, :cond_3

    .line 109
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    move v1, v4

    goto :goto_3

    .line 112
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_3
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 113
    return-void
.end method
