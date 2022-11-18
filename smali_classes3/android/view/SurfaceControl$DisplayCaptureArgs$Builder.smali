.class public Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
.super Landroid/view/SurfaceControl$CaptureArgs$Builder;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$DisplayCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDisplayToken:Landroid/os/IBinder;

.field private blacklist mHeight:I

.field private blacklist mUseIdentityTransform:Z

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayToken(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseIdentityTransform(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mWidth:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1095
    invoke-direct {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;-><init>()V

    .line 1096
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 1097
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .locals 2

    .line 1088
    iget-object v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Landroid/view/SurfaceControl$DisplayCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs;-><init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;Landroid/view/SurfaceControl$DisplayCaptureArgs-IA;)V

    return-object v0

    .line 1089
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null display token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic blacklist getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1

    .line 1077
    invoke-virtual {p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThis()Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .locals 0

    .line 1135
    return-object p0
.end method

.method public bridge synthetic blacklist setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDisplayToken(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1103
    iput-object p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    .line 1104
    return-object p0
.end method

.method public bridge synthetic blacklist setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1117
    iput p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mWidth:I

    .line 1118
    iput p2, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mHeight:I

    .line 1119
    return-object p0
.end method

.method public bridge synthetic blacklist setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 0

    .line 1077
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .locals 0
    .param p1, "useIdentityTransform"    # Z

    .line 1129
    iput-boolean p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    .line 1130
    return-object p0
.end method
