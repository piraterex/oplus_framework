.class abstract Landroid/view/SurfaceControl$CaptureArgs;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$CaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAllowProtected:Z

.field private final blacklist mCaptureSecureLayers:Z

.field private final blacklist mFrameScaleX:F

.field private final blacklist mFrameScaleY:F

.field private final blacklist mGrayscale:Z

.field private final blacklist mPixelFormat:I

.field private final blacklist mSourceCrop:Landroid/graphics/Rect;

.field private final blacklist mUid:J


# direct methods
.method private constructor blacklist <init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
            "+",
            "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 946
    .local p1, "builder":Landroid/view/SurfaceControl$CaptureArgs$Builder;, "Landroid/view/SurfaceControl$CaptureArgs$Builder<+Landroid/view/SurfaceControl$CaptureArgs$Builder<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 947
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmPixelFormat(Landroid/view/SurfaceControl$CaptureArgs$Builder;)I

    move-result v1

    iput v1, p0, Landroid/view/SurfaceControl$CaptureArgs;->mPixelFormat:I

    .line 948
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmSourceCrop(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 949
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleX(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mFrameScaleX:F

    .line 950
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleY(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mFrameScaleY:F

    .line 951
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmCaptureSecureLayers(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mCaptureSecureLayers:Z

    .line 952
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmAllowProtected(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mAllowProtected:Z

    .line 953
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmUid(Landroid/view/SurfaceControl$CaptureArgs$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mUid:J

    .line 954
    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmGrayscale(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mGrayscale:Z

    .line 955
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;)V

    return-void
.end method
