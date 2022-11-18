.class Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;
.super Ljava/lang/Object;
.source "CameraExtensionForwardProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V
    .locals 0

    .line 127
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 129
    const-string v0, "CameraExtensionForward"

    const/4 v1, 0x0

    .line 131
    .local v1, "processedImage":Landroid/media/Image;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 135
    nop

    .line 136
    if-nez v1, :cond_0

    .line 137
    const-string v2, "Invalid image"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x3

    .line 144
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v5

    .line 143
    invoke-static {v3, v4, v5}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/media/ImageWriter;)V

    .line 147
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Failed to queue processed buffer!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 151
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Z)V

    .line 152
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 156
    :goto_1
    return-void

    .line 132
    :catch_1
    move-exception v2

    .line 133
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    const-string v3, "Failed to acquire processed image!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method
