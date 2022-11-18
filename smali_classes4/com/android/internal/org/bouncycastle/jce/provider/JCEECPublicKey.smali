.class public Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source "JCEECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPublicKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private blacklist ecSpec:Ljava/security/spec/ECParameterSpec;

.field private blacklist q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field private blacklist withCompression:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 185
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 160
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 133
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 135
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 136
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 138
    if-nez p3, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 142
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 143
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 148
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v1, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 150
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 113
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 116
    if-nez p3, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 120
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 121
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 124
    :cond_0
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 126
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 64
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 65
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 66
    iget-boolean v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 87
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 90
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 92
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 93
    .end local v0    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 100
    .local v0, "s":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 102
    .end local v0    # "s":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 104
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPublicKeySpec;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 77
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 2
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 176
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 177
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 178
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 179
    return-void
.end method

.method private blacklist createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4
    .param p1, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "dp"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 166
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 168
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 170
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 166
    return-object v0
.end method

.method private blacklist extractBytes([BILjava/math/BigInteger;)V
    .locals 6
    .param p1, "encKey"    # [B
    .param p2, "offSet"    # I
    .param p3, "bI"    # Ljava/math/BigInteger;

    .line 409
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 410
    .local v0, "val":[B
    array-length v1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 412
    new-array v1, v2, [B

    .line 413
    .local v1, "tmp":[B
    const/4 v3, 0x0

    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    move-object v0, v1

    .line 417
    .end local v1    # "tmp":[B
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v2, :cond_1

    .line 419
    add-int v3, p2, v1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    aget-byte v4, v0, v4

    aput-byte v4, p1, v3

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist populateFromPubKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 13
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 238
    .local v0, "algID":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v1

    .line 242
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 245
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    .line 247
    .local v3, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 248
    .local v4, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 250
    .local v5, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    .line 251
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v9

    .line 254
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v10

    .line 255
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v11

    move-object v6, v12

    move-object v8, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v12, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 256
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    .line 257
    .end local v4    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v5    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 260
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .restart local v4    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    .line 264
    .end local v4    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 266
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 267
    .restart local v4    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 269
    .local v3, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v5, Ljava/security/spec/ECParameterSpec;

    .line 271
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 272
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 273
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-direct {v5, v3, v6, v7, v8}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 276
    .end local v2    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    .line 277
    .local v2, "bits":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    .line 278
    .local v3, "data":[B
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 283
    .local v5, "key":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v6, 0x0

    aget-byte v6, v3, v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    array-length v7, v3

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_3

    aget-byte v6, v3, v8

    const/4 v7, 0x3

    if-eq v6, v8, :cond_2

    aget-byte v6, v3, v8

    if-ne v6, v7, :cond_3

    .line 286
    :cond_2
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v6

    .line 288
    .local v6, "qLength":I
    array-length v8, v3

    sub-int/2addr v8, v7

    if-lt v6, v8, :cond_3

    .line 292
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 297
    goto :goto_1

    .line 294
    :catch_0
    move-exception v7

    .line 296
    .local v7, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "error recovering public key"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    .end local v6    # "qLength":I
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_1
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-direct {v6, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 302
    .local v6, "derQ":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 304
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v2    # "bits":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .end local v3    # "data":[B
    .end local v4    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v5    # "key":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "derQ":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
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

    .line 507
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 509
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 511
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    .line 513
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

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 521
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 522
    return-void
.end method


# virtual methods
.method public blacklist engineGetQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method blacklist engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 462
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 488
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return v1

    .line 493
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;

    .line 495
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

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

    .line 308
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 8

    .line 372
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v1, :cond_1

    .line 374
    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 375
    .local v0, "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    .line 377
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 379
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object v0, v1

    .line 380
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 381
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    if-nez v0, :cond_2

    .line 383
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V

    .restart local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 387
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 389
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 391
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 392
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 393
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 394
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 396
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v0, v2

    .line 399
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    .line 401
    .local v1, "pubKeyOctets":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    move-object v1, v2

    .line 404
    .local v1, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 313
    const-string v0, "X.509"

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public blacklist getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getDetachedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 483
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    .line 484
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 470
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 471
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "EC Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
