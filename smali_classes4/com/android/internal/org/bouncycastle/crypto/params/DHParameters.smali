.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final blacklist DEFAULT_MINIMUM_LENGTH:I = 0xa0


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private blacklist j:Ljava/math/BigInteger;

.field private blacklist l:I

.field private blacklist m:I

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist validation:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "l"    # I

    .line 58
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I

    .line 68
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I
    .param p6, "j"    # Ljava/math/BigInteger;
    .param p7, "validation"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p5, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt p5, v0, :cond_1

    .line 96
    if-lt p5, p4, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le p4, v0, :cond_4

    const-string v0, "com.android.internal.org.bouncycastle.dh.allow_unsafe_p_value"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsafe p value so small specific l required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4
    :goto_1
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 108
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 109
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 110
    iput p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->m:I

    .line 111
    iput p5, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->l:I

    .line 112
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 113
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validation"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 78
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 79
    return-void
.end method

.method private static blacklist getDefaultMParam(I)I
    .locals 1
    .param p0, "lParam"    # I

    .line 29
    const/16 v0, 0xa0

    if-nez p0, :cond_0

    .line 31
    return v0

    .line 34
    :cond_0
    if-ge p0, v0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 169
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    return v1

    .line 174
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 176
    .local v0, "pm":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    return v1

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    return v1

    .line 191
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public blacklist getG()Ljava/math/BigInteger;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getJ()Ljava/math/BigInteger;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getL()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public blacklist getM()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
