.class public Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SubjectPublicKeyInfo.java"


# instance fields
.field private blacklist algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 73
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 82
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 83
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 84
    return-void

    .line 76
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "algId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # [B

    .line 63
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 66
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 33
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0

    .line 43
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getAlgorithmId()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 151
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
