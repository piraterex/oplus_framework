.class public interface abstract Landroid/hardware/ICameraService;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub;,
        Landroid/hardware/ICameraService$Default;
    }
.end annotation


# static fields
.field public static final greylist-max-o API_VERSION_1:I = 0x1

.field public static final greylist-max-o API_VERSION_2:I = 0x2

.field public static final greylist-max-o CAMERA_TYPE_ALL:I = 0x1

.field public static final greylist-max-o CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field public static final blacklist DEVICE_STATE_BACK_COVERED:I = 0x1

.field public static final blacklist DEVICE_STATE_FOLDED:I = 0x4

.field public static final blacklist DEVICE_STATE_FRONT_COVERED:I = 0x2

.field public static final blacklist DEVICE_STATE_LAST_FRAMEWORK_BIT:I = -0x80000000

.field public static final blacklist DEVICE_STATE_NORMAL:I = 0x0

.field public static final greylist-max-o ERROR_ALREADY_EXISTS:I = 0x2

.field public static final greylist-max-o ERROR_CAMERA_IN_USE:I = 0x7

.field public static final greylist-max-o ERROR_DEPRECATED_HAL:I = 0x9

.field public static final greylist-max-o ERROR_DISABLED:I = 0x6

.field public static final greylist-max-o ERROR_DISCONNECTED:I = 0x4

.field public static final greylist-max-o ERROR_ILLEGAL_ARGUMENT:I = 0x3

.field public static final greylist-max-o ERROR_INVALID_OPERATION:I = 0xa

.field public static final greylist-max-o ERROR_MAX_CAMERAS_IN_USE:I = 0x8

.field public static final greylist-max-o ERROR_PERMISSION_DENIED:I = 0x1

.field public static final greylist-max-o ERROR_TIMED_OUT:I = 0x5

.field public static final greylist-max-o EVENT_NONE:I = 0x0

.field public static final blacklist EVENT_USB_DEVICE_ATTACHED:I = 0x2

.field public static final blacklist EVENT_USB_DEVICE_DETACHED:I = 0x3

.field public static final greylist-max-o EVENT_USER_SWITCHED:I = 0x1

.field public static final greylist-max-o USE_CALLING_PID:I = -0x1

.field public static final greylist-max-o USE_CALLING_UID:I = -0x1


# virtual methods
.method public abstract greylist-max-o addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist connect(Landroid/hardware/ICameraClient;ILjava/lang/String;III)Landroid/hardware/ICamera;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getCameraInfo(I)Landroid/hardware/CameraInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getLegacyParameters(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getNumberOfCameras(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getTorchStrengthLevel(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyDeviceStateChange(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyDisplayConfigurationChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifySystemEvent(I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o removeListener(Landroid/hardware/ICameraServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o supportsCameraApi(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
