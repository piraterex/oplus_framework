.class Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;
.super Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DHPublicNumberConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getPublicKeyParameters(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 17
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;

    move-result-object v0

    .line 195
    .local v0, "dhPublicKey":Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    .line 197
    .local v1, "y":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v2

    .line 199
    .local v2, "dhParams":Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v9

    .line 200
    .local v9, "p":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v10

    .line 201
    .local v10, "g":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v11

    .line 203
    .local v11, "q":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .line 204
    .local v3, "j":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    .line 204
    :cond_0
    move-object v12, v3

    .line 209
    .end local v3    # "j":Ljava/math/BigInteger;
    .local v12, "j":Ljava/math/BigInteger;
    :goto_0
    const/4 v3, 0x0

    .line 210
    .local v3, "validation":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getValidationParams()Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v13

    .line 211
    .local v13, "dhValidationParms":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v13, :cond_1

    .line 213
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getSeed()[B

    move-result-object v4

    .line 214
    .local v4, "seed":[B
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    move-result-object v5

    .line 218
    .local v5, "pgenCounter":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    move-object v3, v6

    move-object v14, v3

    goto :goto_1

    .line 211
    .end local v4    # "seed":[B
    .end local v5    # "pgenCounter":Ljava/math/BigInteger;
    :cond_1
    move-object v14, v3

    .line 221
    .end local v3    # "validation":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    .local v14, "validation":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    :goto_1
    new-instance v15, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v16, v0

    move-object v0, v8

    .end local v0    # "dhPublicKey":Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;
    .local v16, "dhPublicKey":Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;
    move-object v8, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v15, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v15
.end method
