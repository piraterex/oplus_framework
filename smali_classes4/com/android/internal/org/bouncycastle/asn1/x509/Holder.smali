.class public Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Holder.java"


# static fields
.field public static final blacklist V1_CERTIFICATE_HOLDER:I = 0x0

.field public static final blacklist V2_CERTIFICATE_HOLDER:I = 0x1


# instance fields
.field blacklist baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

.field blacklist entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private blacklist version:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 101
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 110
    nop

    .line 111
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 113
    .local v2, "tObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag in Holder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_0
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 123
    goto :goto_1

    .line 119
    :pswitch_1
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 120
    goto :goto_1

    .line 116
    :pswitch_2
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 117
    nop

    .line 108
    .end local v2    # "tObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 129
    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "tagObj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 88
    goto :goto_0

    .line 84
    :pswitch_1
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 85
    nop

    .line 92
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 93
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "entityName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;I)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;I)V
    .locals 1
    .param p1, "entityName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "version"    # I

    .line 176
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 177
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 178
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 179
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "baseCertificateID"    # Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;I)V

    .line 134
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;I)V
    .locals 1
    .param p1, "baseCertificateID"    # Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;
    .param p2, "version"    # I

    .line 143
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 144
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 145
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 146
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1
    .param p1, "objectDigestInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 187
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 188
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 189
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    return-object v0

    .line 62
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 66
    :cond_1
    if-eqz p0, :cond_2

    .line 68
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 71
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public blacklist getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 214
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 216
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 218
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v3, :cond_0

    .line 220
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v1, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_1

    .line 225
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v2, :cond_2

    .line 230
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 233
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 237
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_4

    .line 239
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v1, v2, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 243
    :cond_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
