.class public Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;
.implements Lcom/android/internal/org/bouncycastle/crypto/DSAExt;


# instance fields
.field private final blacklist kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 52
    return-void
.end method


# virtual methods
.method protected blacklist calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .line 224
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 225
    .local v0, "log2n":I
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    .line 227
    .local v1, "messageBitLength":I
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 228
    .local v2, "e":Ljava/math/BigInteger;
    if-ge v0, v1, :cond_0

    .line 230
    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 232
    :cond_0
    return-object v2
.end method

.method protected blacklist createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 237
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist generateSignature([B)[Ljava/math/BigInteger;
    .locals 9
    .param p1, "message"    # [B

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 99
    .local v0, "ec":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 100
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 101
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    .line 103
    .local v3, "d":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v1, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    .line 122
    .local v4, "basePointMultiplier":Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v5

    .line 124
    .local v5, "k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 127
    .local v6, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 129
    .local v6, "r":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 131
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 133
    .local v5, "s":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    return-object v7

    .line 129
    .local v5, "k":Ljava/math/BigInteger;
    :cond_2
    goto :goto_1
.end method

.method protected blacklist getDenominator(ILcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "coordinateSystem"    # I
    .param p2, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 242
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 251
    :pswitch_1
    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_2
    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1

    .line 62
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 64
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 66
    .local v1, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    .line 67
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 68
    .end local v1    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 71
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 76
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    .line 79
    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 80
    return-void
.end method

.method protected blacklist initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .line 259
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 18
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 150
    .local v3, "ec":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 151
    .local v4, "n":Ljava/math/BigInteger;
    move-object/from16 v5, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v6

    .line 154
    .local v6, "e":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    const/4 v8, 0x0

    if-ltz v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_0

    move v0, v8

    goto/16 :goto_2

    .line 160
    :cond_0
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_6

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_1

    goto/16 :goto_1

    .line 165
    :cond_1
    invoke-static {v4, v2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 167
    .local v7, "c":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 168
    .local v9, "u1":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 170
    .local v10, "u2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 171
    .local v11, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v12, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 173
    .local v12, "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v11, v9, v12, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 176
    .local v13, "point":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 178
    return v8

    .line 194
    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v14

    .line 195
    .local v14, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    if-eqz v14, :cond_5

    .line 197
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v15

    .line 198
    .local v15, "cofactor":Ljava/math/BigInteger;
    if-eqz v15, :cond_5

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->EIGHT:Ljava/math/BigInteger;

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gtz v8, :cond_5

    .line 200
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    invoke-virtual {v0, v8, v13}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->getDenominator(ILcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 201
    .local v8, "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-nez v17, :cond_5

    .line 203
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 204
    .end local p2    # "r":Ljava/math/BigInteger;
    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "r":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->isValidFieldElement(Ljava/math/BigInteger;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 206
    invoke-virtual {v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 207
    .local v2, "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 209
    const/16 v16, 0x1

    return v16

    .line 211
    :cond_3
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 212
    .end local v2    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v2, p3

    goto :goto_0

    .line 213
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 218
    .end local v0    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "r":Ljava/math/BigInteger;
    .end local v8    # "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "cofactor":Ljava/math/BigInteger;
    .restart local p2    # "r":Ljava/math/BigInteger;
    :cond_5
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 219
    .local v0, "v":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 162
    .end local v0    # "v":Ljava/math/BigInteger;
    .end local v7    # "c":Ljava/math/BigInteger;
    .end local v9    # "u1":Ljava/math/BigInteger;
    .end local v10    # "u2":Ljava/math/BigInteger;
    .end local v11    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v12    # "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v13    # "point":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v14    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_7
    move v0, v8

    .line 156
    :goto_2
    return v0
.end method
