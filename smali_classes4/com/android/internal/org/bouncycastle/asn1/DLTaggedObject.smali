.class public Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


# direct methods
.method public constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 26
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 4
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 55
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v1, 0x80

    .line 56
    .local v1, "flags":I
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    :cond_0
    or-int/lit8 v1, v1, 0x20

    .line 61
    :cond_1
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    .line 63
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 69
    return-void
.end method

.method blacklist encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    .line 38
    .local v0, "length":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v1, :cond_0

    .line 40
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 47
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

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

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 73
    return-object p0
.end method
