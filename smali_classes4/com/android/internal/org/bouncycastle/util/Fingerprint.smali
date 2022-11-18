.class public Lcom/android/internal/org/bouncycastle/util/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# static fields
.field private static blacklist encodingTable:[C


# instance fields
.field private final blacklist fingerprint:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>([B)V
    .locals 1
    .param p1, "source"    # [B

    .line 32
    const/16 v0, 0xa0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;-><init>([BI)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .locals 1
    .param p1, "source"    # [B
    .param p2, "bitLength"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    .line 44
    return-void
.end method

.method public static blacklist calculateFingerprint([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 118
    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateFingerprint([BI)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "bitLength"    # I

    .line 132
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 141
    .local v0, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 143
    div-int/lit8 v1, p1, 0x8

    new-array v1, v1, [B

    .line 148
    .local v1, "rv":[B
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 149
    .local v4, "untruncated":[B
    invoke-interface {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 150
    div-int/lit8 v5, p1, 0x8

    if-lt v5, v3, :cond_0

    .line 151
    return-object v4

    .line 154
    :cond_0
    array-length v3, v1

    invoke-static {v4, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return-object v1

    .line 134
    .end local v0    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v1    # "rv":[B
    .end local v4    # "untruncated":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    if-ne p1, p0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFingerprint()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 79
    if-lez v1, :cond_0

    .line 81
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    sget-object v2, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
