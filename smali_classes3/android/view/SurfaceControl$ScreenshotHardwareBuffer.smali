.class public Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContainsHdrLayers:Z

.field private final blacklist mContainsSecureLayers:Z

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .locals 0
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "containsSecureLayers"    # Z
    .param p4, "containsHdrLayers"    # Z

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput-object p1, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 836
    iput-object p2, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 837
    iput-boolean p3, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 838
    iput-boolean p4, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    .line 839
    return-void
.end method

.method private static blacklist createFromNative(Landroid/hardware/HardwareBuffer;IZZ)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 2
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "namedColorSpace"    # I
    .param p2, "containsSecureLayers"    # Z
    .param p3, "containsHdrLayers"    # Z

    .line 852
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 853
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    new-instance v1, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V

    return-object v1
.end method


# virtual methods
.method public blacklist asBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 890
    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    .line 891
    const-string v0, "SurfaceControl"

    const-string v1, "Failed to take screenshot. Null screenshot object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist containsHdrLayers()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return v0
.end method

.method public blacklist containsSecureLayers()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 858
    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 862
    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method
