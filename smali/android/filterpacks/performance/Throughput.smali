.class public Landroid/filterpacks/performance/Throughput;
.super Ljava/lang/Object;
.source "Throughput.java"


# instance fields
.field private final blacklist mPeriodFrames:I

.field private final blacklist mPeriodTime:I

.field private final blacklist mPixels:I

.field private final blacklist mTotalFrames:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "totalFrames"    # I
    .param p2, "periodFrames"    # I
    .param p3, "periodTime"    # I
    .param p4, "pixels"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    .line 32
    iput p2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    .line 33
    iput p3, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    .line 34
    iput p4, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getFramesPerSecond()F
    .locals 2

    .line 50
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist getNanosPerPixel()F
    .locals 4

    .line 54
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-double v0, v0

    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    .line 55
    .local v0, "frameTimeInNanos":D
    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    int-to-double v2, v2

    div-double v2, v0, v2

    double-to-float v2, v2

    return v2
.end method

.method public blacklist getPeriodFrameCount()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    return v0
.end method

.method public blacklist getPeriodTime()I
    .locals 1

    .line 46
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    return v0
.end method

.method public blacklist getTotalFrameCount()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/filterpacks/performance/Throughput;->getFramesPerSecond()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
