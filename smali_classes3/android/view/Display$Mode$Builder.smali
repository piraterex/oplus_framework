.class public final Landroid/view/Display$Mode$Builder;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHeight:I

.field private blacklist mRefreshRate:F

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 2182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2183
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    .line 2184
    iput v0, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    .line 2185
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    .line 2186
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/Display$Mode;
    .locals 4

    .line 2240
    new-instance v0, Landroid/view/Display$Mode;

    iget v1, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    iget v2, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    iget v3, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 2241
    .local v0, "mode":Landroid/view/Display$Mode;
    return-object v0
.end method

.method public blacklist setRefreshRate(F)Landroid/view/Display$Mode$Builder;
    .locals 1
    .param p1, "refreshRate"    # F

    .line 2209
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2210
    iput p1, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    .line 2212
    :cond_0
    return-object p0
.end method

.method public blacklist setResolution(II)Landroid/view/Display$Mode$Builder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2195
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 2196
    iput p1, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    .line 2197
    iput p2, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    .line 2199
    :cond_0
    return-object p0
.end method
