.class public final Landroid/view/SurfaceControl$StaticDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticDisplayInfo"
.end annotation


# instance fields
.field public blacklist density:F

.field public blacklist deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public blacklist installOrientation:I

.field public blacklist isInternal:Z

.field public blacklist secure:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1944
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1945
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1946
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 1947
    .local v2, "that":Landroid/view/SurfaceControl$StaticDisplayInfo;
    iget-boolean v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    iget-boolean v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    iget v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    iget-boolean v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 1950
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iget v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1947
    :goto_0
    return v0

    .line 1945
    .end local v2    # "that":Landroid/view/SurfaceControl$StaticDisplayInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1956
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaticDisplayInfo{isInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProductInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
