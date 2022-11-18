.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final blacklist mCloseLock:Ljava/lang/Object;

.field private blacklist mDataSpace:I

.field private greylist-max-o mFormat:I

.field private blacklist mHardwareBufferFormat:I

.field private greylist-max-o mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mNativeBuffer:J

.field private greylist-max-o mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private greylist-max-o mTransform:I

.field final synthetic blacklist this$0:Landroid/media/ImageReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0

    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setDetached(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/ImageReader;I)V
    .locals 2
    .param p2, "format"    # I

    .line 1133
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 1131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    .line 1400
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1401
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    .line 1402
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    .line 1404
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1134
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1135
    invoke-static {p1}, Landroid/media/ImageReader;->-$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    .line 1136
    invoke-static {p1}, Landroid/media/ImageReader;->-$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I

    move-result p1

    iput p1, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    .line 1137
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/ImageReader;II)V
    .locals 1
    .param p2, "hardwareBufferFormat"    # I
    .param p3, "dataSpace"    # I

    .line 1139
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 1131
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    .line 1400
    const/4 p1, 0x0

    iput p1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1401
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    .line 1402
    iput p1, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    .line 1404
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1140
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    .line 1141
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    .line 1142
    invoke-static {p2, p3}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result p1

    iput p1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1143
    return-void
.end method

.method private greylist-max-o clearSurfacePlanes()V
    .locals 3

    .line 1316
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-eqz v0, :cond_1

    .line 1317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1318
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1319
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->-$$Nest$mclearBuffer(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 1320
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private synchronized native blacklist nativeCreatePlanes(IIJ)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native blacklist nativeGetFenceFd()I
.end method

.method private synchronized native greylist-max-o nativeGetFormat(I)I
.end method

.method private synchronized native greylist-max-o nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;
.end method

.method private synchronized native greylist-max-o nativeGetHeight()I
.end method

.method private synchronized native blacklist nativeGetOplusHardwareBuffer()Landroid/hardware/HardwareBuffer;
.end method

.method private synchronized native greylist-max-o nativeGetWidth()I
.end method

.method private greylist-max-o setDetached(Z)V
    .locals 1
    .param p1, "detached"    # Z

    .line 1310
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1311
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1312
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 1147
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1, p0}, Landroid/media/ImageReader;->-$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 1149
    monitor-exit v0

    .line 1150
    return-void

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1285
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1288
    nop

    .line 1289
    return-void

    .line 1287
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1288
    throw v0
.end method

.method public whitelist getDataSpace()I
    .locals 1

    .line 1260
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1261
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1235
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFenceFd()I

    move-result v0

    .line 1236
    .local v0, "fence":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1237
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFenceFd()I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1

    .line 1239
    :cond_0
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getFormat()I
    .locals 2

    .line 1158
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1162
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmUseLegacyImageFormat(Landroid/media/ImageReader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    .line 1165
    .local v0, "readerFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1166
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1168
    .end local v0    # "readerFormat":I
    :cond_1
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 1245
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1246
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 1191
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1193
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1202
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight()I

    move-result v0

    .local v0, "height":I
    goto :goto_0

    .line 1199
    .end local v0    # "height":I
    :sswitch_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    .line 1200
    .restart local v0    # "height":I
    nop

    .line 1204
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist-max-o getNativeContext()J
    .locals 2

    .line 1305
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1306
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method public blacklist getOplusHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 1253
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1254
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetOplusHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getOwner()Landroid/media/ImageReader;
    .locals 1

    .line 1299
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1300
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method bridge synthetic blacklist getOwner()Ljava/lang/Object;
    .locals 1

    .line 1130
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlaneCount()I
    .locals 1

    .line 1227
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1228
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I

    move-result v0

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 4

    .line 1272
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1274
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I

    move-result v0

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1}, Landroid/media/ImageReader;->-$$Nest$fgetmFormat(Landroid/media/ImageReader;)I

    move-result v1

    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-$$Nest$fgetmUsage(Landroid/media/ImageReader;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlanes(IIJ)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 1279
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getReader()Landroid/media/ImageReader;
    .locals 1

    .line 1153
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 1

    .line 1221
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1222
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mScalingMode:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 1209
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1210
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 1

    .line 1215
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1216
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTransform:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 1173
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1175
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1184
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth()I

    move-result v0

    .local v0, "width":I
    goto :goto_0

    .line 1181
    .end local v0    # "width":I
    :sswitch_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .line 1182
    .restart local v0    # "width":I
    nop

    .line 1186
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o isAttachable()Z
    .locals 1

    .line 1293
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1294
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public whitelist setTimestamp(J)V
    .locals 0
    .param p1, "timestampNs"    # J

    .line 1266
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1267
    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    .line 1268
    return-void
.end method
