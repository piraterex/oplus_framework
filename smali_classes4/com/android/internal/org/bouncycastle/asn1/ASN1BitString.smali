.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final blacklist table:[C


# instance fields
.field protected final blacklist data:[B

.field protected final blacklist padBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method protected constructor blacklist <init>(BI)V
    .locals 2
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 105
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 106
    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 112
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    .line 113
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 124
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 125
    if-eqz p1, :cond_3

    .line 129
    array-length v0, p1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    :goto_0
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    .line 138
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 139
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    .line 140
    return-void

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'data\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist fromInputStream(ILjava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .locals 5
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    .line 290
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 291
    .local v1, "padBits":I
    add-int/lit8 v2, p0, -0x1

    new-array v2, v2, [B

    .line 293
    .local v2, "data":[B
    array-length v3, v2

    if-eqz v3, :cond_1

    .line 295
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_0

    .line 300
    if-lez v1, :cond_1

    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 302
    array-length v3, v2

    sub-int/2addr v3, v0

    aget-byte v3, v2, v3

    array-length v4, v2

    sub-int/2addr v4, v0

    aget-byte v0, v2, v4

    const/16 v4, 0xff

    shl-int/2addr v4, v1

    and-int/2addr v0, v4

    int-to-byte v0, v0

    if-eq v3, v0, :cond_1

    .line 304
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v3, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    .line 287
    .end local v1    # "padBits":I
    .end local v2    # "data":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist getBytes(I)[B
    .locals 5
    .param p0, "bitString"    # I

    .line 80
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x4

    .line 86
    .local v0, "bytes":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    .line 88
    mul-int/lit8 v3, v1, 0x8

    shl-int v3, v2, v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    .line 90
    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 86
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_2
    :goto_1
    new-array v1, v0, [B

    .line 96
    .local v1, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 98
    mul-int/lit8 v4, v3, 0x8

    shr-int v4, p0, v4

    and-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 101
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method protected static blacklist getPadBits(I)I
    .locals 3
    .param p0, "bitString"    # I

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "val":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 39
    if-eqz v1, :cond_0

    .line 41
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_1

    .line 43
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 44
    goto :goto_1

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    and-int/lit16 v0, p0, 0xff

    .line 52
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 59
    const/4 v1, 0x0

    return v1

    .line 63
    :cond_3
    const/4 v1, 0x1

    .line 65
    .local v1, "bits":I
    :goto_2
    shl-int/lit8 v2, v0, 0x1

    move v0, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_4

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    :cond_4
    rsub-int/lit8 v2, v1, 0x8

    return v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 10
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 248
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 250
    return v1

    .line 253
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 254
    .local v0, "other":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-eq v2, v3, :cond_1

    .line 256
    return v1

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .local v2, "a":[B
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 259
    .local v3, "b":[B
    array-length v4, v2

    .line 260
    .local v4, "end":I
    array-length v5, v3

    if-eq v4, v5, :cond_2

    .line 262
    return v1

    .line 264
    :cond_2
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    if-gez v4, :cond_3

    .line 266
    return v5

    .line 268
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_5

    .line 270
    aget-byte v7, v2, v6

    aget-byte v8, v3, v6

    if-eq v7, v8, :cond_4

    .line 272
    return v1

    .line 268
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 276
    .end local v6    # "i":I
    :cond_5
    aget-byte v6, v2, v4

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    const/16 v8, 0xff

    shl-int v9, v8, v7

    and-int/2addr v6, v9

    int-to-byte v6, v6

    .line 277
    .local v6, "derA":B
    aget-byte v9, v3, v4

    shl-int v7, v8, v7

    and-int/2addr v7, v9

    int-to-byte v7, v7

    .line 279
    .local v7, "derB":B
    if-ne v6, v7, :cond_6

    move v1, v5

    :cond_6
    return v1
.end method

.method abstract blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getBytes()[B
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 210
    return-object v0

    .line 213
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 215
    .local v0, "rv":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    const/16 v3, 0xff

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 216
    return-object v0
.end method

.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctets()[B
    .locals 2

    .line 198
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPadBits()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    return v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .locals 5

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "buf":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v1, "string":[B
    nop

    .line 161
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 163
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 156
    .end local v1    # "string":[B
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error encoding BitString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v1, v0

    .line 232
    .local v1, "end":I
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 234
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_0
    aget-byte v2, v0, v1

    const/16 v3, 0xff

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 239
    .local v2, "der":B
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([BII)I

    move-result v0

    .line 240
    .local v0, "hc":I
    mul-int/lit16 v0, v0, 0x101

    .line 241
    xor-int/2addr v0, v2

    .line 242
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    xor-int/2addr v3, v0

    return v3
.end method

.method public blacklist intValue()I
    .locals 6

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 177
    .local v1, "end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xff

    if-ge v3, v1, :cond_0

    .line 179
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    aget-byte v5, v5, v3

    and-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "i":I
    :cond_0
    if-ltz v1, :cond_1

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    aget-byte v2, v2, v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 184
    .local v2, "der":B
    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 186
    .end local v2    # "der":B
    :cond_1
    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 319
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 324
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
