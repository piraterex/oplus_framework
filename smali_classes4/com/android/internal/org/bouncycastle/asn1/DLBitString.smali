.class public Lcom/android/internal/org/bouncycastle/asn1/DLBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.source "DLBitString.java"


# direct methods
.method protected constructor blacklist <init>(BI)V
    .locals 0
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .line 97
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 105
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 86
    return-void
.end method

.method static blacklist fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/DLBitString;
    .locals 5
    .param p0, "bytes"    # [B

    .line 129
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 134
    const/4 v0, 0x0

    aget-byte v2, p0, v0

    .line 135
    .local v2, "padBits":I
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 137
    .local v3, "data":[B
    array-length v4, v3

    if-eqz v4, :cond_0

    .line 139
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0

    .line 131
    .end local v2    # "padBits":I
    .end local v3    # "data":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .locals 2
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 62
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    move-result-object v1

    return-object v1

    .line 64
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 23
    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0

    .line 31
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 35
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 39
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

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
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

    .line 25
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    return-object v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 3
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->padBits:I

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB[B)V

    .line 120
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 124
    return-object p0
.end method
