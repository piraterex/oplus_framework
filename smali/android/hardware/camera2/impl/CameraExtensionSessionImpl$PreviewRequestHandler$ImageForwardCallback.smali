.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageForwardCallback"
.end annotation


# instance fields
.field private final blacklist mOutputWriter:Landroid/media/ImageWriter;

.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/media/ImageWriter;)V
    .locals 0
    .param p2, "imageWriter"    # Landroid/media/ImageWriter;

    .line 1717
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->mOutputWriter:Landroid/media/ImageWriter;

    .line 1719
    return-void
.end method


# virtual methods
.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 3
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 1729
    const-string v0, "CameraExtensionSessionImpl"

    if-nez p2, :cond_0

    .line 1730
    const-string v1, "Invalid image!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return-void

    .line 1735
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1, p2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    goto :goto_0

    .line 1736
    :catch_0
    move-exception v1

    .line 1739
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Output surface likely abandoned, dropping buffer!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1742
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 1723
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 1725
    return-void
.end method
