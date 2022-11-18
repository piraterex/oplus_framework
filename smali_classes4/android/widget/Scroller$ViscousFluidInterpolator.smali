.class Landroid/widget/Scroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViscousFluidInterpolator"
.end annotation


# static fields
.field private static final greylist-max-o VISCOUS_FLUID_NORMALIZE:F

.field private static final greylist-max-o VISCOUS_FLUID_OFFSET:F

.field private static final greylist-max-o VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 591
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    div-float v1, v0, v1

    sput v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 593
    invoke-static {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 594
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .line 597
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    .line 598
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    .line 599
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    .line 601
    :cond_0
    const v1, 0x3ebc5ab2

    .line 602
    .local v1, "start":F
    sub-float v2, v0, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float p0, v0, v2

    .line 603
    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    add-float p0, v1, v0

    .line 605
    .end local v1    # "start":F
    :goto_0
    return p0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .line 610
    sget v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 611
    .local v0, "interpolated":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 612
    sget v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    add-float/2addr v1, v0

    return v1

    .line 614
    :cond_0
    return v0
.end method
