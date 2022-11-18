.class public Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 23
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getNumberOfIterations(II)I
    .locals 4
    .param p0, "bits"    # I
    .param p1, "certainty"    # I

    .line 210
    const/4 v0, 0x4

    const/16 v1, 0x64

    const/16 v2, 0x600

    if-lt p0, v2, :cond_2

    .line 212
    if-gt p1, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 213
    :cond_0
    const/16 v1, 0x80

    if-gt p1, v1, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    add-int/lit8 v1, p1, -0x80

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 212
    :goto_0
    return v0

    .line 216
    :cond_2
    const/16 v2, 0x400

    const/4 v3, 0x5

    if-lt p0, v2, :cond_5

    .line 218
    if-gt p1, v1, :cond_3

    goto :goto_1

    .line 219
    :cond_3
    const/16 v0, 0x70

    if-gt p1, v0, :cond_4

    move v0, v3

    goto :goto_1

    .line 220
    :cond_4
    add-int/lit8 v0, p1, -0x70

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 218
    :goto_1
    return v0

    .line 222
    :cond_5
    const/16 v0, 0x200

    const/16 v2, 0x50

    if-lt p0, v0, :cond_8

    .line 224
    const/4 v0, 0x7

    if-gt p1, v2, :cond_6

    goto :goto_2

    .line 225
    :cond_6
    if-gt p1, v1, :cond_7

    move v3, v0

    goto :goto_2

    .line 226
    :cond_7
    add-int/lit8 v1, p1, -0x64

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v1, 0x7

    .line 224
    :goto_2
    return v3

    .line 230
    :cond_8
    const/16 v0, 0x28

    if-gt p1, v2, :cond_9

    goto :goto_3

    .line 231
    :cond_9
    add-int/lit8 v1, p1, -0x50

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 230
    :goto_3
    return v0
.end method


# virtual methods
.method protected blacklist chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;
    .param p3, "sqrdBound"    # Ljava/math/BigInteger;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 167
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    .line 174
    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 184
    nop

    .line 163
    .end local v1    # "p":Ljava/math/BigInteger;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .restart local v1    # "p":Ljava/math/BigInteger;
    :cond_3
    return-object v1

    .line 190
    .end local v0    # "i":I
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unable to generate prime number for RSA key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 34

    .line 34
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 35
    .local v1, "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    const/4 v2, 0x0

    .line 40
    .local v2, "done":Z
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v3

    .line 41
    .local v3, "strength":I
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 42
    .local v4, "pbitlength":I
    sub-int v5, v3, v4

    .line 43
    .local v5, "qbitlength":I
    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, -0x64

    .line 45
    .local v6, "mindiffbits":I
    div-int/lit8 v7, v3, 0x3

    if-ge v6, v7, :cond_0

    .line 47
    div-int/lit8 v6, v3, 0x3

    .line 50
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    .line 53
    .local v7, "minWeight":I
    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    div-int/lit8 v9, v3, 0x2

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 55
    .local v8, "dLowerBound":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 57
    .local v10, "squaredBound":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 59
    .local v9, "minDiff":Ljava/math/BigInteger;
    :goto_0
    if-nez v2, :cond_7

    .line 63
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    .line 65
    .local v11, "e":Ljava/math/BigInteger;
    invoke-virtual {v0, v4, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 72
    .local v12, "p":Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {v0, v5, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 75
    .local v13, "q":Ljava/math/BigInteger;
    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    .line 76
    .local v14, "diff":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    if-lt v15, v6, :cond_6

    invoke-virtual {v14, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gtz v15, :cond_1

    .line 78
    move/from16 v16, v2

    move/from16 v21, v3

    move/from16 v28, v4

    move/from16 v29, v5

    goto/16 :goto_3

    .line 84
    :cond_1
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 86
    .local v15, "n":Ljava/math/BigInteger;
    move/from16 v16, v2

    .end local v2    # "done":Z
    .local v16, "done":Z
    invoke-virtual {v15}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 92
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 93
    move/from16 v2, v16

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v15}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v2

    if-ge v2, v7, :cond_3

    .line 104
    invoke-virtual {v0, v4, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 105
    move/from16 v2, v16

    goto :goto_1

    .line 111
    .end local v14    # "diff":Ljava/math/BigInteger;
    :cond_3
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_4

    .line 113
    move-object v2, v12

    .line 114
    .local v2, "gcd":Ljava/math/BigInteger;
    move-object v12, v13

    .line 115
    move-object v13, v2

    move-object v2, v12

    move-object v14, v13

    goto :goto_2

    .line 111
    .end local v2    # "gcd":Ljava/math/BigInteger;
    :cond_4
    move-object v2, v12

    move-object v14, v13

    .line 118
    .end local v12    # "p":Ljava/math/BigInteger;
    .end local v13    # "q":Ljava/math/BigInteger;
    .local v2, "p":Ljava/math/BigInteger;
    .local v14, "q":Ljava/math/BigInteger;
    :goto_2
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 119
    .local v13, "pSub1":Ljava/math/BigInteger;
    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 120
    .local v12, "qSub1":Ljava/math/BigInteger;
    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 121
    .local v0, "gcd":Ljava/math/BigInteger;
    move/from16 v21, v3

    .end local v3    # "strength":I
    .local v21, "strength":I
    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 126
    .local v3, "lcm":Ljava/math/BigInteger;
    move-object/from16 v22, v0

    .end local v0    # "gcd":Ljava/math/BigInteger;
    .local v22, "gcd":Ljava/math/BigInteger;
    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 128
    .local v0, "d":Ljava/math/BigInteger;
    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-gtz v17, :cond_5

    .line 130
    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v21

    goto/16 :goto_0

    .line 134
    :cond_5
    const/16 v23, 0x1

    .line 142
    .end local v16    # "done":Z
    .local v23, "done":Z
    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    .line 143
    .local v24, "dP":Ljava/math/BigInteger;
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    .line 144
    .local v25, "dQ":Ljava/math/BigInteger;
    invoke-static {v2, v14}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    .line 146
    .local v26, "qInv":Ljava/math/BigInteger;
    move-object/from16 v27, v3

    .end local v3    # "lcm":Ljava/math/BigInteger;
    .local v27, "lcm":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move/from16 v28, v4

    .end local v4    # "pbitlength":I
    .local v28, "pbitlength":I
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move/from16 v29, v5

    .end local v5    # "qbitlength":I
    .local v29, "qbitlength":I
    const/4 v5, 0x0

    invoke-direct {v4, v5, v15, v11}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move-object/from16 v30, v12

    .end local v12    # "qSub1":Ljava/math/BigInteger;
    .local v30, "qSub1":Ljava/math/BigInteger;
    move-object v12, v5

    move-object/from16 v31, v13

    .end local v13    # "pSub1":Ljava/math/BigInteger;
    .local v31, "pSub1":Ljava/math/BigInteger;
    move-object v13, v15

    move-object/from16 v32, v14

    .end local v14    # "q":Ljava/math/BigInteger;
    .local v32, "q":Ljava/math/BigInteger;
    move-object v14, v11

    move-object/from16 v33, v15

    .end local v15    # "n":Ljava/math/BigInteger;
    .local v33, "n":Ljava/math/BigInteger;
    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v32

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    invoke-direct/range {v12 .. v20}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    move-object v1, v3

    .line 149
    .end local v0    # "d":Ljava/math/BigInteger;
    .end local v2    # "p":Ljava/math/BigInteger;
    .end local v11    # "e":Ljava/math/BigInteger;
    .end local v22    # "gcd":Ljava/math/BigInteger;
    .end local v24    # "dP":Ljava/math/BigInteger;
    .end local v25    # "dQ":Ljava/math/BigInteger;
    .end local v26    # "qInv":Ljava/math/BigInteger;
    .end local v27    # "lcm":Ljava/math/BigInteger;
    .end local v30    # "qSub1":Ljava/math/BigInteger;
    .end local v31    # "pSub1":Ljava/math/BigInteger;
    .end local v32    # "q":Ljava/math/BigInteger;
    .end local v33    # "n":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move/from16 v3, v21

    move/from16 v2, v23

    move/from16 v4, v28

    move/from16 v5, v29

    goto/16 :goto_0

    .line 76
    .end local v21    # "strength":I
    .end local v23    # "done":Z
    .end local v28    # "pbitlength":I
    .end local v29    # "qbitlength":I
    .local v2, "done":Z
    .local v3, "strength":I
    .restart local v4    # "pbitlength":I
    .restart local v5    # "qbitlength":I
    .restart local v11    # "e":Ljava/math/BigInteger;
    .local v12, "p":Ljava/math/BigInteger;
    .local v13, "q":Ljava/math/BigInteger;
    .local v14, "diff":Ljava/math/BigInteger;
    :cond_6
    move/from16 v16, v2

    move/from16 v21, v3

    move/from16 v28, v4

    move/from16 v29, v5

    .line 72
    .end local v2    # "done":Z
    .end local v3    # "strength":I
    .end local v4    # "pbitlength":I
    .end local v5    # "qbitlength":I
    .end local v13    # "q":Ljava/math/BigInteger;
    .end local v14    # "diff":Ljava/math/BigInteger;
    .restart local v16    # "done":Z
    .restart local v21    # "strength":I
    .restart local v28    # "pbitlength":I
    .restart local v29    # "qbitlength":I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v28

    move/from16 v5, v29

    goto/16 :goto_1

    .line 151
    .end local v11    # "e":Ljava/math/BigInteger;
    .end local v12    # "p":Ljava/math/BigInteger;
    .end local v16    # "done":Z
    .end local v21    # "strength":I
    .end local v28    # "pbitlength":I
    .end local v29    # "qbitlength":I
    .restart local v2    # "done":Z
    .restart local v3    # "strength":I
    .restart local v4    # "pbitlength":I
    .restart local v5    # "qbitlength":I
    :cond_7
    return-object v1
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 30
    return-void
.end method

.method protected blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 195
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    .line 200
    .local v0, "iterations":I
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
