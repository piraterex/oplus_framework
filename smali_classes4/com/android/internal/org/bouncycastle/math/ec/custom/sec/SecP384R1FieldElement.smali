.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP384R1FieldElement.java"


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
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

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

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP384R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 73
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 80
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 102
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 198
    if-ne p1, p0, :cond_0

    .line 200
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 209
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "SecP384R1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 214
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 125
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 94
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 110
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 139
    .local v0, "x1":[I
    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 144
    :cond_0
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 145
    .local v2, "t1":[I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 146
    .local v3, "t2":[I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 147
    .local v4, "t3":[I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    .line 149
    .local v5, "t4":[I
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 150
    invoke-static {v2, v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 152
    const/4 v6, 0x2

    invoke-static {v2, v6, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 153
    invoke-static {v3, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 155
    invoke-static {v3, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 156
    invoke-static {v3, v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 158
    const/4 v7, 0x5

    invoke-static {v3, v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 159
    invoke-static {v4, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 161
    invoke-static {v4, v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 162
    invoke-static {v5, v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 164
    const/16 v7, 0xf

    invoke-static {v5, v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 165
    invoke-static {v3, v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 167
    invoke-static {v3, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 168
    invoke-static {v2, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 170
    const/16 v6, 0x1c

    invoke-static {v4, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 171
    invoke-static {v3, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 173
    const/16 v6, 0x3c

    invoke-static {v3, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 174
    invoke-static {v4, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 176
    move-object v6, v3

    .line 178
    .local v6, "r":[I
    const/16 v8, 0x78

    invoke-static {v4, v8, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 179
    invoke-static {v6, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 181
    invoke-static {v6, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 182
    invoke-static {v6, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 184
    const/16 v7, 0x21

    invoke-static {v6, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 185
    invoke-static {v6, v2, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 187
    const/16 v7, 0x40

    invoke-static {v6, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 188
    invoke-static {v6, v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 190
    const/16 v7, 0x1e

    invoke-static {v6, v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    .line 191
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 193
    invoke-static {v1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 141
    .end local v2    # "t1":[I
    .end local v3    # "t2":[I
    .end local v4    # "t3":[I
    .end local v5    # "t4":[I
    .end local v6    # "r":[I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 117
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 87
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
