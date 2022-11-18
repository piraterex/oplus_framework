.class public Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PolicyConstraints.java"


# instance fields
.field private blacklist inhibitPolicyMapping:Ljava/math/BigInteger;

.field private blacklist requireExplicitPolicyMapping:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 46
    .local v1, "to":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 48
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 52
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 42
    .end local v1    # "to":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .restart local v1    # "to":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown tag encountered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "i":I
    .end local v1    # "to":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "requireExplicitPolicyMapping"    # Ljava/math/BigInteger;
    .param p2, "inhibitPolicyMapping"    # Ljava/math/BigInteger;

    .line 35
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    .line 37
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 38
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;
    .locals 1
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 79
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;

    return-object v0

    .line 69
    :cond_0
    if-eqz p0, :cond_1

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getInhibitPolicyMapping()Ljava/math/BigInteger;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getRequireExplicitPolicyMapping()Ljava/math/BigInteger;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 94
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 96
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 98
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v2, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 103
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
