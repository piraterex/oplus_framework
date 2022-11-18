.class public Landroid/hardware/CameraStreamStats;
.super Ljava/lang/Object;
.source "CameraStreamStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HISTOGRAM_TYPE_CAPTURE_LATENCY:I = 0x1

.field public static final blacklist HISTOGRAM_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CameraStreamStats"


# instance fields
.field private blacklist mDataSpace:I

.field private blacklist mDynamicRangeProfile:J

.field private blacklist mErrorCount:J

.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mHistogramBins:[F

.field private blacklist mHistogramCounts:[J

.field private blacklist mHistogramType:I

.field private blacklist mMaxAppBuffers:I

.field private blacklist mMaxHalBuffers:I

.field private blacklist mMaxPreviewFps:F

.field private blacklist mRequestCount:J

.field private blacklist mStartLatencyMs:I

.field private blacklist mStreamUseCase:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Landroid/hardware/CameraStreamStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraStreamStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    .line 58
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    .line 59
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    .line 61
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    .line 63
    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    .line 64
    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    .line 65
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    .line 66
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    .line 67
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    .line 68
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    .line 69
    const-wide/16 v3, 0x1

    iput-wide v3, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    .line 70
    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(IIIFIJJJIIIJJ)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxPreviewFps"    # F
    .param p5, "dataSpace"    # I
    .param p6, "usage"    # J
    .param p8, "requestCount"    # J
    .param p10, "errorCount"    # J
    .param p12, "startLatencyMs"    # I
    .param p13, "maxHalBuffers"    # I
    .param p14, "maxAppBuffers"    # I
    .param p15, "dynamicRangeProfile"    # J
    .param p17, "streamUseCase"    # J

    .line 76
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/CameraStreamStats;->mWidth:I

    .line 78
    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/CameraStreamStats;->mHeight:I

    .line 79
    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/CameraStreamStats;->mFormat:I

    .line 80
    move/from16 v4, p4

    iput v4, v0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    .line 81
    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    .line 82
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/hardware/CameraStreamStats;->mUsage:J

    .line 83
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    .line 84
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    .line 85
    move/from16 v12, p12

    iput v12, v0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    .line 86
    move/from16 v13, p13

    iput v13, v0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    .line 87
    move/from16 v14, p14

    iput v14, v0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    .line 88
    const/4 v15, 0x0

    iput v15, v0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    .line 89
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    .line 90
    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    .line 91
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p0, p1}, Landroid/hardware/CameraStreamStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/CameraStreamStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/CameraStreamStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataSpace()I
    .locals 1

    .line 177
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    return v0
.end method

.method public blacklist getDynamicRangeProfile()J
    .locals 2

    .line 217
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public blacklist getErrorCount()J
    .locals 2

    .line 189
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    return-wide v0
.end method

.method public blacklist getFormat()I
    .locals 1

    .line 169
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    return v0
.end method

.method public blacklist getHistogramBins()[F
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    return-object v0
.end method

.method public blacklist getHistogramCounts()[J
    .locals 1

    .line 213
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    return-object v0
.end method

.method public blacklist getHistogramType()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    return v0
.end method

.method public blacklist getMaxAppBuffers()I
    .locals 1

    .line 201
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    return v0
.end method

.method public blacklist getMaxHalBuffers()I
    .locals 1

    .line 197
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    return v0
.end method

.method public blacklist getMaxPreviewFps()F
    .locals 1

    .line 173
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    return v0
.end method

.method public blacklist getRequestCount()J
    .locals 2

    .line 185
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    return-wide v0
.end method

.method public blacklist getStartLatencyMs()I
    .locals 1

    .line 193
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    return v0
.end method

.method public blacklist getStreamUseCase()J
    .locals 2

    .line 221
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-wide v0
.end method

.method public blacklist getUsage()J
    .locals 2

    .line 181
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 161
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    .line 158
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 136
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 137
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    return-void
.end method
