.class public Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ECPrivateKey.java"


# instance fields
.field private blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor blacklist <init>(ILjava/math/BigInteger;)V
    .locals 5
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 73
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 75
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 5
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "publicKey"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .param p4, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 115
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 116
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 118
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 120
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 125
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    :cond_0
    if-eqz p3, :cond_1

    .line 130
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 133
    :cond_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 134
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;

    .line 58
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "publicKey"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .param p3, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 99
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    return-object v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getObjectInTag(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "tagNo"    # I

    .line 155
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 157
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 161
    .local v1, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 163
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 164
    .local v2, "tag":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 166
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 169
    .end local v1    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v2    # "tag":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist getKey()Ljava/math/BigInteger;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 140
    .local v0, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getObjectInTag(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getObjectInTag(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
