.class public Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PolicyInformation.java"


# instance fields
.field private blacklist policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "policyIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "policyIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "policyQualifiers"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 35
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 54
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 56
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    return-object v0
.end method


# virtual methods
.method public blacklist getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 84
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Policy information: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 103
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v1, "p":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "i":I
    :cond_1
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .end local v1    # "p":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
