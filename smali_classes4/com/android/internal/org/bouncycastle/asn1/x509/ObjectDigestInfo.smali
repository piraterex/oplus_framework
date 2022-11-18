.class public Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ObjectDigestInfo.java"


# static fields
.field public static final blacklist otherObjectDigest:I = 0x2

.field public static final blacklist publicKey:I = 0x0

.field public static final blacklist publicKeyCert:I = 0x1


# instance fields
.field blacklist digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist digestedObjectType:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

.field blacklist objectDigest:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist otherObjectTypeID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "digestedObjectType"    # I
    .param p2, "otherObjectTypeID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "digestAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "objectDigest"    # [B

    .line 102
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 104
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 106
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    :cond_0
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 110
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 111
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 115
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "offset":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 132
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 134
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 135
    return-void

    .line 118
    .end local v0    # "offset":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 81
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0

    .line 69
    :cond_0
    if-eqz p0, :cond_1

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getDigestedObjectType()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public blacklist getObjectDigest()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getOtherObjectTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 178
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 180
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
