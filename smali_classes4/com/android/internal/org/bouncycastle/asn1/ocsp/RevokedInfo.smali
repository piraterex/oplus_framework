.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RevokedInfo.java"


# instance fields
.field private blacklist revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

.field private blacklist revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V
    .locals 0
    .param p1, "revocationTime"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p2, "revocationReason"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    .line 27
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 29
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 39
    nop

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 39
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    .line 42
    :cond_0
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 48
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    if-eqz v0, :cond_0

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    return-object v0

    .line 58
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getRevocationReason()Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public blacklist getRevocationTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 86
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 88
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    if-eqz v1, :cond_0

    .line 91
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
