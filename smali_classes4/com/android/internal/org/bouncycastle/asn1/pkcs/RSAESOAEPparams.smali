.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RSAESOAEPparams.java"


# static fields
.field public static final blacklist DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final blacklist DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final blacklist DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private blacklist hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 74
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 80
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 90
    goto :goto_1

    .line 86
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    goto :goto_1

    .line 83
    :pswitch_2
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 84
    nop

    .line 76
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
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

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "maskGenAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "pSourceAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getPSourceAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 140
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 142
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
