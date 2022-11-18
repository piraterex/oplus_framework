.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
.super Ljava/lang/Object;
.source "BCECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPublicKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field static final whitelist serialVersionUID:J = 0x219f7a8aa3ea4824L


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private transient blacklist configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient blacklist ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private transient blacklist ecSpec:Ljava/security/spec/ECParameterSpec;

.field private blacklist withCompression:Z


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 182
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->populateFromPubKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 183
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 162
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p4, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 130
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 132
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 134
    if-nez p3, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 138
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 139
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 144
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v1, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 147
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 148
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p4, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 107
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 110
    if-nez p3, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 114
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 115
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 118
    :cond_0
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 121
    :goto_0
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 54
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 55
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 56
    iget-boolean v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    .line 57
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 81
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 84
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 85
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 86
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 87
    .end local v0    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 92
    .local v0, "s":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/security/spec/ECParameterSpec;

    invoke-static {p3, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 93
    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 96
    .end local v0    # "s":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPublicKeySpec;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 66
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 67
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 68
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/interfaces/ECPublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 169
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    .line 170
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 171
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 172
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 173
    return-void
.end method

.method private blacklist createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4
    .param p1, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "dp"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 187
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 189
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 190
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 191
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 187
    return-object v0
.end method

.method private blacklist populateFromPubKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 197
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getCurve(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 198
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    .line 201
    .local v2, "bits":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    .line 202
    .local v3, "data":[B
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 207
    .local v4, "key":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    array-length v6, v3

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_1

    aget-byte v5, v3, v7

    const/4 v6, 0x3

    if-eq v5, v7, :cond_0

    aget-byte v5, v3, v7

    if-ne v5, v6, :cond_1

    .line 210
    :cond_0
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v5

    .line 212
    .local v5, "qLength":I
    array-length v7, v3

    sub-int/2addr v7, v6

    if-lt v5, v7, :cond_1

    .line 216
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 221
    goto :goto_0

    .line 218
    :catch_0
    move-exception v6

    .line 220
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "error recovering public key"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 225
    .end local v5    # "qLength":I
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-direct {v5, v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 227
    .local v5, "derQ":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v8, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 228
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

    .line 332
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 334
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 336
    .local v0, "enc":[B
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 338
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->populateFromPubKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 339
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

    .line 345
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 348
    return-void
.end method


# virtual methods
.method blacklist engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method blacklist engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 295
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 313
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    return v1

    .line 318
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 320
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

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

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 4

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    if-nez v0, :cond_1

    const-string v0, "com.android.internal.org.bouncycastle.ec.enable_pc"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 244
    .local v0, "compress":Z
    :goto_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 246
    invoke-static {v3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 248
    .local v1, "algId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    .line 251
    .local v2, "pubKeyOctets":[B
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)[B

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 237
    const-string v0, "X.509"

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public blacklist getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 278
    .local v0, "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getDetachedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 283
    :cond_0
    return-object v0
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 308
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    .line 309
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->publicKeyToString(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
