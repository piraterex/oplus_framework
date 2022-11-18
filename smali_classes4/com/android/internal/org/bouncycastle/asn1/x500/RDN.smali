.class public Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private blacklist values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 48
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 51
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 54
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 55
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "values"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 23
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "attrTAndV"    # Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "aAndVs"    # [Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 70
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 29
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method blacklist collectAttributeTypes([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;I)I
    .locals 5
    .param p1, "oids"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "oidsOff"    # I

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 112
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 115
    .local v2, "attr":Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    add-int v3, p2, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    aput-object v4, p1, v3

    .line 112
    .end local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method blacklist containsAttributeType(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 4
    .param p1, "attributeType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 123
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 126
    .local v2, "attr":Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const/4 v3, 0x1

    return v3

    .line 123
    .end local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 101
    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public blacklist isMultiValued()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist size()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
