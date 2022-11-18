.class public Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "DERBMPString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private final blacklist string:[C


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 125
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    .line 131
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([B)V
    .locals 6
    .param p1, "string"    # [B

    .line 85
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 86
    if-eqz p1, :cond_2

    .line 91
    array-length v0, p1

    .line 92
    .local v0, "byteLen":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 97
    div-int/lit8 v1, v0, 0x2

    .line 98
    .local v1, "charLen":I
    new-array v2, v1, [C

    .line 100
    .local v2, "cs":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_0

    .line 102
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    .line 106
    return-void

    .line 94
    .end local v1    # "charLen":I
    .end local v2    # "cs":[C
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "byteLen":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([C)V
    .locals 2
    .param p1, "string"    # [C

    .line 109
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    .line 116
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    .locals 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 69
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v1

    .line 71
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 42
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    return-object v0
.end method


# virtual methods
.method protected blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 151
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    .line 158
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result v1

    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 12
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    .line 176
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 178
    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 180
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 182
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 184
    .local v2, "buf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    and-int/lit8 v4, v0, -0x4

    .line 185
    .local v4, "limit":I
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    .line 187
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    aget-char v8, v7, v3

    .local v8, "c0":C
    add-int/lit8 v9, v3, 0x1

    aget-char v9, v7, v9

    .local v9, "c1":C
    add-int/lit8 v10, v3, 0x2

    aget-char v10, v7, v10

    .local v10, "c2":C
    add-int/lit8 v11, v3, 0x3

    aget-char v7, v7, v11

    .line 188
    .local v7, "c3":C
    add-int/lit8 v3, v3, 0x4

    .line 190
    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    .line 191
    int-to-byte v11, v8

    aput-byte v11, v2, v6

    .line 192
    shr-int/lit8 v6, v9, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x2

    aput-byte v6, v2, v11

    .line 193
    int-to-byte v6, v9

    const/4 v11, 0x3

    aput-byte v6, v2, v11

    .line 194
    shr-int/lit8 v6, v10, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x4

    aput-byte v6, v2, v11

    .line 195
    const/4 v6, 0x5

    int-to-byte v11, v10

    aput-byte v11, v2, v6

    .line 196
    const/4 v6, 0x6

    shr-int/lit8 v11, v7, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v6

    .line 197
    const/4 v6, 0x7

    int-to-byte v11, v7

    aput-byte v11, v2, v6

    .line 199
    invoke-virtual {p1, v2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 200
    .end local v7    # "c3":C
    .end local v8    # "c0":C
    .end local v9    # "c1":C
    .end local v10    # "c2":C
    goto :goto_0

    .line 201
    :cond_1
    if-ge v3, v0, :cond_3

    .line 203
    const/4 v1, 0x0

    .line 206
    .local v1, "bufPos":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    aget-char v7, v7, v3

    .line 207
    .local v7, "c0":C
    add-int/2addr v3, v6

    .line 209
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "bufPos":I
    .local v8, "bufPos":I
    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v1

    .line 210
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "bufPos":I
    .restart local v1    # "bufPos":I
    int-to-byte v9, v7

    aput-byte v9, v2, v8

    .line 212
    .end local v7    # "c0":C
    if-lt v3, v0, :cond_2

    .line 214
    invoke-virtual {p1, v2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 216
    .end local v1    # "bufPos":I
    :cond_3
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
