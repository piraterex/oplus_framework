.class public Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MROutput"
.end annotation


# instance fields
.field private blacklist factor:Ljava/math/BigInteger;

.field private blacklist provablyComposite:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->probablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(ZLjava/math/BigInteger;)V
    .locals 0
    .param p1, "provablyComposite"    # Z
    .param p2, "factor"    # Ljava/math/BigInteger;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    .line 52
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    .line 53
    return-void
.end method

.method private static blacklist probablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 3

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static blacklist provablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 3

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static blacklist provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 2
    .param p0, "factor"    # Ljava/math/BigInteger;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getFactor()Ljava/math/BigInteger;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isNotPrimePower()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isProvablyComposite()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    return v0
.end method
