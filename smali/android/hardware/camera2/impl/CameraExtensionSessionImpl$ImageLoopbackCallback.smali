.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoopbackCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 1164
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1165
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 1160
    return-void
.end method
