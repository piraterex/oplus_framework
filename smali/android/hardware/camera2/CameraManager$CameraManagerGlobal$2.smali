.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 1801
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCameraAccessPrioritiesChanged()V
    .locals 0

    .line 1818
    return-void
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 1824
    return-void
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 1821
    return-void
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    return-void
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1804
    return-void
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1811
    return-void
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1815
    return-void
.end method
