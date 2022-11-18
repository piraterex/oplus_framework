.class public Landroid/hardware/CameraSessionStats;
.super Ljava/lang/Object;
.source "CameraSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CAMERA_API_LEVEL_1:I = 0x1

.field public static final blacklist CAMERA_API_LEVEL_2:I = 0x2

.field public static final blacklist CAMERA_FACING_BACK:I = 0x0

.field public static final blacklist CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final blacklist CAMERA_FACING_FRONT:I = 0x1

.field public static final blacklist CAMERA_STATE_ACTIVE:I = 0x1

.field public static final blacklist CAMERA_STATE_CLOSED:I = 0x3

.field public static final blacklist CAMERA_STATE_IDLE:I = 0x2

.field public static final blacklist CAMERA_STATE_OPEN:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApiLevel:I

.field private blacklist mCameraId:Ljava/lang/String;

.field private blacklist mClientName:Ljava/lang/String;

.field private blacklist mDeviceError:Z

.field private blacklist mFacing:I

.field private blacklist mInternalReconfigure:I

.field private blacklist mIsNdk:Z

.field private blacklist mLatencyMs:I

.field private blacklist mMaxPreviewFps:F

.field private blacklist mNewCameraState:I

.field private blacklist mRequestCount:J

.field private blacklist mResultErrorCount:J

.field private blacklist mSessionType:I

.field private blacklist mStreamStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserTag:Ljava/lang/String;

.field private blacklist mVideoStabilizationMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Landroid/hardware/CameraSessionStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraSessionStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    .line 69
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    .line 70
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    .line 72
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    .line 74
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    .line 75
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    .line 77
    iput-wide v2, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    .line 78
    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    .line 80
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    .line 81
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p0, p1}, Landroid/hardware/CameraSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/CameraSessionStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/CameraSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IZIFII)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I
    .param p6, "isNdk"    # Z
    .param p7, "creationDuration"    # I
    .param p8, "maxPreviewFps"    # F
    .param p9, "sessionType"    # I
    .param p10, "internalReconfigure"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    .line 87
    iput p2, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    .line 88
    iput p3, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    .line 89
    iput-object p4, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    .line 90
    iput p5, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    .line 91
    iput-boolean p6, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    .line 92
    iput p7, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    .line 93
    iput p8, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    .line 94
    iput p9, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    .line 95
    iput p10, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getApiLevel()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    return v0
.end method

.method public blacklist getCameraId()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceErrorFlag()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    return v0
.end method

.method public blacklist getFacing()I
    .locals 1

    .line 169
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    return v0
.end method

.method public blacklist getInternalReconfigureCount()I
    .locals 1

    .line 201
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    return v0
.end method

.method public blacklist getLatencyMs()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    return v0
.end method

.method public blacklist getMaxPreviewFps()F
    .locals 1

    .line 193
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    return v0
.end method

.method public blacklist getNewCameraState()I
    .locals 1

    .line 173
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    return v0
.end method

.method public blacklist getRequestCount()J
    .locals 2

    .line 205
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    return-wide v0
.end method

.method public blacklist getResultErrorCount()J
    .locals 2

    .line 209
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    return-wide v0
.end method

.method public blacklist getSessionType()I
    .locals 1

    .line 197
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    return v0
.end method

.method public blacklist getStreamStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getUserTag()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVideoStabilizationMode()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    return v0
.end method

.method public blacklist isNdk()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "streamStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/CameraStreamStats;>;"
    sget-object v1, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 158
    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    .line 162
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
