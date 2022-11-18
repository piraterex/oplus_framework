.class public abstract Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;
.super Ljava/lang/Object;
.source "FiniteFields.java"


# static fields
.field static final blacklist GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

.field static final blacklist GF_3:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    .line 12
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBinaryExtensionField([I)Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;
    .locals 3
    .param p0, "exponents"    # [I

    .line 16
    const/4 v0, 0x0

    aget v0, p0, v0

    if-nez v0, :cond_2

    .line 20
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 22
    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-le v1, v2, :cond_0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Polynomial exponents must be monotonically increasing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;-><init>([I)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;-><init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;Lcom/android/internal/org/bouncycastle/math/field/Polynomial;)V

    return-object v0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Irreducible polynomials in GF(2) must have constant term"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getPrimeField(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .locals 3
    .param p0, "characteristic"    # Ljava/math/BigInteger;

    .line 38
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 39
    .local v0, "bitLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 44
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v1

    .line 49
    :pswitch_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v1

    .line 55
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'characteristic\' must be >= 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
