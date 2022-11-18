.class public Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DistributionPoint.java"


# instance fields
.field blacklist cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

.field blacklist reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 61
    .local v1, "t":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag encountered in structure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 71
    goto :goto_1

    .line 67
    :pswitch_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 68
    goto :goto_1

    .line 64
    :pswitch_2
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 65
    nop

    .line 58
    .end local v1    # "t":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0
    .param p1, "distributionPoint"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .param p2, "reasons"    # Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;
    .param p3, "cRLIssuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 82
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 84
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 85
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 86
    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 153
    const-string v0, "    "

    .line 155
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 36
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 42
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    return-object v0
.end method


# virtual methods
.method public blacklist getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public blacklist getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 105
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 107
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 112
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_1

    .line 117
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_2

    .line 122
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 125
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 130
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "reasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cRLIssuer"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
