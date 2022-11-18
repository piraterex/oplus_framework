.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PBKDF2Params.java"


# static fields
.field private static final blacklist algid_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final blacklist iterationCount:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist octStr:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private final blacklist prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 138
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 141
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 142
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 144
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 146
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_1

    .line 150
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 151
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :cond_1
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 165
    :goto_0
    if-eqz v1, :cond_2

    .line 167
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    .line 171
    :cond_2
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 173
    .end local v1    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 176
    :cond_3
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 177
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 179
    :goto_2
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BII)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 90
    return-void
.end method

.method public constructor blacklist <init>([BIILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 3
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I
    .param p4, "prf"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 105
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 107
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 109
    if-lez p3, :cond_0

    .line 111
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 118
    :goto_0
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 119
    return-void
.end method

.method public constructor blacklist <init>([BILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "prf"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 134
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    return-object v0

    .line 56
    :cond_0
    if-eqz p0, :cond_1

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIterationCount()Ljava/math/BigInteger;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeyLength()Ljava/math/BigInteger;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrf()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    .line 235
    return-object v0

    .line 238
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSalt()[B
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isDefaultPrf()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 248
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 250
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
