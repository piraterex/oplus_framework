.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurRegion"
.end annotation


# instance fields
.field public final blacklist alpha:F

.field public final blacklist blurColorA:F

.field public final blacklist blurColorB:F

.field public final blacklist blurColorG:F

.field public final blacklist blurColorR:F

.field public final blacklist blurRadius:I

.field public final blacklist cornerRadiusBL:F

.field public final blacklist cornerRadiusBR:F

.field public final blacklist cornerRadiusTL:F

.field public final blacklist cornerRadiusTR:F

.field public final blacklist rect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .locals 2
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    .line 471
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    .line 472
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    .line 473
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    .line 474
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    .line 475
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    .line 476
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    .line 479
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurColor(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorR:F

    .line 480
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurColor(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorG:F

    .line 481
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurColor(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorB:F

    .line 482
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurColor(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)[F

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorA:F

    .line 484
    return-void
.end method


# virtual methods
.method blacklist toFloatArray()[F
    .locals 3

    .line 492
    const/16 v0, 0xe

    new-array v0, v0, [F

    .line 494
    .local v0, "floatArray":[F
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 495
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 496
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 497
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 498
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 499
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 500
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 501
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 502
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 503
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 506
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorR:F

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 507
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorG:F

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 508
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorB:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 509
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorA:F

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 511
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurRegion{blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corners={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blurColor["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorG:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorB:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurColorA:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
