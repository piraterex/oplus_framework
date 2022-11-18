.class public final Landroid/bluetooth/BluetoothCsipSetCoordinator;
.super Ljava/lang/Object;
.source "BluetoothCsipSetCoordinator.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;,
        Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CSIS_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.CSIS_CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_CSIS_DEVICE_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.CSIS_DEVICE_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CSIS_SET_MEMBER_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.CSIS_SET_MEMBER_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field public static final whitelist EXTRA_CSIS_GROUP_ID:Ljava/lang/String; = "android.bluetooth.extra.CSIS_GROUP_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_CSIS_GROUP_SIZE:Ljava/lang/String; = "android.bluetooth.extra.CSIS_GROUP_SIZE"

.field public static final blacklist EXTRA_CSIS_GROUP_TYPE_UUID:Ljava/lang/String; = "android.bluetooth.extra.CSIS_GROUP_TYPE_UUID"

.field public static final whitelist GROUP_ID_INVALID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothCsipSetCoordinator"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothCsipSetCoordinator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v6, Landroid/bluetooth/BluetoothCsipSetCoordinator$1;

    const-class v0, Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x19

    const-string v4, "BluetoothCsipSetCoordinator"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothCsipSetCoordinator$1;-><init>(Landroid/bluetooth/BluetoothCsipSetCoordinator;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 224
    iput-object p3, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 225
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    .line 226
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 227
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mCloseGuard:Landroid/util/CloseGuard;

    .line 228
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 543
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 547
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 551
    const-string v0, "BluetoothCsipSetCoordinator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 246
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->close()V

    .line 239
    return-void
.end method

.method public whitelist getAllGroupIds(Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 6
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 370
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v2, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 372
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 378
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getAllGroupIds(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 379
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 382
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 380
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 381
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
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

    .line 395
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 396
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 398
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 404
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 405
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 408
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 406
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 407
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 523
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 524
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    const/4 v1, 0x0

    .line 525
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 526
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 531
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 532
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 535
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 536
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 533
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 534
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 449
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 450
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    const/4 v1, 0x0

    .line 451
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 452
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 457
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 458
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 461
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 459
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 460
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
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

    .line 422
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 423
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 425
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 431
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 432
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 435
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 433
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 434
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 340
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v1, "defaultValue":Ljava/util/Map;
    const-string v2, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 342
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 347
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/Map;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 348
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 351
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/Map;>;"
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 349
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 350
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist lockGroup(ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;)Ljava/util/UUID;
    .locals 7
    .param p1, "groupId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 270
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 273
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    const/4 v1, 0x0

    .line 274
    .local v1, "defaultValue":Ljava/util/UUID;
    const-string v2, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 275
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    new-instance v3, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;

    invoke-direct {v3, p2, p3}, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;)V

    .line 281
    .local v3, "delegate":Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 282
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/os/ParcelUuid;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3, v5, v4}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->lockGroup(ILandroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 283
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 284
    .local v5, "ret":Landroid/os/ParcelUuid;
    if-nez v5, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    .line 287
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/os/ParcelUuid;>;"
    .end local v5    # "ret":Landroid/os/ParcelUuid;
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_1

    .line 285
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 286
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v3    # "delegate":Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_1
    return-object v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 486
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 487
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    const/4 v1, 0x0

    .line 488
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 489
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    const/16 v4, 0x64

    if-ne p2, v4, :cond_2

    .line 495
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 496
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 497
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 500
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    .line 501
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 498
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 499
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist unlockGroup(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "lockUuid"    # Ljava/util/UUID;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 306
    const-string v0, "lockUuid cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 308
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    const/4 v1, 0x0

    .line 309
    .local v1, "defaultValue":Z
    const-string v2, "BluetoothCsipSetCoordinator"

    if-nez v0, :cond_0

    .line 310
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 315
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v5, v3}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->unlockGroup(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 316
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const/4 v2, 0x1

    return v2

    .line 320
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 318
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 319
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method
