.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP521R1FieldElement.java"


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
    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

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

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP521R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 73
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 80
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 102
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 156
    if-ne p1, p0, :cond_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    if-nez v0, :cond_1

    .line 163
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 167
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "SecP521R1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 172
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 125
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 94
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 110
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 140
    .local v0, "x1":[I
    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 146
    .local v2, "t1":[I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 148
    .local v3, "t2":[I
    const/16 v4, 0x207

    invoke-static {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->squareN([II[I)V

    .line 149
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 151
    invoke-static {v1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 142
    .end local v2    # "t1":[I
    .end local v3    # "t2":[I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 117
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 87
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

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
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
