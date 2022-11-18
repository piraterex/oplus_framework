.class public Lcom/android/internal/org/bouncycastle/asn1/BERSet;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.source "BERSet.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 48
    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 57
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/16 v1, 0x31

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodedIndef(ZI[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    return-void
.end method

.method blacklist encodedLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 67
    .local v0, "count":I
    const/4 v1, 0x0

    .line 69
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 72
    .local v3, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 69
    .end local v3    # "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method
