.class public final Landroid/bluetooth/BluetoothLeCallControl;
.super Ljava/lang/Object;
.source "BluetoothLeCallControl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;,
        Landroid/bluetooth/BluetoothLeCallControl$Callback;,
        Landroid/bluetooth/BluetoothLeCallControl$TerminationReason;,
        Landroid/bluetooth/BluetoothLeCallControl$Result;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_HOLD_CALL:I = 0x1

.field public static final blacklist CAPABILITY_JOIN_CALLS:I = 0x2

.field private static final blacklist DBG:Z = true

.field private static final blacklist MESSAGE_TBS_SERVICE_CONNECTED:I = 0x66

.field private static final blacklist MESSAGE_TBS_SERVICE_DISCONNECTED:I = 0x67

.field private static final blacklist REG_TIMEOUT:I = 0x2710

.field public static final blacklist RESULT_ERROR_APPLICATION:I = 0x3

.field public static final blacklist RESULT_ERROR_INVALID_URI:I = 0x2

.field public static final blacklist RESULT_ERROR_UNKNOWN_CALL_ID:I = 0x1

.field public static final blacklist RESULT_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeCallControl"

.field public static final blacklist TERMINATION_REASON_CLIENT_HANGUP:I = 0x6

.field public static final blacklist TERMINATION_REASON_FAIL:I = 0x1

.field public static final blacklist TERMINATION_REASON_INVALID_URI:I = 0x0

.field public static final blacklist TERMINATION_REASON_LINE_BUSY:I = 0x4

.field public static final blacklist TERMINATION_REASON_NETWORK_CONGESTION:I = 0x5

.field public static final blacklist TERMINATION_REASON_NO_ANSWER:I = 0x8

.field public static final blacklist TERMINATION_REASON_NO_SERVICE:I = 0x7

.field public static final blacklist TERMINATION_REASON_REMOTE_HANGUP:I = 0x2

.field public static final blacklist TERMINATION_REASON_SERVER_HANGUP:I = 0x3

.field private static final blacklist VDBG:Z = false


# instance fields
.field private blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private blacklist mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

.field private blacklist mCcid:I

.field private final blacklist mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mService:Landroid/bluetooth/IBluetoothLeCallControl;

.field private blacklist mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private blacklist mToken:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCcid(Landroid/bluetooth/BluetoothLeCallControl;I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/bluetooth/BluetoothLeCallControl;Landroid/bluetooth/IBluetoothLeCallControl;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoBind(Landroid/bluetooth/BluetoothLeCallControl;)Z
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doBind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothLeCallControl;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doUnbind()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 399
    new-instance v0, Landroid/bluetooth/BluetoothLeCallControl$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeCallControl$1;-><init>(Landroid/bluetooth/BluetoothLeCallControl;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 867
    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothLeCallControl$2;-><init>(Landroid/bluetooth/BluetoothLeCallControl;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 888
    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothLeCallControl$3;-><init>(Landroid/bluetooth/BluetoothLeCallControl;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mHandler:Landroid/os/Handler;

    .line 417
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mContext:Landroid/content/Context;

    .line 418
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 419
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 420
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 422
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 423
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeCallControl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doBind()Z

    .line 432
    return-void
.end method

.method private blacklist doBind()Z
    .locals 4

    .line 435
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 440
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    const/16 v2, 0x1b

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 441
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    .line 440
    return v1

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeCallControl"

    const-string v3, "Unable to bind TelephoneBearerService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    .line 448
    const/4 v0, 0x0

    return v0

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist doUnbind()V
    .locals 5

    .line 452
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 457
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    const/16 v3, 0x1b

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 458
    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothManager;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :goto_0
    :try_start_2
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 464
    goto :goto_2

    .line 463
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 460
    :catch_0
    move-exception v2

    .line 461
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothLeCallControl"

    const-string v4, "Unable to unbind TelephoneBearerService"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 463
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_4
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    .line 464
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeCallControl;
    throw v2

    .line 466
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeCallControl;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeCallControl;
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    return-object v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 860
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

    .line 864
    const-string v0, "BluetoothLeCallControl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method


# virtual methods
.method blacklist close()V
    .locals 4

    .line 472
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeCallControl;->unregisterBearer()V

    .line 474
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 475
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 477
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeCallControl"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 483
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doUnbind()V

    .line 484
    return-void
.end method

.method public blacklist currentCallsList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;)V"
        }
    .end annotation

    .line 764
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 765
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    const-string v1, "BluetoothLeCallControl"

    if-nez v0, :cond_0

    .line 766
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void

    .line 771
    :cond_0
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 772
    :catch_0
    move-exception v2

    .line 773
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentControlId()I
    .locals 1

    .line 643
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    return v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist networkStateChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "technology"    # I

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "networkStateChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", technology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_0

    .line 801
    return-void

    .line 804
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 805
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_1

    .line 806
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 811
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->networkStateChanged(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    goto :goto_0

    .line 812
    :catch_0
    move-exception v2

    .line 813
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onCallAdded(Landroid/bluetooth/BluetoothLeCall;)V
    .locals 5
    .param p1, "call"    # Landroid/bluetooth/BluetoothLeCall;

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallAdded: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_0

    .line 664
    return-void

    .line 667
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 668
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_1

    .line 669
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 674
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    goto :goto_0

    .line 675
    :catch_0
    move-exception v2

    .line 676
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onCallRemoved(Ljava/util/UUID;I)V
    .locals 5
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "reason"    # I

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callRemoved: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_0

    .line 699
    return-void

    .line 702
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 703
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_1

    .line 704
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void

    .line 708
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, p2, v4}, Landroid/bluetooth/IBluetoothLeCallControl;->callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onCallStateChanged(Ljava/util/UUID;I)V
    .locals 5
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "state"    # I

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callStateChanged: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_0

    .line 735
    return-void

    .line 738
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 739
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_1

    .line 740
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 745
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, p2, v4}, Landroid/bluetooth/IBluetoothLeCallControl;->callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_0

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerBearer(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)Z
    .locals 16
    .param p1, "uci"    # Ljava/lang/String;
    .param p3, "capabilities"    # I
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "technology"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/bluetooth/BluetoothLeCallControl$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/bluetooth/BluetoothLeCallControl$Callback;",
            ")Z"
        }
    .end annotation

    .line 562
    .local p2, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    const-string v3, "BluetoothLeCallControl"

    const-string/jumbo v0, "registerBearer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz v2, :cond_4

    .line 567
    iget v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 568
    return v4

    .line 571
    :cond_0
    move-object/from16 v14, p1

    iput-object v14, v1, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    .line 573
    invoke-direct/range {p0 .. p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v15

    .line 574
    .local v15, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v15, :cond_1

    .line 575
    const-string v0, "Proxy not attached to service"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v4

    .line 579
    :cond_1
    iget-object v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    if-eqz v0, :cond_2

    .line 580
    const-string v0, "Bearer can be opened only once"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v4

    .line 584
    :cond_2
    iput-object v2, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 586
    const/4 v13, 0x0

    :try_start_0
    new-instance v7, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    move-object/from16 v12, p6

    invoke-direct {v7, v1, v12, v2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;-><init>(Landroid/bluetooth/BluetoothLeCallControl;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)V

    .line 587
    .local v7, "callbackWrapper":Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
    iget-object v6, v1, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    iget-object v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v4, v13

    move-object v13, v0

    :try_start_1
    invoke-interface/range {v5 .. v13}, Landroid/bluetooth/IBluetoothLeCallControl;->registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    .end local v7    # "callbackWrapper":Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
    nop

    .line 596
    iget v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_3

    .line 597
    iput-object v4, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 598
    const/4 v3, 0x0

    return v3

    .line 601
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 590
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v13

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    .line 592
    iput-object v4, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 593
    const/4 v3, 0x0

    return v3

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "service":Landroid/bluetooth/IBluetoothLeCallControl;
    :cond_4
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestResult(II)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "result"    # I

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestResult: requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_0

    .line 842
    return-void

    .line 845
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 846
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_1

    .line 847
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void

    .line 852
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->requestResult(IIILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    goto :goto_0

    .line 853
    :catch_0
    move-exception v2

    .line 854
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterBearer()V
    .locals 6

    .line 612
    const-string v0, "BluetoothLeCallControl"

    const-string/jumbo v1, "unregisterBearer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v1, :cond_0

    .line 615
    return-void

    .line 618
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v1

    .line 619
    .local v1, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v1, :cond_1

    .line 620
    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 624
    :cond_1
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    .line 625
    .local v2, "ccid":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    .line 626
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 629
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControl;->unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    goto :goto_0

    .line 630
    :catch_0
    move-exception v3

    .line 631
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
