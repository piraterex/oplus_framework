.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Attribute.java"


# instance fields
.field private blacklist attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "attrType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValues"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 49
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 31
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

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

    .line 33
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object v0
.end method


# virtual methods
.method public blacklist getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 87
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
