.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RSASSAPSSparams.java"


# static fields
.field public static final blacklist DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final blacklist DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final blacklist DEFAULT_SALT_LENGTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field public static final blacklist DEFAULT_TRAILER_FIELD:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private blacklist hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 30
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 55
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 57
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 74
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 78
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 84
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 97
    goto :goto_1

    .line 93
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    goto :goto_1

    .line 90
    :pswitch_2
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    goto :goto_1

    .line 87
    :pswitch_3
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 88
    nop

    .line 80
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "maskGenAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "saltLength"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p4, "trailerField"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 69
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 70
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 37
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    return-object v0

    .line 41
    :cond_0
    if-eqz p0, :cond_1

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSaltLength()Ljava/math/BigInteger;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTrailerField()Ljava/math/BigInteger;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 152
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 154
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
