.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o afTriggerId:I

.field private blacklist errorPhysicalCameraId:Ljava/lang/String;

.field private greylist-max-o errorStreamId:I

.field private greylist-max-o frameNumber:J

.field private blacklist lastCompletedRegularFrameNumber:J

.field private blacklist lastCompletedReprocessFrameNumber:J

.field private blacklist lastCompletedZslFrameNumber:J

.field private greylist-max-o partialResultCount:I

.field private greylist-max-o precaptureTriggerId:I

.field private greylist-max-o requestId:I

.field private greylist-max-o subsequenceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIJIILjava/lang/String;JJJ)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "afTriggerId"    # I
    .param p4, "precaptureTriggerId"    # I
    .param p5, "frameNumber"    # J
    .param p7, "partialResultCount"    # I
    .param p8, "errorStreamId"    # I
    .param p9, "errorPhysicalCameraId"    # Ljava/lang/String;
    .param p10, "lastCompletedRegularFrameNumber"    # J
    .param p12, "lastCompletedReprocessFrameNumber"    # J
    .param p14, "lastCompletedZslFrameNumber"    # J

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    .line 61
    iput p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    .line 62
    iput p3, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    .line 63
    iput p4, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    .line 64
    iput-wide p5, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    .line 65
    iput p7, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    .line 66
    iput p8, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    .line 67
    iput-object p9, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    .line 68
    iput-wide p10, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    .line 69
    iput-wide p12, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    .line 70
    iput-wide p14, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    .line 71
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAfTriggerId()I
    .locals 1

    .line 128
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    return v0
.end method

.method public blacklist getErrorPhysicalCameraId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorStreamId()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return v0
.end method

.method public greylist-max-o getFrameNumber()J
    .locals 2

    .line 136
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedRegularFrameNumber()J
    .locals 2

    .line 148
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedReprocessFrameNumber()J
    .locals 2

    .line 152
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedZslFrameNumber()J
    .locals 2

    .line 156
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    return-wide v0
.end method

.method public greylist-max-o getPartialResultCount()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    return v0
.end method

.method public greylist-max-o getPrecaptureTriggerId()I
    .locals 1

    .line 132
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    return v0
.end method

.method public greylist-max-o getRequestId()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    return v0
.end method

.method public greylist-max-o getSubsequenceId()I
    .locals 1

    .line 124
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 107
    .local v0, "errorPhysicalCameraIdPresent":Z
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    .line 113
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 93
    :goto_0
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    return-void
.end method
