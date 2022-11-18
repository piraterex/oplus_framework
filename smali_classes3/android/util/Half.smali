.class public final Landroid/util/Half;
.super Ljava/lang/Number;
.source "Half.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Half;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist EPSILON:S = 0x1400s

.field public static final whitelist LOWEST_VALUE:S = -0x401s

.field public static final whitelist MAX_EXPONENT:I = 0xf

.field public static final whitelist MAX_VALUE:S = 0x7bffs

.field public static final whitelist MIN_EXPONENT:I = -0xe

.field public static final whitelist MIN_NORMAL:S = 0x400s

.field public static final whitelist MIN_VALUE:S = 0x1s

.field public static final whitelist NEGATIVE_INFINITY:S = -0x400s

.field public static final whitelist NEGATIVE_ZERO:S = -0x8000s

.field public static final whitelist NaN:S = 0x7e00s

.field public static final whitelist POSITIVE_INFINITY:S = 0x7c00s

.field public static final whitelist POSITIVE_ZERO:S = 0x0s

.field public static final whitelist SIZE:I = 0x10


# instance fields
.field private final greylist-max-o mValue:S


# direct methods
.method public constructor whitelist <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .line 185
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 186
    double-to-float v0, p1

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    .line 187
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .locals 1
    .param p1, "value"    # F

    .line 173
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 174
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 207
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    .line 208
    return-void
.end method

.method public constructor whitelist <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 161
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 162
    iput-short p1, p0, Landroid/util/Half;->mValue:S

    .line 163
    return-void
.end method

.method public static whitelist abs(S)S
    .locals 1
    .param p0, "h"    # S

    .line 500
    and-int/lit16 v0, p0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public static whitelist ceil(S)S
    .locals 1
    .param p0, "h"    # S

    .line 546
    invoke-static {p0}, Llibcore/util/FP16;->ceil(S)S

    move-result v0

    return v0
.end method

.method public static whitelist compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 400
    invoke-static {p0, p1}, Llibcore/util/FP16;->compare(SS)I

    move-result v0

    return v0
.end method

.method public static whitelist copySign(SS)S
    .locals 2
    .param p0, "magnitude"    # S
    .param p1, "sign"    # S

    .line 482
    const v0, 0x8000

    and-int/2addr v0, p1

    and-int/lit16 v1, p0, 0x7fff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static whitelist equals(SS)Z
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 688
    invoke-static {p0, p1}, Llibcore/util/FP16;->equals(SS)Z

    move-result v0

    return v0
.end method

.method public static whitelist floor(S)S
    .locals 1
    .param p0, "h"    # S

    .line 566
    invoke-static {p0}, Llibcore/util/FP16;->floor(S)S

    move-result v0

    return v0
.end method

.method public static whitelist getExponent(S)I
    .locals 1
    .param p0, "h"    # S

    .line 712
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0xf

    return v0
.end method

.method public static whitelist getSign(S)I
    .locals 1
    .param p0, "h"    # S

    .line 698
    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static whitelist getSignificand(S)I
    .locals 1
    .param p0, "h"    # S

    .line 723
    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method public static whitelist greater(SS)Z
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 660
    invoke-static {p0, p1}, Llibcore/util/FP16;->greater(SS)Z

    move-result v0

    return v0
.end method

.method public static whitelist greaterEquals(SS)Z
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 674
    invoke-static {p0, p1}, Llibcore/util/FP16;->greaterEquals(SS)Z

    move-result v0

    return v0
.end method

.method public static whitelist halfToIntBits(S)I
    .locals 2
    .param p0, "h"    # S

    .line 436
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 v0, 0x7e00

    goto :goto_0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static whitelist halfToRawIntBits(S)I
    .locals 1
    .param p0, "h"    # S

    .line 454
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist halfToShortBits(S)S
    .locals 2
    .param p0, "h"    # S

    .line 417
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 v0, 0x7e00

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static whitelist hashCode(S)I
    .locals 1
    .param p0, "h"    # S

    .line 377
    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    return v0
.end method

.method public static whitelist intBitsToHalf(I)S
    .locals 1
    .param p0, "bits"    # I

    .line 469
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static whitelist isInfinite(S)Z
    .locals 1
    .param p0, "h"    # S

    .line 735
    invoke-static {p0}, Llibcore/util/FP16;->isInfinite(S)Z

    move-result v0

    return v0
.end method

.method public static whitelist isNaN(S)Z
    .locals 1
    .param p0, "h"    # S

    .line 746
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public static whitelist isNormalized(S)Z
    .locals 1
    .param p0, "h"    # S

    .line 760
    invoke-static {p0}, Llibcore/util/FP16;->isNormalized(S)Z

    move-result v0

    return v0
.end method

.method public static whitelist less(SS)Z
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 632
    invoke-static {p0, p1}, Llibcore/util/FP16;->less(SS)Z

    move-result v0

    return v0
.end method

.method public static whitelist lessEquals(SS)Z
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 646
    invoke-static {p0, p1}, Llibcore/util/FP16;->lessEquals(SS)Z

    move-result v0

    return v0
.end method

.method public static whitelist max(SS)S
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 618
    invoke-static {p0, p1}, Llibcore/util/FP16;->max(SS)S

    move-result v0

    return v0
.end method

.method public static whitelist min(SS)S
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 601
    invoke-static {p0, p1}, Llibcore/util/FP16;->min(SS)S

    move-result v0

    return v0
.end method

.method public static whitelist parseHalf(Ljava/lang/String;)S
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 857
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    return v0
.end method

.method public static whitelist round(S)S
    .locals 1
    .param p0, "h"    # S

    .line 526
    invoke-static {p0}, Llibcore/util/FP16;->rint(S)S

    move-result v0

    return v0
.end method

.method public static whitelist toFloat(S)F
    .locals 1
    .param p0, "h"    # S

    .line 779
    invoke-static {p0}, Llibcore/util/FP16;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static whitelist toHalf(F)S
    .locals 1
    .param p0, "f"    # F

    .line 806
    invoke-static {p0}, Llibcore/util/FP16;->toHalf(F)S

    move-result v0

    return v0
.end method

.method public static whitelist toHexString(S)Ljava/lang/String;
    .locals 1
    .param p0, "h"    # S

    .line 902
    invoke-static {p0}, Llibcore/util/FP16;->toHexString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist toString(S)Ljava/lang/String;
    .locals 1
    .param p0, "h"    # S

    .line 871
    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist trunc(S)S
    .locals 1
    .param p0, "h"    # S

    .line 585
    invoke-static {p0}, Llibcore/util/FP16;->trunc(S)S

    move-result v0

    return v0
.end method

.method public static whitelist valueOf(F)Landroid/util/Half;
    .locals 1
    .param p0, "f"    # F

    .line 827
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(F)V

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/util/Half;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 842
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist valueOf(S)Landroid/util/Half;
    .locals 1
    .param p0, "h"    # S

    .line 817
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .locals 1

    .line 229
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist compareTo(Landroid/util/Half;)I
    .locals 2
    .param p1, "h"    # Landroid/util/Half;

    .line 366
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    iget-short v1, p1, Landroid/util/Half;->mValue:S

    invoke-static {v0, v1}, Landroid/util/Half;->compare(SS)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Landroid/util/Half;

    invoke-virtual {p0, p1}, Landroid/util/Half;->compareTo(Landroid/util/Half;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .locals 2

    .line 289
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 316
    instance-of v0, p1, Landroid/util/Half;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/util/Half;

    iget-short v0, v0, Landroid/util/Half;->mValue:S

    .line 317
    invoke-static {v0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    iget-short v1, p0, Landroid/util/Half;->mValue:S

    invoke-static {v1}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0
.end method

.method public whitelist test-api floatValue()F
    .locals 1

    .line 277
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public whitelist halfValue()S
    .locals 1

    .line 217
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 330
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .locals 1

    .line 253
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public whitelist isNaN()Z
    .locals 1

    .line 299
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .locals 2

    .line 265
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .locals 1

    .line 241
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 342
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
