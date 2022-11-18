.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 7
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 1128
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCaptureFailed(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1132
    :cond_0
    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 1133
    .local v0, "timestamp":J
    invoke-virtual {p1, p2}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    .line 1134
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCapturePendingMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1135
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCapturePendingMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1136
    .local v2, "stageId":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCaptureStageMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Ljava/util/HashMap;

    move-result-object v3

    .line 1137
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1138
    .local v3, "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    if-eqz v3, :cond_1

    .line 1139
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCaptureStageMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v5, p2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$mcheckAndFireBurstProcessing(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    goto :goto_0

    .line 1144
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture stage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCapturePendingMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v5

    .line 1146
    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is absent!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1144
    const-string v5, "CameraExtensionSessionImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v2    # "stageId":Ljava/lang/Integer;
    .end local v3    # "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    :goto_0
    goto :goto_1

    .line 1150
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$fgetmCapturePendingMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    const/4 v4, -0x1

    .line 1152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1150
    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1154
    :goto_1
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 1123
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->-$$Nest$mnotifyCaptureFailed(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    .line 1124
    return-void
.end method
