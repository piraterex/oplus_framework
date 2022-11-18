.class public final Landroid/bluetooth/BluetoothVcp;
.super Ljava/lang/Object;
.source "BluetoothVcp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final blacklist A2DP:I = 0x1

.field public static final blacklist ACTION_CONNECTION_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.CONNECTION_MODE_CHANGED"

.field public static final blacklist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.CONNECTION_STATE_CHANGED"

.field public static final blacklist ACTION_MUTE_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.MUTE_CHANGED"

.field public static final blacklist ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.VOLUME_CHANGED"

.field public static final blacklist CALL_STREAM:I = 0x0

.field private static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_MODE:Ljava/lang/String; = "android.bluetooth.vcp.profile.extra.MODE"

.field public static final blacklist EXTRA_MUTE:Ljava/lang/String; = "android.bluetooth.vcp.profile.extra.MUTE"

.field public static final blacklist EXTRA_VOLUME:Ljava/lang/String; = "android.bluetooth.vcp.profile.extra.VOLUME"

.field public static final blacklist HFP:I = 0x2

.field public static final blacklist LE_MEDIA:I = 0x10

.field public static final blacklist LE_VOICE:I = 0x2000

.field public static final blacklist MEDIA_STREAM:I = 0x1

.field public static final blacklist MODE_BROADCAST:I = 0x2

.field public static final blacklist MODE_NONE:I = 0x0

.field public static final blacklist MODE_UNICAST:I = 0x1

.field public static final blacklist MODE_UNICAST_BROADCAST:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothVcp"

.field private static final blacklist VDBG:Z = true


# instance fields
.field private blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothVcp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v6, Landroid/bluetooth/BluetoothVcp$1;

    const-class v0, Landroid/bluetooth/IBluetoothVcp;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x22

    const-string v4, "BluetoothVcp"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothVcp$1;-><init>(Landroid/bluetooth/BluetoothVcp;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothVcp;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 174
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 175
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 176
    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 177
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothVcp;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothVcp;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 409
    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 413
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

    .line 417
    const-string v0, "BluetoothVcp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method


# virtual methods
.method blacklist close()V
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 181
    return-void
.end method

.method public whitelist test-api finalize()V
    .locals 0

    .line 189
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothVcp;->close()V

    .line 190
    return-void
.end method

.method public blacklist getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAbsoluteVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 295
    nop

    .line 296
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 297
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 300
    :catch_0
    move-exception v3

    .line 301
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v2

    .line 305
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    return v2
.end method

.method public blacklist getActiveProfile(I)I
    .locals 6
    .param p1, "audioType"    # I

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveProfile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 394
    nop

    .line 395
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 396
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getActiveProfile(ILandroid/content/AttributionSource;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 399
    :catch_0
    move-exception v3

    .line 400
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v2

    .line 404
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    return v2
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

    .line 197
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectionMode(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 247
    nop

    .line 248
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 249
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getConnectionMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 252
    :catch_0
    move-exception v3

    .line 253
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v2

    .line 257
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 218
    nop

    .line 219
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 220
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 223
    :catch_0
    move-exception v3

    .line 224
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v2

    .line 228
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    return v2
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

    .line 206
    const-string v0, "getDevicesMatchingStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isMute(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 344
    nop

    .line 345
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 346
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->isMute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 349
    :catch_0
    move-exception v3

    .line 350
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return v2

    .line 354
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    return v2
.end method

.method public blacklist setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAbsoluteVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 271
    nop

    .line 272
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 273
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v2}, Landroid/bluetooth/IBluetoothVcp;->setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-void

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Landroid/os/RemoteException;
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

    .line 279
    return-void

    .line 282
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    return-void
.end method

.method public blacklist setActiveProfile(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "audioType"    # I
    .param p3, "profile"    # I

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActiveProfile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 370
    nop

    .line 371
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 372
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothVcp;->setActiveProfile(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 375
    :catch_0
    move-exception v3

    .line 376
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v2

    .line 380
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1
    return v2
.end method

.method public blacklist setMute(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "enableMute"    # Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") enableMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    .line 319
    nop

    .line 320
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    .line 321
    .local v0, "service":Landroid/bluetooth/IBluetoothVcp;
    const-string v1, "BluetoothVcp"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v2}, Landroid/bluetooth/IBluetoothVcp;->setMute(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-void

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Landroid/os/RemoteException;
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

    .line 327
    return-void

    .line 330
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    return-void
.end method
