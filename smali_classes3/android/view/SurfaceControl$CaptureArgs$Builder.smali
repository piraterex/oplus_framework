.class abstract Landroid/view/SurfaceControl$CaptureArgs$Builder;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$CaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mAllowProtected:Z

.field private blacklist mCaptureSecureLayers:Z

.field private blacklist mFrameScaleX:F

.field private blacklist mFrameScaleY:F

.field private blacklist mGrayscale:Z

.field private blacklist mPixelFormat:I

.field private final blacklist mSourceCrop:Landroid/graphics/Rect;

.field private blacklist mUid:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowProtected(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mAllowProtected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSecureLayers(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameScaleX(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameScaleY(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGrayscale(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mGrayscale:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPixelFormat(Landroid/view/SurfaceControl$CaptureArgs$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mPixelFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceCrop(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Landroid/view/SurfaceControl$CaptureArgs$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mUid:J

    return-wide v0
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 962
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mPixelFormat:I

    .line 964
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    .line 965
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    .line 966
    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    .line 969
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mUid:J

    return-void
.end method


# virtual methods
.method abstract blacklist getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public blacklist setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "allowProtected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1026
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mAllowProtected:Z

    .line 1027
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "captureSecureLayers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1015
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    .line 1016
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "frameScale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 993
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    .line 994
    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    .line 995
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "frameScaleX"    # F
    .param p2, "frameScaleY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 1003
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    .line 1004
    iput p2, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    .line 1005
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "grayscale"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1043
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mGrayscale:Z

    .line 1044
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 976
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mPixelFormat:I

    .line 977
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 985
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iget-object v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 986
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1035
    .local p0, "this":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<TT;>;"
    iput-wide p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mUid:J

    .line 1036
    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method
