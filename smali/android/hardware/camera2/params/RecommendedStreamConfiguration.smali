.class public final Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
.super Landroid/hardware/camera2/params/StreamConfiguration;
.source "RecommendedStreamConfiguration.java"


# instance fields
.field private final blacklist mUsecaseBitmap:I


# direct methods
.method public constructor blacklist <init>(IIIZI)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "input"    # Z
    .param p5, "usecaseBitmap"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 54
    iput p5, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 80
    return v1

    .line 82
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    if-eqz v2, :cond_3

    .line 83
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 84
    .local v2, "other":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 90
    .end local v2    # "other":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    :cond_3
    return v0
.end method

.method public blacklist getUsecaseBitmap()I
    .locals 1

    .line 63
    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
