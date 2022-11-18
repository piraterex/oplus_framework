.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X9FieldElement.java"


# static fields
.field private static blacklist converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected blacklist f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor blacklist <init>(IIIILcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 7
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "s"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 41
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v5, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "f"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 24
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "s"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getValue()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 67
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v0

    .line 68
    .local v0, "byteCount":I
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 70
    .local v1, "paddedBigInteger":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2
.end method
