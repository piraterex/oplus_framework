.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;
.super Ljava/lang/Object;
.source "PrimeCertaintyCalculator.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static blacklist getDefaultCertainty(I)I
    .locals 2
    .param p0, "keySizeInBits"    # I

    .line 23
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v1, 0x60

    :goto_0
    return v0
.end method
