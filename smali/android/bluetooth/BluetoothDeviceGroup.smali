.class public final Landroid/bluetooth/BluetoothDeviceGroup;
.super Ljava/lang/Object;
.source "BluetoothDeviceGroup.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final blacklist ACCESS_DENIED:I = 0x5

.field public static final blacklist ACCESS_GRANTED:I = 0x2

.field public static final blacklist ACCESS_RELEASED:I = 0x1

.field public static final blacklist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.group.profile.action.CONNECTION_STATE_CHANGED"

.field public static final blacklist ALL_DEVICES_GRANTED_ACCESS:I = 0x2

.field public static final blacklist APP_ID_MAX:I = 0xf

.field public static final blacklist APP_ID_MIN:I = 0x0

.field public static final blacklist APP_REGISTRATION_FAILED:I = 0x1

.field public static final blacklist APP_REGISTRATION_SUCCESSFUL:I = 0x0

.field private static final blacklist DBG:Z = true

.field public static final blacklist DISCOVERY_COMPLETED:I = 0x3

.field public static final blacklist DISCOVERY_NOT_STARTED_INVALID_PARAMS:I = 0x5

.field public static final blacklist DISCOVERY_STARTED_BY_APPL:I = 0x0

.field public static final blacklist DISCOVERY_STARTED_GROUP_PROP_CHANGED:I = 0x2

.field public static final blacklist DISCOVERY_STOPPED_BY_APPL:I = 0x1

.field public static final blacklist DISCOVERY_STOPPED_BY_TIMEOUT:I = 0x4

.field public static final blacklist EXCLUSIVE_ACCESS_RELEASED:I = 0x0

.field public static final blacklist EXCLUSIVE_ACCESS_RELEASED_BY_TIMEOUT:I = 0x1

.field public static final blacklist GROUP_DISCOVERY_STARTED:I = 0x0

.field public static final blacklist GROUP_DISCOVERY_STOPPED:I = 0x1

.field public static final blacklist GROUP_ID_MAX:I = 0xf

.field public static final blacklist GROUP_ID_MIN:I = 0x0

.field public static final blacklist INVALID_ACCESS_REQ_PARAMS:I = 0x6

.field public static final blacklist INVALID_APP_ID:I = 0x10

.field public static final blacklist INVALID_GROUP_ID:I = 0x10

.field public static final blacklist SOME_GRANTED_ACCESS_REASON_DISCONNECTION:I = 0x4

.field public static final blacklist SOME_GRANTED_ACCESS_REASON_TIMEOUT:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothDeviceGroup"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private blacklist mAppId:I

.field private blacklist mAppRegistered:Z

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothGroupCallback:Landroid/bluetooth/IBluetoothGroupCallback$Stub;

.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private blacklist mCallback:Landroid/bluetooth/BluetoothGroupCallback;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothDeviceGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I
    .locals 0

    iget p0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mCallback:Landroid/bluetooth/BluetoothGroupCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppId(Landroid/bluetooth/BluetoothDeviceGroup;I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppRegistered(Landroid/bluetooth/BluetoothDeviceGroup;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceGroup;->runOrQueueCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    .line 163
    new-instance v0, Landroid/bluetooth/BluetoothDeviceGroup$1;

    const-class v1, Landroid/bluetooth/IBluetoothDeviceGroup;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x20

    const-string v5, "BluetoothDeviceGroup"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothDeviceGroup$1;-><init>(Landroid/bluetooth/BluetoothDeviceGroup;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 191
    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDeviceGroup$2;-><init>(Landroid/bluetooth/BluetoothDeviceGroup;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 275
    new-instance v2, Landroid/bluetooth/BluetoothDeviceGroup$3;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDeviceGroup$3;-><init>(Landroid/bluetooth/BluetoothDeviceGroup;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mBluetoothGroupCallback:Landroid/bluetooth/IBluetoothGroupCallback$Stub;

    .line 178
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 179
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 180
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    .line 181
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 182
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothDeviceGroup"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothDeviceGroup;
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothDeviceGroup;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 262
    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 874
    const-string v0, "BluetoothDeviceGroup"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method private blacklist runOrQueueCallback(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "cb"    # Ljava/lang/Runnable;

    .line 882
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 884
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    goto :goto_1

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothDeviceGroup"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 889
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    :goto_1
    return-void
.end method


# virtual methods
.method blacklist close()V
    .locals 4

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    .line 210
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 211
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup;->unregisterGroupClientApp(ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

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

    const-string v3, "BluetoothDeviceGroup"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 220
    return-void
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect : device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 820
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 821
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return v1

    .line 826
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 827
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 828
    const-string v3, "Proxy is not attached to Profile Service. Can\'t connect."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return v1

    .line 833
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->connect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    goto :goto_0

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Landroid/os/RemoteException;
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect : device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 853
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 854
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v1

    .line 859
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 860
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 861
    const-string v3, "Proxy is not attached to Profile Service. Can\'t disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return v1

    .line 866
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->disconnect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    goto :goto_0

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Landroid/os/RemoteException;
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api finalize()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->close()V

    .line 235
    return-void
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDiscoveredGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDeviceGroup;->getDiscoveredGroups(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDiscoveredGroups(Z)Ljava/util/List;
    .locals 6
    .param p1, "mPublicAddr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation

    .line 564
    const-string v0, "getDiscoveredGroups()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 566
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 567
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-object v1

    .line 572
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 573
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 574
    const-string v3, "Proxy is not attached to Profile Service. Can\'t fetch Groups."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-object v1

    .line 579
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getDiscoveredGroups(ZLandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/DeviceGroup;>;"
    return-object v1

    .line 581
    .end local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/DeviceGroup;>;"
    :catch_0
    move-exception v3

    .line 582
    .local v3, "e":Landroid/os/RemoteException;
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

    .line 585
    .end local v3    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getExclusiveAccessStatus(ILjava/util/List;)Z
    .locals 5
    .param p1, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)Z"
        }
    .end annotation

    .line 778
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExclusiveAccessStatus() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 780
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 781
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return v1

    .line 786
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 787
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 788
    const-string v3, "Proxy is not attached to Profile Service. Can\'t get exclusive access status."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v1

    .line 794
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getExclusiveAccessStatus(IILjava/util/List;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    goto :goto_0

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Landroid/os/RemoteException;
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getGroup(I)Landroid/bluetooth/DeviceGroup;
    .locals 1
    .param p1, "groupId"    # I

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothDeviceGroup;->getGroup(IZ)Landroid/bluetooth/DeviceGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGroup(IZ)Landroid/bluetooth/DeviceGroup;
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "mPublicAddr"    # Z

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGroup() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 614
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 615
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-object v1

    .line 620
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 621
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 622
    const-string v3, "Proxy is not attached to Profile Service. Can\'t fetch Group."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v1

    .line 627
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getDeviceGroup(IZLandroid/content/AttributionSource;)Landroid/bluetooth/DeviceGroup;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .local v1, "group":Landroid/bluetooth/DeviceGroup;
    return-object v1

    .line 629
    .end local v1    # "group":Landroid/bluetooth/DeviceGroup;
    :catch_0
    move-exception v3

    .line 630
    .local v3, "e":Landroid/os/RemoteException;
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

    .line 633
    .end local v3    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothDeviceGroup;->getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Z)I

    move-result v0

    return v0
.end method

.method public blacklist getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Z)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "mPublicAddr"    # Z

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRemoteDeviceGroupId() : device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 667
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/16 v1, 0x10

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 668
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v1

    .line 673
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 674
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 675
    const-string v3, "Proxy is not attached to Profile Service.Can\'t get group id for device."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return v1

    .line 681
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;ZLandroid/content/AttributionSource;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 682
    :catch_0
    move-exception v3

    .line 683
    .local v3, "e":Landroid/os/RemoteException;
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

    .line 685
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist isGroupDiscoveryInProgress(I)Z
    .locals 6
    .param p1, "groupId"    # I

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGroupDiscoveryInProgress() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 701
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 702
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return v1

    .line 707
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 708
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 709
    const-string v3, "Proxy is not attached to Profile Service.Can\'t get discovery status."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return v1

    .line 714
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->isGroupDiscoveryInProgress(ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 715
    :catch_0
    move-exception v3

    .line 716
    .local v3, "e":Landroid/os/RemoteException;
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

    .line 718
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist registerGroupClientApp(Landroid/bluetooth/BluetoothGroupCallback;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "callbacks"    # Landroid/bluetooth/BluetoothGroupCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerGroupClientApp() mAppRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 441
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "App already registered."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v1

    .line 446
    :cond_0
    iput-object p2, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mHandler:Landroid/os/Handler;

    .line 447
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mCallback:Landroid/bluetooth/BluetoothGroupCallback;

    .line 449
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 450
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 451
    const-string v3, "Proxy not attached to Profile Service. Can\'t register App."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v1

    .line 455
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    .line 457
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 458
    .local v3, "uuid":Ljava/util/UUID;
    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mBluetoothGroupCallback:Landroid/bluetooth/IBluetoothGroupCallback$Stub;

    iget-object v6, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v5, v6}, Landroid/bluetooth/IBluetoothDeviceGroup;->registerGroupClientApp(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGroupCallback;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v3    # "uuid":Ljava/util/UUID;
    goto :goto_0

    .line 460
    :catch_0
    move-exception v3

    .line 461
    .local v3, "e":Landroid/os/RemoteException;
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

    .line 463
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method public blacklist setExclusiveAccess(ILjava/util/List;I)Z
    .locals 9
    .param p1, "groupId"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)Z"
        }
    .end annotation

    .line 740
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExclusiveAccess() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 743
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 744
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v1

    .line 749
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 750
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 751
    const-string v3, "Proxy is not attached to Profile Service. Can\'t proceed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v1

    .line 756
    :cond_1
    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, v0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothDeviceGroup;->setExclusiveAccess(IILjava/util/List;ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Landroid/os/RemoteException;
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist startGroupDiscovery(I)Z
    .locals 5
    .param p1, "groupId"    # I

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGroupDiscovery() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 487
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 488
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v1

    .line 493
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 494
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 495
    const-string v3, "Proxy is not attached to Profile Service. Can\'t start group discovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v1

    .line 500
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 501
    .local v1, "uuid":Ljava/util/UUID;
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v3, p1, v4}, Landroid/bluetooth/IBluetoothDeviceGroup;->startGroupDiscovery(IILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v1    # "uuid":Ljava/util/UUID;
    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Landroid/os/RemoteException;
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist stopGroupDiscovery(I)Z
    .locals 5
    .param p1, "groupId"    # I

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopGroupDiscovery() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    .line 523
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_0

    .line 524
    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return v1

    .line 529
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    .line 530
    .local v0, "service":Landroid/bluetooth/IBluetoothDeviceGroup;
    if-nez v0, :cond_1

    .line 531
    const-string v3, "Proxy is not attached to Profile Service. Can\'t Stop group discovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v1

    .line 536
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->stopGroupDiscovery(IILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Landroid/os/RemoteException;
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method
