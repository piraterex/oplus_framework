.class public Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "tagNo"    # I

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    return-void
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

    .line 76
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    const/16 v1, 0xa0

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    .line 77
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 91
    .local v0, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 92
    .local v1, "berO":Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 93
    .end local v1    # "berO":Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    .local v0, "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .restart local v0    # "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 108
    .restart local v0    # "e":Ljava/util/Enumeration;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeElements(Ljava/util/Enumeration;)V

    .line 109
    .end local v0    # "e":Ljava/util/Enumeration;
    goto :goto_1

    .line 105
    :cond_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 115
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 139
    return-void
.end method

.method blacklist encodedLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 59
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v1

    .line 61
    .local v1, "length":I
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v2, :cond_0

    .line 63
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2

    .line 68
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 70
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
