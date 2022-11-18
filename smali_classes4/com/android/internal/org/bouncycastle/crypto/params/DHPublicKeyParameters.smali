.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPublicKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist y:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 15
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 1
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->validate(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    .line 27
    return-void
.end method

.method private static blacklist legendre(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 10
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 125
    .local v0, "bitLength":I
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    .line 126
    .local v1, "A":[I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 128
    .local v2, "B":[I
    const/4 v3, 0x0

    .line 130
    .local v3, "r":I
    array-length v4, v2

    .line 133
    .local v4, "len":I
    :goto_0
    const/4 v5, 0x0

    aget v6, v1, v5

    if-nez v6, :cond_0

    .line 135
    invoke-static {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    goto :goto_0

    .line 138
    :cond_0
    aget v6, v1, v5

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v6

    .line 139
    .local v6, "shift":I
    if-lez v6, :cond_1

    .line 141
    invoke-static {v4, v1, v6, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    .line 142
    aget v7, v2, v5

    .line 143
    .local v7, "bits":I
    ushr-int/lit8 v8, v7, 0x1

    xor-int/2addr v8, v7

    shl-int/lit8 v9, v6, 0x1

    and-int/2addr v8, v9

    xor-int/2addr v3, v8

    .line 146
    .end local v7    # "bits":I
    :cond_1
    invoke-static {v4, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->compare(I[I[I)I

    move-result v7

    .line 147
    .local v7, "cmp":I
    if-nez v7, :cond_3

    .line 149
    nop

    .line 166
    .end local v6    # "shift":I
    .end local v7    # "cmp":I
    invoke-static {v4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    and-int/lit8 v5, v3, 0x2

    rsub-int/lit8 v5, v5, 0x1

    :cond_2
    return v5

    .line 152
    .restart local v6    # "shift":I
    .restart local v7    # "cmp":I
    :cond_3
    if-gez v7, :cond_4

    .line 154
    aget v8, v1, v5

    aget v5, v2, v5

    and-int/2addr v5, v8

    xor-int/2addr v3, v5

    .line 155
    move-object v5, v1

    .local v5, "t":[I
    move-object v1, v2

    move-object v2, v5

    .line 158
    .end local v5    # "t":[I
    :cond_4
    :goto_1
    add-int/lit8 v5, v4, -0x1

    aget v5, v1, v5

    if-nez v5, :cond_5

    .line 160
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 163
    :cond_5
    invoke-static {v4, v1, v2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 164
    .end local v6    # "shift":I
    .end local v7    # "cmp":I
    goto :goto_0
.end method

.method private blacklist validate(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)Ljava/math/BigInteger;
    .locals 5
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "dhParams"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 31
    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 39
    .local v0, "p":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 44
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 45
    .local v1, "q":Ljava/math/BigInteger;
    if-nez v1, :cond_0

    .line 47
    return-object p1

    .line 50
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 52
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->legendre(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v2

    if-ne v3, v2, :cond_2

    .line 57
    return-object p1

    .line 62
    :cond_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    return-object p1

    .line 68
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Y value does not appear to be in correct group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    .end local v1    # "q":Ljava/math/BigInteger;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid DH public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    .end local v0    # "p":Ljava/math/BigInteger;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "y value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    return v1

    .line 89
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 91
    .local v0, "other":Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getY()Ljava/math/BigInteger;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
