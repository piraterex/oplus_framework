.class Lcom/android/internal/org/bouncycastle/asn1/DERFactory;
.super Ljava/lang/Object;
.source "DERFactory.java"


# static fields
.field static final blacklist EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field static final blacklist EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 7
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .locals 2
    .param p0, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 11
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 13
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method static blacklist createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 2
    .param p0, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 23
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
