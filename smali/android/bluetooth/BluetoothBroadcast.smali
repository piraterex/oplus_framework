.class public final Landroid/bluetooth/BluetoothBroadcast;
.super Ljava/lang/Object;
.source "BluetoothBroadcast.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final blacklist ACTION_BROADCAST_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.broadcast.profile.action.BROADCAST_AUDIO_STATE_CHANGED"

.field public static final blacklist ACTION_BROADCAST_ENCRYPTION_KEY_GENERATED:Ljava/lang/String; = "android.bluetooth.broadcast.profile.action.BROADCAST_ENCRYPTION_KEY_GENERATED"

.field public static final blacklist ACTION_BROADCAST_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.broadcast.profile.action.BROADCAST_STATE_CHANGED"

.field private static final blacklist DBG:Z = true

.field public static final blacklist STATE_DISABLED:I = 0xa

.field public static final blacklist STATE_DISABLING:I = 0xd

.field public static final blacklist STATE_ENABLED:I = 0xc

.field public static final blacklist STATE_ENABLING:I = 0xb

.field public static final blacklist STATE_NOT_PLAYING:I = 0xb

.field public static final blacklist STATE_PLAYING:I = 0xa

.field public static final blacklist STATE_STREAMING:I = 0xe

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothBroadcast"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothBroadcast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v6, Landroid/bluetooth/BluetoothBroadcast$1;

    const-class v0, Landroid/bluetooth/IBluetoothBroadcast;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x21

    const-string v4, "BluetoothBroadcast"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothBroadcast$1;-><init>(Landroid/bluetooth/BluetoothBroadcast;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 159
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 160
    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    .line 161
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothBroadcast;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothBroadcast;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 313
    const-string v0, "BluetoothBroadcast"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method


# virtual methods
.method public blacklist GetBroadcastStatus()I
    .locals 6

    .line 290
    const-string v0, "BluetoothBroadcast"

    const-string v1, "GetBroadcastStatus"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "packageName":Ljava/lang/String;
    const/16 v2, 0xa

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v3

    .line 294
    .local v3, "service":Landroid/bluetooth/IBluetoothBroadcast;
    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v1, v4}, Landroid/bluetooth/IBluetoothBroadcast;->GetBroadcastStatus(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 297
    :cond_0
    if-nez v3, :cond_1

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_1
    return v2

    .line 299
    .end local v3    # "service":Landroid/bluetooth/IBluetoothBroadcast;
    :catch_0
    move-exception v3

    .line 300
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return v2
.end method

.method public blacklist GetEncryptionKey()[B
    .locals 6

    .line 270
    const-string v0, "BluetoothBroadcast"

    const-string v1, "GetBroadcastEncryptionKey"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v3

    .line 274
    .local v3, "service":Landroid/bluetooth/IBluetoothBroadcast;
    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v1, v4}, Landroid/bluetooth/IBluetoothBroadcast;->GetEncryptionKey(Ljava/lang/String;Landroid/content/AttributionSource;)[B

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    if-nez v3, :cond_1

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    return-object v2

    .line 279
    .end local v3    # "service":Landroid/bluetooth/IBluetoothBroadcast;
    :catch_0
    move-exception v3

    .line 280
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v2
.end method

.method public blacklist SetBroadcastMode(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 190
    const-string v0, "BluetoothBroadcast"

    const-string v1, "EnableBroadcast"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v3

    .line 194
    .local v3, "service":Landroid/bluetooth/IBluetoothBroadcast;
    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, p1, v1, v4}, Landroid/bluetooth/IBluetoothBroadcast;->SetBroadcast(ZLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 197
    :cond_0
    if-nez v3, :cond_1

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    return v2

    .line 199
    .end local v3    # "service":Landroid/bluetooth/IBluetoothBroadcast;
    :catch_0
    move-exception v3

    .line 200
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v2
.end method

.method public blacklist SetEncryption(ZIZ)Z
    .locals 10
    .param p1, "enable"    # Z
    .param p2, "enc_len"    # I
    .param p3, "use_existing"    # Z

    .line 250
    const-string v0, "BluetoothBroadcast"

    const-string v1, "SetEncryption"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v2

    move-object v9, v2

    .line 254
    .local v9, "service":Landroid/bluetooth/IBluetoothBroadcast;
    if-eqz v9, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v7, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v2, v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothBroadcast;->SetEncryption(ZIZLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 257
    :cond_0
    if-nez v9, :cond_1

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    return v8

    .line 259
    .end local v9    # "service":Landroid/bluetooth/IBluetoothBroadcast;
    :catch_0
    move-exception v2

    .line 260
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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v8
.end method

.method blacklist close()V
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 169
    return-void
.end method

.method public whitelist test-api finalize()V
    .locals 0

    .line 182
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

    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
