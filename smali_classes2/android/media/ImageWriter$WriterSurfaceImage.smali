.class Landroid/media/ImageWriter$WriterSurfaceImage;
.super Landroid/media/Image;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterSurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final greylist-max-o DEFAULT_TIMESTAMP:J

.field private blacklist mDataSpace:I

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mNativeBuffer:J

.field private greylist-max-o mNativeFenceFd:I

.field private greylist-max-o mOwner:Landroid/media/ImageWriter;

.field private greylist-max-o mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

.field private greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private greylist-max-o mTransform:I

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/ImageWriter;)V
    .locals 3
    .param p1, "writer"    # Landroid/media/ImageWriter;

    .line 1053
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    .line 1041
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    .line 1042
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    .line 1043
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    .line 1044
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    .line 1047
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->DEFAULT_TIMESTAMP:J

    .line 1048
    iput-wide v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    .line 1050
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTransform:I

    .line 1051
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mScalingMode:I

    .line 1054
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    .line 1055
    invoke-static {p1}, Landroid/media/ImageWriter;->-$$Nest$fgetmWidth(Landroid/media/ImageWriter;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    .line 1056
    invoke-static {p1}, Landroid/media/ImageWriter;->-$$Nest$fgetmHeight(Landroid/media/ImageWriter;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    .line 1057
    invoke-static {p1}, Landroid/media/ImageWriter;->-$$Nest$fgetmDataSpace(Landroid/media/ImageWriter;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    .line 1058
    return-void
.end method

.method private greylist-max-o clearSurfacePlanes()V
    .locals 3

    .line 1210
    iget-boolean v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    if-eqz v0, :cond_1

    .line 1211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1212
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1213
    invoke-static {v1}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->-$$Nest$mclearBuffer(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V

    .line 1214
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1218
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private synchronized native blacklist nativeCreatePlanes(III)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.end method

.method private synchronized native blacklist nativeGetFormat(I)I
.end method

.method private synchronized native greylist-max-o nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;
.end method

.method private synchronized native greylist-max-o nativeGetHeight()I
.end method

.method private synchronized native greylist-max-o nativeGetWidth()I
.end method

.method private synchronized native blacklist nativeSetFenceFd(I)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 1195
    iget-boolean v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/media/ImageWriter;->-$$Nest$mabortImage(Landroid/media/ImageWriter;Landroid/media/Image;)V

    .line 1198
    :cond_0
    return-void
.end method

.method protected final whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1203
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1206
    nop

    .line 1207
    return-void

    .line 1205
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1206
    throw v0
.end method

.method public whitelist getDataSpace()I
    .locals 1

    .line 1062
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1064
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1143
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1145
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1146
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object v0

    return-object v0

    .line 1148
    :cond_0
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormat()I
    .locals 2

    .line 1076
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1078
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1079
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    invoke-direct {p0, v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetFormat(I)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    .line 1081
    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1138
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 2

    .line 1097
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1099
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1100
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetHeight()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    .line 1103
    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    return v0
.end method

.method greylist-max-o getNativeContext()J
    .locals 2

    .line 1188
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1190
    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method greylist-max-o getOwner()Landroid/media/ImageWriter;
    .locals 1

    .line 1181
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1183
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    return-object v0
.end method

.method bridge synthetic blacklist getOwner()Ljava/lang/Object;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 3

    .line 1160
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1162
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    if-nez v0, :cond_0

    .line 1163
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getFormat()I

    move-result v0

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    .line 1164
    .local v0, "numPlanes":I
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v1

    .line 1165
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageWriter;->getDataSpace()I

    move-result v2

    .line 1164
    invoke-direct {p0, v0, v1, v2}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeCreatePlanes(III)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    .line 1168
    .end local v0    # "numPlanes":I
    :cond_0
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 1

    .line 1115
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1117
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mScalingMode:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 1122
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1124
    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 1

    .line 1108
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1110
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTransform:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 2

    .line 1086
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1088
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1089
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetWidth()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    .line 1092
    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    return v0
.end method

.method public greylist-max-o isAttachable()Z
    .locals 1

    .line 1173
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDataSpace(I)V
    .locals 0
    .param p1, "dataSpace"    # I

    .line 1069
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1071
    iput p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    .line 1072
    return-void
.end method

.method public whitelist setFence(Landroid/hardware/SyncFence;)V
    .locals 1
    .param p1, "fence"    # Landroid/hardware/SyncFence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1155
    invoke-virtual {p1}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeSetFenceFd(I)V

    .line 1156
    return-void
.end method

.method public whitelist setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 1129
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1131
    iput-wide p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    .line 1132
    return-void
.end method
