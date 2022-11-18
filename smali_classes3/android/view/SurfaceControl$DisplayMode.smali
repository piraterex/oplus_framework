.class public final Landroid/view/SurfaceControl$DisplayMode;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMode"
.end annotation


# instance fields
.field public blacklist appVsyncOffsetNanos:J

.field public blacklist group:I

.field public blacklist height:I

.field public blacklist id:I

.field public blacklist presentationDeadlineNanos:J

.field public blacklist refreshRate:F

.field public blacklist width:I

.field public blacklist xDpi:F

.field public blacklist yDpi:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2051
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2052
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2053
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl$DisplayMode;

    .line 2054
    .local v2, "that":Landroid/view/SurfaceControl$DisplayMode;
    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    .line 2057
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    .line 2058
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    .line 2059
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iget-wide v5, v2, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iget-wide v5, v2, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2054
    :goto_0
    return v0

    .line 2052
    .end local v2    # "that":Landroid/view/SurfaceControl$DisplayMode;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 2067
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    .line 2068
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2067
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMode{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVsyncOffsetNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDeadlineNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
