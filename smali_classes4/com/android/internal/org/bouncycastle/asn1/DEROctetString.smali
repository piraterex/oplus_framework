.class public Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 22
    return-void
.end method

.method static blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V
    .locals 6
    .param p0, "derOut"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p1, "withTag"    # Z
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[BII)V

    .line 64
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

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->string:[B

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 49
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 53
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 58
    return-object p0
.end method
