.class public final Landroid/bluetooth/BluetoothHidDevice;
.super Ljava/lang/Object;
.source "BluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;,
        Landroid/bluetooth/BluetoothHidDevice$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

.field private static final blacklist DBG:Z = false

.field public static final whitelist ERROR_RSP_INVALID_PARAM:B = 0x4t

.field public static final whitelist ERROR_RSP_INVALID_RPT_ID:B = 0x2t

.field public static final whitelist ERROR_RSP_NOT_READY:B = 0x1t

.field public static final whitelist ERROR_RSP_SUCCESS:B = 0x0t

.field public static final whitelist ERROR_RSP_UNKNOWN:B = 0xet

.field public static final whitelist ERROR_RSP_UNSUPPORTED_REQ:B = 0x3t

.field public static final whitelist PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final whitelist PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final whitelist REPORT_TYPE_FEATURE:B = 0x3t

.field public static final whitelist REPORT_TYPE_INPUT:B = 0x1t

.field public static final whitelist REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final whitelist SUBCLASS1_COMBO:B = -0x40t

.field public static final whitelist SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final whitelist SUBCLASS1_MOUSE:B = -0x80t

.field public static final whitelist SUBCLASS1_NONE:B = 0x0t

.field public static final whitelist SUBCLASS2_CARD_READER:B = 0x6t

.field public static final whitelist SUBCLASS2_DIGITIZER_TABLET:B = 0x5t

.field public static final whitelist SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final whitelist SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final whitelist SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final whitelist SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final whitelist SUBCLASS2_UNCATEGORIZED:B

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothHidDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const-class v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v6, Landroid/bluetooth/BluetoothHidDevice$1;

    const-class v0, Landroid/bluetooth/IBluetoothHidDevice;

    .line 435
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x13

    const-string v4, "BluetoothHidDevice"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHidDevice$1;-><init>(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothHidDevice;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 443
    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 444
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 445
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 446
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHidDevice;
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothHidDevice;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 832
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 833
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 837
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 839
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 840
    :cond_1
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 847
    return-void
.end method


# virtual methods
.method blacklist close()V
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 450
    return-void
.end method

.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 742
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 743
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v1, 0x0

    .line 744
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 745
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 750
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 751
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 752
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    .line 753
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 769
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 770
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v1, 0x0

    .line 771
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 772
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 776
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 777
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 778
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 779
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    .line 780
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 462
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_0

    .line 464
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 470
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v3, v2}, Landroid/bluetooth/IBluetoothHidDevice;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 471
    nop

    .line 472
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 471
    invoke-static {v3, v4}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 474
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 511
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 512
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v1, 0x0

    .line 513
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 514
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 519
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 520
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 521
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 522
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 487
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_0

    .line 489
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 495
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3, v2}, Landroid/bluetooth/IBluetoothHidDevice;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 496
    nop

    .line 497
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 496
    invoke-static {v3, v4}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 499
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public blacklist getUserAppName()Ljava/lang/String;
    .locals 7

    .line 714
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 715
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const-string v1, ""

    .line 716
    .local v1, "defaultValue":Ljava/lang/String;
    const-string v2, ""

    if-nez v0, :cond_0

    .line 717
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 722
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->getUserAppName(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 723
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 724
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v2
.end method

.method public whitelist registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z
    .locals 14
    .param p1, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p2, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p3, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 559
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 561
    .local v4, "result":Z
    if-eqz p1, :cond_4

    .line 565
    if-eqz v2, :cond_3

    .line 569
    if-eqz v3, :cond_2

    .line 573
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v12

    .line 574
    .local v12, "service":Landroid/bluetooth/IBluetoothHidDevice;
    move v13, v4

    .line 575
    .local v13, "defaultValue":Z
    if-nez v12, :cond_0

    .line 576
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v5, "Proxy not attached to service"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 581
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    new-instance v9, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iget-object v5, v1, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v9, v2, v3, v5}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;Landroid/content/AttributionSource;)V

    .line 582
    .local v9, "cbw":Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
    iget-object v10, v1, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v5, v12

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Landroid/bluetooth/IBluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 583
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 586
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    .end local v9    # "cbw":Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v13

    .line 570
    .end local v12    # "service":Landroid/bluetooth/IBluetoothHidDevice;
    .end local v13    # "defaultValue":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "callback parameter cannot be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "executor parameter cannot be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sdp parameter cannot be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .locals 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 661
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v7

    .line 662
    .local v7, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v8, 0x0

    .line 663
    .local v8, "defaultValue":Z
    const/4 v9, 0x0

    if-nez v7, :cond_0

    .line 664
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    move-object v10, v0

    .line 669
    .local v10, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v10

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 670
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 671
    .end local v10    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v9
.end method

.method public whitelist reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "error"    # B

    .line 688
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 689
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v1, 0x0

    .line 690
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 691
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 696
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 697
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 698
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    .line 699
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "data"    # [B

    .line 632
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v6

    .line 633
    .local v6, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v7, 0x0

    .line 634
    .local v7, "defaultValue":Z
    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 635
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    move-object v9, v0

    .line 640
    .local v9, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v9

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 641
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 642
    .end local v9    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v8
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 812
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 813
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v1, 0x0

    .line 814
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 815
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 817
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    const/16 v3, 0x64

    if-ne p2, v3, :cond_2

    .line 821
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 822
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 823
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 824
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    .line 825
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist unregisterApp()Z
    .locals 7

    .line 604
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 605
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    const/4 v1, 0x0

    .line 606
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 607
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 611
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 612
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothHidDevice;->unregisterApp(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 613
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 614
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    .line 615
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method
