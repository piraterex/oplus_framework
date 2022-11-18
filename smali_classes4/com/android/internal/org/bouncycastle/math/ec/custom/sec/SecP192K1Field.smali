.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;
.super Ljava/lang/Object;
.source "SecP192K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P5:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt11:I = -0x1

.field private static final blacklist PExtInv:[I

.field private static final blacklist PInv33:I = 0x11c9


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
        0x2
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 30
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 34
    :cond_1
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 38
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 39
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 46
    :cond_1
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 50
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 51
    .local v1, "c":I
    if-nez v1, :cond_0

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    :cond_0
    const/16 v2, 0x11c9

    invoke-static {v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 55
    :cond_1
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 59
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 60
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 64
    :cond_0
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 69
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    .line 71
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 76
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 78
    .end local v0    # "c":I
    :goto_0
    return-void
.end method

.method public static blacklist inv([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 82
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 83
    return-void
.end method

.method public static blacklist isZero([I)I
    .locals 3
    .param p0, "x"    # [I

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 90
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 93
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 98
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 99
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 100
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 101
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 105
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 106
    .local v0, "c":I
    const/16 v1, 0xc

    if-nez v0, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 113
    :cond_1
    return-void
.end method

.method public static blacklist negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 117
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    .line 125
    :goto_0
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .locals 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 129
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 132
    .local v0, "bb":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 133
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 135
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    return-void

    .line 135
    :cond_0
    goto :goto_0
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 142
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 144
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 144
    :cond_0
    goto :goto_0
.end method

.method public static blacklist reduce([I[I)V
    .locals 7
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 149
    const/16 v0, 0x11c9

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul33Add(I[II[II[II)J

    move-result-wide v0

    .line 150
    .local v0, "cc":J
    const/16 v2, 0x11c9

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, p1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul33DWordAdd(IJ[II)I

    move-result v3

    .line 154
    .local v3, "c":I
    if-nez v3, :cond_0

    const/4 v4, 0x5

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    :cond_0
    const/4 v4, 0x6

    invoke-static {v4, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 158
    :cond_1
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 162
    const/16 v0, 0x11c9

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    .line 163
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 167
    :cond_2
    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 171
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 172
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 173
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 174
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 180
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 181
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 182
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 184
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 186
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 187
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 193
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 194
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 196
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    .line 198
    :cond_0
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 202
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 203
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 205
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 210
    :cond_0
    return-void
.end method

.method public static blacklist twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 214
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v1

    .line 215
    .local v1, "c":I
    if-nez v1, :cond_0

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    const/16 v2, 0x11c9

    invoke-static {v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 219
    :cond_1
    return-void
.end method
