.class public abstract Landroid/graphics/OplusBaseHardwareRenderer;
.super Ljava/lang/Object;
.source "OplusBaseHardwareRenderer.java"


# instance fields
.field private blacklist mBackgroundMaxL:F

.field private blacklist mDialogBgMaxL:F

.field private blacklist mForegroundMinL:F

.field private blacklist mViewCount:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mDialogBgMaxL:F

    .line 23
    iput v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mBackgroundMaxL:F

    .line 24
    iput v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mForegroundMinL:F

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mViewCount:I

    return-void
.end method


# virtual methods
.method public blacklist addView()V
    .locals 1

    .line 55
    iget v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mViewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mViewCount:I

    .line 56
    return-void
.end method

.method public blacklist getDarkModeDialogMaxBgMaxL()F
    .locals 1

    .line 34
    iget v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mDialogBgMaxL:F

    return v0
.end method

.method public blacklist getNativeProxy()J
    .locals 2

    .line 30
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getViewCount()I
    .locals 1

    .line 60
    iget v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mViewCount:I

    return v0
.end method

.method public blacklist resetViewCount()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mViewCount:I

    .line 66
    return-void
.end method

.method public blacklist setForceDarkArgs(FFF)Z
    .locals 1
    .param p1, "dialogBgMaxL"    # F
    .param p2, "backgroundMaxL"    # F
    .param p3, "foregroundMinL"    # F

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setUsageForceDarkArgs(FFF)Z
    .locals 4
    .param p1, "dialogBgMaxL"    # F
    .param p2, "backgroundMaxL"    # F
    .param p3, "foregroundMinL"    # F

    .line 41
    invoke-virtual {p0}, Landroid/graphics/OplusBaseHardwareRenderer;->getNativeProxy()J

    move-result-wide v0

    .line 42
    .local v0, "nativeProxy":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 43
    iget v2, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mDialogBgMaxL:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    iget v2, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mBackgroundMaxL:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mForegroundMinL:F

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    iput p1, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mDialogBgMaxL:F

    .line 45
    iput p2, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mBackgroundMaxL:F

    .line 46
    iput p3, p0, Landroid/graphics/OplusBaseHardwareRenderer;->mForegroundMinL:F

    .line 47
    const/4 v2, 0x1

    return v2

    .line 50
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
