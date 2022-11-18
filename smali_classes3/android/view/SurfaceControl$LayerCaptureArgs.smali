.class public Landroid/view/SurfaceControl$LayerCaptureArgs;
.super Landroid/view/SurfaceControl$CaptureArgs;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mChildrenOnly:Z

.field private final blacklist mNativeExcludeLayers:[J

.field private final blacklist mNativeLayer:J


# direct methods
.method private constructor blacklist <init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V

    .line 1153
    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmChildrenOnly(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mChildrenOnly:Z

    .line 1154
    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v1

    iget-wide v1, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeLayer:J

    .line 1155
    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1156
    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeExcludeLayers:[J

    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1158
    iget-object v1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeExcludeLayers:[J

    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v2

    aget-object v2, v2, v0

    iget-wide v2, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v2, v1, v0

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 1161
    :cond_1
    iput-object v0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeExcludeLayers:[J

    .line 1163
    :goto_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;Landroid/view/SurfaceControl$LayerCaptureArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs;-><init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)V

    return-void
.end method
