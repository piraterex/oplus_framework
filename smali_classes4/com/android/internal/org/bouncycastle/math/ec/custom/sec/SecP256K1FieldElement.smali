.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP256K1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    .line 17
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP256K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 73
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 80
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 102
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 202
    if-ne p1, p0, :cond_0

    .line 204
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    if-nez v0, :cond_1

    .line 209
    const/4 v0, 0x0

    return v0

    .line 212
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 213
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "SecP256K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 218
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 125
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 94
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 110
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 15

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 148
    .local v0, "x1":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    .line 154
    .local v1, "x2":[I
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 155
    invoke-static {v1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 156
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    .line 157
    .local v2, "x3":[I
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 158
    invoke-static {v2, v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 159
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    .line 160
    .local v3, "x6":[I
    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 161
    invoke-static {v3, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 162
    move-object v5, v3

    .line 163
    .local v5, "x9":[I
    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 164
    invoke-static {v5, v2, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 165
    move-object v6, v5

    .line 166
    .local v6, "x11":[I
    const/4 v7, 0x2

    invoke-static {v5, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 167
    invoke-static {v6, v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 168
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 169
    .local v8, "x22":[I
    const/16 v9, 0xb

    invoke-static {v6, v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 170
    invoke-static {v8, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 171
    move-object v9, v6

    .line 172
    .local v9, "x44":[I
    const/16 v10, 0x16

    invoke-static {v8, v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 173
    invoke-static {v9, v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 174
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 175
    .local v10, "x88":[I
    const/16 v11, 0x2c

    invoke-static {v9, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 176
    invoke-static {v10, v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 177
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 178
    .local v12, "x176":[I
    const/16 v13, 0x58

    invoke-static {v10, v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 179
    invoke-static {v12, v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 180
    move-object v13, v10

    .line 181
    .local v13, "x220":[I
    invoke-static {v12, v11, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 182
    invoke-static {v13, v9, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 183
    move-object v11, v9

    .line 184
    .local v11, "x223":[I
    invoke-static {v13, v4, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 185
    invoke-static {v11, v2, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 187
    move-object v4, v11

    .line 188
    .local v4, "t1":[I
    const/16 v14, 0x17

    invoke-static {v4, v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 189
    invoke-static {v4, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 190
    const/4 v14, 0x6

    invoke-static {v4, v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 191
    invoke-static {v4, v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 192
    invoke-static {v4, v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 194
    move-object v7, v1

    .line 195
    .local v7, "t2":[I
    invoke-static {v4, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 197
    invoke-static {v0, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    return-object v14

    .line 150
    .end local v1    # "x2":[I
    .end local v2    # "x3":[I
    .end local v3    # "x6":[I
    .end local v4    # "t1":[I
    .end local v5    # "x9":[I
    .end local v6    # "x11":[I
    .end local v7    # "t2":[I
    .end local v8    # "x22":[I
    .end local v9    # "x44":[I
    .end local v10    # "x88":[I
    .end local v11    # "x223":[I
    .end local v12    # "x176":[I
    .end local v13    # "x220":[I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 117
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 87
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
