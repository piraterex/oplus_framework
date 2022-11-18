.class public abstract Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCameraAccessPrioritiesChanged()V
    .locals 0

    .line 1231
    return-void
.end method

.method public whitelist onCameraAvailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1191
    return-void
.end method

.method public whitelist onCameraClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1312
    return-void
.end method

.method public whitelist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1296
    return-void
.end method

.method public whitelist onCameraUnavailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1206
    return-void
.end method

.method public whitelist onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1254
    return-void
.end method

.method public whitelist onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1277
    return-void
.end method
