.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Height"
.end annotation


# static fields
.field private static greylist-max-o sProportion:F


# instance fields
.field private greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 474
    const/4 v0, 0x0

    sput v0, Landroid/content/res/StringBlock$Height;->sProportion:F

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    .line 478
    return-void
.end method


# virtual methods
.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 484
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 485
    return-void
.end method

.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p7, "paint"    # Landroid/text/TextPaint;

    .line 490
    iget v0, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    .line 491
    .local v0, "size":I
    if-eqz p7, :cond_0

    .line 492
    int-to-float v1, v0

    iget v2, p7, Landroid/text/TextPaint;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 495
    :cond_0
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 496
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 497
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    iput v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    .line 499
    :cond_1
    sget v1, Landroid/content/res/StringBlock$Height;->sProportion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 507
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 508
    .local v1, "p":Landroid/graphics/Paint;
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 509
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 510
    .local v3, "r":Landroid/graphics/Rect;
    const/4 v4, 0x7

    const-string v5, "ABCDEFG"

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 512
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    div-float/2addr v4, v5

    sput v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    .line 515
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_2
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v3, Landroid/content/res/StringBlock$Height;->sProportion:F

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 517
    .local v1, "need":I
    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v3, v0, v3

    if-lt v3, v1, :cond_3

    .line 522
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 523
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v2, v0

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    .line 524
    :cond_3
    if-lt v0, v1, :cond_4

    .line 530
    neg-int v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 531
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v0

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 537
    :cond_4
    neg-int v3, v0

    iput v3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 538
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 541
    .end local v1    # "need":I
    :goto_0
    return-void
.end method
