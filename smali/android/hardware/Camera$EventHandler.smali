.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final greylist-max-o mCamera:Landroid/hardware/Camera;

.field final synthetic blacklist this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor greylist <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1247
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1248
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1249
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1250
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1363
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return-void

    .line 1357
    :sswitch_0
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmCameraMetaDataCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmCameraMetaDataCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 1360
    :cond_0
    return-void

    .line 1347
    :sswitch_1
    const/16 v0, 0x101

    new-array v1, v0, [I

    .line 1348
    .local v1, "statsdata":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1349
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x4

    invoke-static {v3, v4}, Landroid/hardware/Camera;->-$$Nest$smbyteToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 1348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1351
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmCameraDataCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmCameraDataCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    .line 1354
    :cond_2
    return-void

    .line 1341
    .end local v1    # "statsdata":[I
    :sswitch_2
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1342
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    .line 1344
    :cond_4
    return-void

    .line 1315
    :sswitch_3
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1316
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/Camera$Face;

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/Camera$Face;

    .line 1320
    .local v0, "faces":[Landroid/hardware/Camera$Face;
    if-eqz v0, :cond_5

    .line 1321
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v1}, Landroid/hardware/Camera;->-$$Nest$fgetmCamExt(Landroid/hardware/Camera;)Landroid/hardware/ICameraExt;

    move-result-object v1

    array-length v2, v0

    invoke-interface {v1, v2}, Landroid/hardware/ICameraExt;->extendhandleMessage(I)V

    .line 1325
    .end local v0    # "faces":[Landroid/hardware/Camera$Face;
    :cond_5
    return-void

    .line 1268
    :sswitch_4
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1269
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1271
    :cond_6
    return-void

    .line 1262
    :sswitch_5
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1263
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1265
    :cond_7
    return-void

    .line 1292
    :sswitch_6
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1293
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1295
    :cond_8
    return-void

    .line 1274
    :sswitch_7
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmPreviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    .line 1275
    .local v0, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v0, :cond_b

    .line 1276
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-$$Nest$fgetmOneShot(Landroid/hardware/Camera;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1280
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/Camera;->-$$Nest$fputmPreviewCallback(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2

    .line 1281
    :cond_9
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-$$Nest$fgetmWithBuffer(Landroid/hardware/Camera;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1285
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3, v2, v1}, Landroid/hardware/Camera;->-$$Nest$msetHasPreviewCallback(Landroid/hardware/Camera;ZZ)V

    .line 1287
    :cond_a
    :goto_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 1289
    :cond_b
    return-void

    .line 1309
    .end local v0    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_8
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1310
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_c

    move v1, v2

    :cond_c
    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v1, v2}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 1312
    :cond_d
    return-void

    .line 1298
    :sswitch_9
    const/4 v0, 0x0

    .line 1299
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusCallbackLock(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1300
    :try_start_0
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v4}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v4

    move-object v0, v4

    .line 1301
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    if-eqz v0, :cond_f

    .line 1303
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    move v1, v2

    .line 1304
    .local v1, "success":Z
    :goto_3
    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1306
    .end local v1    # "success":Z
    :cond_f
    return-void

    .line 1301
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1256
    .end local v0    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_a
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1257
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 1259
    :cond_10
    return-void

    .line 1328
    :sswitch_b
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1330
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_4

    .line 1331
    :cond_11
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1332
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1333
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_4

    .line 1335
    :cond_12
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1338
    :cond_13
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
