.class public abstract Lcom/android/internal/org/bouncycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bigEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 19
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    .line 20
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 21
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 22
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public static blacklist bigEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 30
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 31
    add-int/lit8 p1, p1, 0x4

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist bigEndianToInt([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 39
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 40
    add-int/lit8 p1, p1, 0x4

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist bigEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 86
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 87
    .local v0, "hi":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 88
    .local v1, "lo":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist bigEndianToLong([BI[J)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 96
    add-int/lit8 p1, p1, 0x8

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist bigEndianToLong([BI[JII)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "ns"    # [J
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 104
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 105
    add-int/lit8 p1, p1, 0x8

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist bigEndianToShort([BI)S
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 12
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 13
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 14
    int-to-short v1, v0

    return v1
.end method

.method public static blacklist intToBigEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 53
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 54
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 55
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 56
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 57
    return-void
.end method

.method public static blacklist intToBigEndian([III[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 79
    add-int v1, p1, v0

    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 80
    add-int/lit8 p4, p4, 0x4

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist intToBigEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 70
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 71
    add-int/lit8 p2, p2, 0x4

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist intToBigEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 47
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 48
    return-object v0
.end method

.method public static blacklist intToBigEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    .line 61
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 62
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 63
    return-object v0
.end method

.method public static blacklist intToLittleEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 246
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 247
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 248
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 249
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 250
    return-void
.end method

.method public static blacklist intToLittleEndian([III[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 272
    add-int v1, p1, v0

    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 273
    add-int/lit8 p4, p4, 0x4

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist intToLittleEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 263
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 264
    add-int/lit8 p2, p2, 0x4

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist intToLittleEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 240
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 241
    return-object v0
.end method

.method public static blacklist intToLittleEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    .line 254
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 255
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 256
    return-object v0
.end method

.method public static blacklist littleEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 173
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 174
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 175
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 176
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 177
    return v0
.end method

.method public static blacklist littleEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 184
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 185
    add-int/lit8 p1, p1, 0x4

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist littleEndianToInt([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "bOff"    # I
    .param p2, "ns"    # [I
    .param p3, "nOff"    # I
    .param p4, "count"    # I

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 193
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 194
    add-int/lit8 p1, p1, 0x4

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist littleEndianToInt([BII)[I
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "count"    # I

    .line 200
    new-array v0, p2, [I

    .line 201
    .local v0, "ns":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 203
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 204
    add-int/lit8 p1, p1, 0x4

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist littleEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 279
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 280
    .local v0, "lo":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 281
    .local v1, "hi":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist littleEndianToLong([BI[J)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 288
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 289
    add-int/lit8 p1, p1, 0x8

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist littleEndianToLong([BI[JII)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "ns"    # [J
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 297
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 298
    add-int/lit8 p1, p1, 0x8

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist littleEndianToShort([BI)S
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .line 166
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 167
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 168
    int-to-short v1, v0

    return v1
.end method

.method public static blacklist longToBigEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .line 118
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 119
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 120
    return-void
.end method

.method public static blacklist longToBigEndian(J[BII)V
    .locals 4
    .param p0, "value"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .param p4, "bytes"    # I

    .line 157
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 159
    add-int v1, v0, p3

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 160
    const/16 v1, 0x8

    ushr-long/2addr p0, v1

    .line 157
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist longToBigEndian([JII[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 142
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 143
    add-int/lit8 p4, p4, 0x8

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist longToBigEndian([J[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 133
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 134
    add-int/lit8 p2, p2, 0x8

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist longToBigEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 112
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 113
    return-object v0
.end method

.method public static blacklist longToBigEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    .line 124
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 125
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 126
    return-object v0
.end method

.method public static blacklist longToLittleEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .line 311
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 312
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 313
    return-void
.end method

.method public static blacklist longToLittleEndian([JII[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 335
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 336
    add-int/lit8 p4, p4, 0x8

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist longToLittleEndian([J[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 326
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 327
    add-int/lit8 p2, p2, 0x8

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist longToLittleEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    .line 304
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 305
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 306
    return-object v0
.end method

.method public static blacklist longToLittleEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    .line 317
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 318
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 319
    return-object v0
.end method

.method public static blacklist shortToBigEndian(S[BI)V
    .locals 1
    .param p0, "n"    # S
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 232
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 233
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 234
    return-void
.end method

.method public static blacklist shortToBigEndian(S)[B
    .locals 2
    .param p0, "n"    # S

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 226
    .local v0, "r":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 227
    return-object v0
.end method

.method public static blacklist shortToLittleEndian(S[BI)V
    .locals 1
    .param p0, "n"    # S
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .line 218
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 219
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 220
    return-void
.end method

.method public static blacklist shortToLittleEndian(S)[B
    .locals 2
    .param p0, "n"    # S

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 212
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 213
    return-object v0
.end method
