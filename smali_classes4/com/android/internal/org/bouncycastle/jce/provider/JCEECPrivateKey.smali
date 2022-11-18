.class public Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private blacklist d:Ljava/math/BigInteger;

.field private blacklist ecSpec:Ljava/security/spec/ECParameterSpec;

.field private blacklist publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field private blacklist withCompression:Z


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 182
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 183
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 185
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 150
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 151
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 153
    if-nez p4, :cond_0

    .line 155
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 156
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 158
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 163
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 168
    .local v0, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    .line 170
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 171
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 172
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 175
    .end local v0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 176
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 122
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 123
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 125
    if-nez p4, :cond_0

    .line 127
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 128
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 130
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 134
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 135
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 138
    :cond_0
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 141
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 108
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 110
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 111
    iget-boolean v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 112
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 113
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 76
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 79
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 84
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 86
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 87
    .end local v0    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 92
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 99
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 101
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 67
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 68
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 69
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 70
    return-void
.end method

.method private blacklist getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 2
    .param p1, "pub"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;

    .line 441
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 443
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 445
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 199
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 202
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 222
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 224
    .local v3, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    .line 225
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v8

    .line 228
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v9

    .line 229
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v10

    move-object v5, v4

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 231
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 239
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 241
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 243
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 244
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 245
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 248
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 249
    .local v1, "privKey":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_2

    .line 251
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    .line 253
    .local v2, "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 254
    .end local v2    # "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    goto :goto_1

    .line 257
    :cond_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    move-object v3, v1

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 259
    .local v2, "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 260
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 262
    .end local v2    # "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_1
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 457
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 459
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 461
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 463
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 464
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 472
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 475
    return-void
.end method


# virtual methods
.method blacklist engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 369
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 410
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 412
    return v1

    .line 415
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 417
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 395
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getD()Ljava/math/BigInteger;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v1, :cond_1

    .line 291
    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 292
    .local v0, "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    .line 294
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 296
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object v0, v1

    .line 297
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 298
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    if-nez v0, :cond_2

    .line 300
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V

    .restart local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 304
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 306
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 308
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 309
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 310
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 311
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 313
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v0, v2

    .line 319
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_3

    .line 321
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .local v1, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    goto :goto_1

    .line 325
    .end local v1    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 339
    .restart local v1    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_1
    :try_start_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 342
    .local v2, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 344
    .end local v2    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 276
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getS()Ljava/math/BigInteger;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 389
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 390
    return-void
.end method

.method public blacklist setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 405
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 406
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 427
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
