.class public final Landroid/bluetooth/BluetoothSyncHelper;
.super Ljava/lang/Object;
.source "BluetoothSyncHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final blacklist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.bc.profile.action.CONNECTION_STATE_CHANGED"

.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothSyncHelper"


# instance fields
.field private blacklist mAppCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;",
            "Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothSyncHelper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sBleAssistManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BleBroadcastAudioScanAssistManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->sBleAssistManagers:Ljava/util/Map;

    .line 107
    iput-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Landroid/bluetooth/BluetoothSyncHelper$1;

    const-class v1, Landroid/bluetooth/IBluetoothSyncHelper;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x23

    const-string v5, "BluetoothSyncHelper"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothSyncHelper$1;-><init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 160
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 161
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 163
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAppCallbackWrappers:Ljava/util/Map;

    .line 164
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->sBleAssistManagers:Ljava/util/Map;

    .line 165
    iput-object p1, p0, Landroid/bluetooth/BluetoothSyncHelper;->mContext:Landroid/content/Context;

    .line 166
    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    .line 167
    return-void
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 753
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 754
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist isSupported()Z
    .locals 3

    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, "isSupported":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothSyncHelper: isSupported returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 153
    return v0
.end method

.method private blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 758
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 760
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 761
    :cond_1
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 765
    const-string v0, "BluetoothSyncHelper"

    invoke-static {v0, p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private blacklist wrap(Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;Landroid/os/Handler;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 416
    new-instance v0, Landroid/bluetooth/BluetoothSyncHelper$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/BluetoothSyncHelper$2;-><init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/os/Handler;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    return-object v0
.end method


# virtual methods
.method blacklist addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "sinkDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;
    .param p3, "isGroupOp"    # Z
    .param p4, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBroadcastSource  for :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SourceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isGroupOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v1

    .line 637
    .local v1, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v2, "BluetoothSyncHelper"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothSyncHelper;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v2

    return v2

    .line 648
    :catch_0
    move-exception v3

    goto :goto_0

    .line 643
    :cond_0
    if-nez v1, :cond_1

    .line 645
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    const/4 v0, 0x0

    goto :goto_1

    .line 649
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    .line 650
    const/4 v0, 0x0

    goto :goto_2

    .line 651
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 652
    :goto_2
    return v0
.end method

.method blacklist close()V
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAppCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    return-void
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 230
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 235
    :catch_0
    move-exception v3

    goto :goto_0

    .line 233
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v2

    .line 234
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 272
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 277
    :catch_0
    move-exception v3

    goto :goto_0

    .line 275
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v2

    .line 276
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method blacklist getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aAttributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAllBroadcastReceiverStates for :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 741
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 747
    :catch_0
    move-exception v3

    goto :goto_0

    .line 745
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 748
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-object v2

    .line 746
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-object v2
.end method

.method public blacklist getBleBroadcastAudioScanAssistManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothSyncHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "BluetoothSyncHelper"

    const-string v1, "Broadcast scan assistance not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 192
    .local v0, "assistMgr":Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->sBleAssistManagers:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 193
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 195
    :cond_1
    if-nez v0, :cond_2

    .line 196
    new-instance v1, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;-><init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    move-object v0, v1

    goto :goto_0

    .line 200
    :cond_2
    const-string v1, "calling registerAppCb only"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 202
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothSyncHelper;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    .line 203
    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 290
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 293
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothSyncHelper;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 298
    :catch_0
    move-exception v2

    goto :goto_0

    .line 296
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 299
    .local v2, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionPolicy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 366
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1

    return v1

    .line 372
    :catch_0
    move-exception v3

    goto :goto_0

    .line 370
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v2

    .line 371
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 337
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1

    return v1

    .line 343
    :catch_0
    move-exception v3

    goto :goto_0

    .line 341
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 344
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v2

    .line 342
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 5
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 312
    const-string v0, "getDevicesMatchingStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 315
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothSyncHelper;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 320
    :catch_0
    move-exception v2

    goto :goto_0

    .line 318
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 321
    .local v2, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method blacklist getService()Landroid/bluetooth/IBluetoothSyncHelper;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothSyncHelper;

    return-object v0
.end method

.method blacklist registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "appCallback"    # Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAppCallback device :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appCB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 585
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 587
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0, p2, v0}, Landroid/bluetooth/BluetoothSyncHelper;->wrap(Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;Landroid/os/Handler;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;

    move-result-object v1

    .line 588
    .local v1, "wrapped":Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v2

    .line 590
    .local v2, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v3, "BluetoothSyncHelper"

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    iget-object v4, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v1, v4}, Landroid/bluetooth/IBluetoothSyncHelper;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V

    .line 593
    iget-object v4, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAppCallbackWrappers:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 594
    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 601
    :catch_0
    move-exception v4

    goto :goto_1

    .line 597
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 598
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    return-void

    .line 602
    .local v4, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

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

    .line 603
    return-void

    .line 604
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    nop

    .line 605
    return-void
.end method

.method blacklist removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # B
    .param p3, "isGroupOp"    # Z
    .param p4, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBroadcastSource for :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SourceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isGroupOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 717
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const/4 v1, 0x0

    .line 719
    .local v1, "ret":Z
    const-string v2, "BluetoothSyncHelper"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothSyncHelper;->removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z

    move-result v2

    return v2

    .line 729
    :catch_0
    move-exception v3

    goto :goto_0

    .line 724
    :cond_0
    if-nez v0, :cond_1

    .line 726
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    const/4 v1, 0x0

    goto :goto_1

    .line 730
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    .line 731
    const/4 v1, 0x0

    goto :goto_2

    .line 732
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 733
    :goto_2
    return v1
.end method

.method blacklist searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "searchforLeAudioBroadcasters("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 538
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSyncHelper;->searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 544
    :catch_0
    move-exception v3

    goto :goto_0

    .line 542
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 545
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return v2

    .line 543
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method blacklist selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRes"    # Landroid/bluetooth/le/ScanResult;
    .param p3, "isGroupOp"    # Z
    .param p4, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectBroadcastSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": groupop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 571
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothSyncHelper;->selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 577
    :catch_0
    move-exception v3

    goto :goto_0

    .line 575
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 578
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return v2

    .line 576
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method blacklist setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;
    .param p3, "isGroupOp"    # Z
    .param p4, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBroadcastCode for :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isGroupOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v1

    .line 693
    .local v1, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v2, "BluetoothSyncHelper"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothSyncHelper;->setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v2

    return v2

    .line 703
    :catch_0
    move-exception v3

    goto :goto_0

    .line 698
    :cond_0
    if-nez v1, :cond_1

    .line 700
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const/4 v0, 0x0

    goto :goto_1

    .line 704
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    .line 705
    const/4 v0, 0x0

    goto :goto_2

    .line 706
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 707
    :goto_2
    return v0
.end method

.method public blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConnectionPolicy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 398
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    if-eqz p2, :cond_0

    const/16 v3, 0x64

    if-eq p2, v3, :cond_0

    .line 402
    return v2

    .line 404
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 408
    :catch_0
    move-exception v3

    goto :goto_0

    .line 406
    :cond_1
    if-nez v0, :cond_2

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v2

    .line 407
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return v2
.end method

.method blacklist startScanOffload(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isGroupOp"    # Z

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startScanOffload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGroupOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 506
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->startScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 512
    :catch_0
    move-exception v3

    goto :goto_0

    .line 510
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 513
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v2

    .line 511
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method blacklist stopScanOffload(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isGroupOp"    # Z

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopScanOffload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGroupOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 522
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->stopScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 528
    :catch_0
    move-exception v3

    goto :goto_0

    .line 526
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 529
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return v2

    .line 527
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method blacklist stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 554
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v1, "BluetoothSyncHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSyncHelper;->stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1

    return v1

    .line 560
    :catch_0
    move-exception v3

    goto :goto_0

    .line 558
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 561
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v2

    .line 559
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2
.end method

.method blacklist unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "appCallback"    # Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAppCallback: device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appCB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v0

    .line 612
    .local v0, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAppCallbackWrappers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;

    .line 614
    .local v1, "cb":Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    const-string v2, "BluetoothSyncHelper"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1, v3}, Landroid/bluetooth/IBluetoothSyncHelper;->unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V

    .line 617
    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper;->mAppCallbackWrappers:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    return-void

    .line 622
    :catch_0
    move-exception v3

    goto :goto_0

    .line 620
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 623
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    .line 624
    return-void

    .line 621
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method blacklist updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;
    .param p3, "isGroupOp"    # Z
    .param p4, "aAttributionSource"    # Landroid/content/AttributionSource;

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcastSource for :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SourceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isGroupOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->log(Ljava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSyncHelper;->getService()Landroid/bluetooth/IBluetoothSyncHelper;

    move-result-object v1

    .line 665
    .local v1, "service":Landroid/bluetooth/IBluetoothSyncHelper;
    const-string v2, "BluetoothSyncHelper"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSyncHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothSyncHelper;->updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v2

    return v2

    .line 676
    :catch_0
    move-exception v3

    goto :goto_0

    .line 671
    :cond_0
    if-nez v1, :cond_1

    .line 673
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    const/4 v0, 0x0

    goto :goto_1

    .line 677
    .local v3, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    .line 678
    const/4 v0, 0x0

    goto :goto_2

    .line 679
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 680
    :goto_2
    return v0
.end method
