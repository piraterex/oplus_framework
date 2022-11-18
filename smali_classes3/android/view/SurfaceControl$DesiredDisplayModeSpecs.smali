.class public final Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayModeSpecs"
.end annotation


# instance fields
.field public blacklist allowGroupSwitching:Z

.field public blacklist appRequestRefreshRateMax:F

.field public blacklist appRequestRefreshRateMin:F

.field public blacklist defaultMode:I

.field public blacklist primaryRefreshRateMax:F

.field public blacklist primaryRefreshRateMin:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(IZFFFF)V
    .locals 0
    .param p1, "defaultMode"    # I
    .param p2, "allowGroupSwitching"    # Z
    .param p3, "primaryRefreshRateMin"    # F
    .param p4, "primaryRefreshRateMax"    # F
    .param p5, "appRequestRefreshRateMin"    # F
    .param p6, "appRequestRefreshRateMax"    # F

    .line 2180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2181
    iput p1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2182
    iput-boolean p2, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 2183
    iput p3, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    .line 2184
    iput p4, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    .line 2185
    iput p5, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    .line 2186
    iput p6, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    .line 2187
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .locals 0
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->copyFrom(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    .line 2176
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .locals 1
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2214
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2215
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    .line 2216
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    .line 2217
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    .line 2218
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    .line 2219
    return-void
.end method

.method public blacklist equals(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2198
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2191
    instance-of v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->equals(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 2207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 2223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    .line 2226
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2223
    const-string v1, "defaultConfig=%d primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
