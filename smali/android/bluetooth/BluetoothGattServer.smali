.class public final Landroid/bluetooth/BluetoothGattServer;
.super Ljava/lang/Object;
.source "BluetoothGattServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattServer$NotifyCharacteristicReturnValues;
    }
.end annotation


# static fields
.field private static final blacklist CALLBACK_REG_TIMEOUT:I = 0x2710

.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothGattServer"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

.field private blacklist mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private blacklist mPendingService:Landroid/bluetooth/BluetoothGattService;

.field private blacklist mServerIf:I

.field private blacklist mServerIfLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/bluetooth/IBluetoothGatt;

.field private blacklist mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransport:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingService(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServerIfLock(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingService(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServerIf(Landroid/bluetooth/BluetoothGattServer;I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothGatt;ILandroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "transport"    # I
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/bluetooth/BluetoothGattServer$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGattServer$1;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 455
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 456
    iput-object p3, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 457
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 460
    iput p2, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    .line 462
    return-void
.end method

.method private blacklist unregisterCallback()V
    .locals 6

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback() - mServerIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 598
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 599
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, v5, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 600
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 594
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 6
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addService() - service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    .line 901
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 902
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v4, p1, v5, v0}, Landroid/bluetooth/IBluetoothGatt;->addService(ILandroid/bluetooth/BluetoothGattService;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 903
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    nop

    .line 909
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    return v2

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelConnection() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 680
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 681
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v5, v0}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 682
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 677
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist clearServices()V
    .locals 5

    .line 949
    const-string v0, "BluetoothGattServer"

    const-string v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_0

    goto :goto_1

    .line 953
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 954
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v1}, Landroid/bluetooth/IBluetoothGatt;->clearServices(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 955
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 950
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist close()V
    .locals 2

    .line 507
    const-string v0, "BluetoothGattServer"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServer;->unregisterCallback()V

    .line 509
    return-void
.end method

.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "autoConnect"    # Z

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    const-string v1, "BluetoothGattServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 654
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 655
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    if-nez p2, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    iget v7, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v9, v0

    invoke-interface/range {v3 .. v9}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;ZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 657
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    nop

    .line 663
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return v10

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    return v2

    .line 650
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v2
.end method

.method blacklist getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 5
    .param p1, "handle"    # I

    .line 470
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 471
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 472
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 473
    return-object v3

    .line 475
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    goto :goto_1

    .line 476
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    goto :goto_0

    .line 477
    :cond_2
    const/4 v0, 0x0

    return-object v0
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

    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 7
    .param p1, "handle"    # I

    .line 486
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 487
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 488
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 489
    .local v5, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 490
    return-object v5

    .line 492
    .end local v5    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_0
    goto :goto_2

    .line 493
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    goto :goto_1

    .line 494
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2
    goto :goto_0

    .line 495
    :cond_3
    const/4 v0, 0x0

    return-object v0
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

    .line 1035
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 990
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 991
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    return-object v1

    .line 994
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    goto :goto_0

    .line 996
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "type"    # I

    .line 613
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 614
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 615
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 616
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    return-object v1

    .line 619
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    goto :goto_0

    .line 620
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public whitelist notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z[B)I
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z
    .param p4, "value"    # [B

    .line 841
    move-object v1, p0

    const-string v2, "BluetoothGattServer"

    iget-object v0, v1, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/16 v3, 0x9

    if-eqz v0, :cond_5

    iget v0, v1, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 845
    :cond_0
    if-eqz p2, :cond_4

    .line 848
    if-eqz p1, :cond_3

    .line 851
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 852
    .local v4, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v4, :cond_2

    .line 855
    if-eqz p4, :cond_1

    .line 860
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 861
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, v1, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v6, v1, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 862
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v8

    iget-object v11, v1, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    .line 861
    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object v12, v0

    invoke-interface/range {v5 .. v12}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IZ[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 864
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    .line 865
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    return v2

    .line 869
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 866
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 867
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    .line 868
    return v3

    .line 856
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Characteristic value must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Characteristic must have a non-null service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    .end local v4    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "device must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "characteristic must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_5
    :goto_0
    return v3
.end method

.method public whitelist notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    nop

    .line 802
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 801
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z[B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist readPhy(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 729
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 730
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->serverReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 731
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGattServer"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method blacklist registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothGattServer;->registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;Z)Z

    move-result v0

    return v0
.end method

.method blacklist registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;Z)Z
    .locals 11
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p2, "eatt_support"    # Z

    .line 545
    const-string v0, "BluetoothGattServer"

    const-string/jumbo v1, "registerCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 547
    const-string v0, "BluetoothGattServer"

    const-string v2, "GATT service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return v1

    .line 550
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 551
    .local v0, "uuid":Ljava/util/UUID;
    const-string v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerCallback() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v2

    .line 554
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    if-eqz v3, :cond_1

    .line 555
    const-string v3, "BluetoothGattServer"

    const-string v4, "App can register callback only once"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    monitor-exit v2

    return v1

    .line 559
    :cond_1
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 562
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    iget-object v9, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    move v8, p2

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 564
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    nop

    .line 572
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    goto :goto_0

    .line 573
    :catch_0
    move-exception v4

    .line 574
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "BluetoothGattServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 578
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v4, :cond_2

    .line 579
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 580
    monitor-exit v2

    return v1

    .line 582
    :cond_2
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 565
    :catch_1
    move-exception v4

    .line 566
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothGattServer"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 568
    monitor-exit v2

    return v1

    .line 584
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public whitelist removeService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 8
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeService() - service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 926
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    .line 925
    invoke-virtual {p0, v0, v3, v4}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 927
    .local v0, "intService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1

    return v2

    .line 930
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 931
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v6

    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v4, v5, v6, v7, v3}, Landroid/bluetooth/IBluetoothGatt;->removeService(IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 932
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    nop

    .line 939
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v1, 0x1

    return v1

    .line 934
    :catch_0
    move-exception v3

    .line 935
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, ""

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    return v2

    .line 923
    .end local v0    # "intService":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z
    .locals 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I
    .param p4, "offset"    # I
    .param p5, "value"    # [B

    .line 762
    move-object v1, p0

    iget-object v0, v1, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, v1, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 766
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, v1, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, v1, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v1, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object v11, v0

    invoke-interface/range {v3 .. v11}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 768
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    nop

    .line 773
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    const/4 v0, 0x1

    return v0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothGattServer"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    return v2

    .line 762
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist setPreferredPhy(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "phyOptions"    # I

    .line 710
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 711
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Landroid/bluetooth/IBluetoothGatt;->serverSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 713
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    nop

    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGattServer"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
