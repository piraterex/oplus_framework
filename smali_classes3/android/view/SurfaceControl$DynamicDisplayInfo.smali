.class public final Landroid/view/SurfaceControl$DynamicDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicDisplayInfo"
.end annotation


# instance fields
.field public blacklist activeColorMode:I

.field public blacklist activeDisplayModeId:I

.field public blacklist autoLowLatencyModeSupported:Z

.field public blacklist gameContentTypeSupported:Z

.field public blacklist hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public blacklist preferredBootDisplayMode:I

.field public blacklist supportedColorModes:[I

.field public blacklist supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1994
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1995
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1996
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;

    .line 1997
    .local v2, "that":Landroid/view/SurfaceControl$DynamicDisplayInfo;
    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    .line 1999
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 2001
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1997
    :goto_0
    return v0

    .line 1995
    .end local v2    # "that":Landroid/view/SurfaceControl$DynamicDisplayInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 2007
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 2008
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2007
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicDisplayInfo{supportedDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 1982
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplayModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    .line 1984
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdrCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoLowLatencyModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameContentTypeSupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredBootDisplayMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1981
    return-object v0
.end method
