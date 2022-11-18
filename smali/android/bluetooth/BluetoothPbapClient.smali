.class public final Landroid/bluetooth/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field public static final blacklist RESULT_CANCELED:I = 0x2

.field public static final blacklist RESULT_FAILURE:I = 0x0

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field public static final blacklist STATE_ERROR:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothPbapClient"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothPbapClient;",
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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v6, Landroid/bluetooth/BluetoothPbapClient$1;

    const-class v0, Landroid/bluetooth/IBluetoothPbapClient;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x11

    const-string v4, "BluetoothPbapClient"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothPbapClient$1;-><init>(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothPbapClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 114
    iput-object p3, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 115
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 116
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 117
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 118
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothPbapClient;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothPbapClient;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 341
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

    .line 333
    const-string v0, "BluetoothPbapClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 139
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local p0    # "this":Landroid/bluetooth/BluetoothPbapClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 168
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 169
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x0

    .line 170
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothPbapClient"

    if-nez v0, :cond_0

    .line 171
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 176
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 177
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
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 178
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 182
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 202
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 203
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x1

    .line 204
    .local v1, "defaultValue":Z
    const-string v2, "BluetoothPbapClient"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 205
    const-string v4, "Proxy not attached to service"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 210
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 211
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return v3

    .line 213
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 217
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v3
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbapClient;->close()V

    .line 127
    return-void
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 235
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    .line 236
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v2, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v3, "BluetoothPbapClient"

    if-nez v1, :cond_0

    .line 238
    const-string v0, "Proxy not attached to service"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 244
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v5, v4}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 245
    nop

    .line 246
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 245
    invoke-static {v5, v6}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v4

    .line 252
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v4

    .line 249
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 255
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v2
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 451
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    .line 452
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v2, 0x0

    .line 453
    .local v2, "defaultValue":I
    const/4 v3, 0x0

    const-string v4, "BluetoothPbapClient"

    if-nez v1, :cond_0

    .line 454
    const-string v0, "Proxy not attached to service"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 458
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v5

    .line 459
    .local v5, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v6, v5}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 460
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 464
    .end local v5    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 465
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v3

    .line 462
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 468
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v3
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 312
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    .line 313
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v2, 0x0

    .line 314
    .local v2, "defaultValue":I
    const/4 v3, 0x0

    const-string v4, "BluetoothPbapClient"

    if-nez v1, :cond_0

    .line 315
    const-string v0, "Proxy not attached to service"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v5

    .line 320
    .local v5, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v6, v5}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 321
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 325
    .end local v5    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 326
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v3

    .line 323
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 329
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v3
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .param p1, "states"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 274
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    .line 275
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v3, "BluetoothPbapClient"

    if-nez v1, :cond_0

    .line 277
    const-string v0, "Proxy not attached to service"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 283
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v5, v4}, Landroid/bluetooth/IBluetoothPbapClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 284
    nop

    .line 285
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 284
    invoke-static {v5, v6}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v4

    .line 291
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v4

    .line 288
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 294
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v2
.end method

.method public blacklist getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 427
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 388
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    .line 389
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v2, 0x0

    .line 390
    .local v2, "defaultValue":Z
    const/4 v3, 0x0

    const-string v4, "BluetoothPbapClient"

    if-nez v1, :cond_0

    .line 391
    const-string v0, "Proxy not attached to service"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_1

    const/16 v5, 0x64

    if-ne p2, v5, :cond_2

    .line 397
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v5

    .line 398
    .local v5, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, p2, v6, v5}, Landroid/bluetooth/IBluetoothPbapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 399
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 403
    .end local v5    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v5

    .line 404
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v3

    .line 401
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 407
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v3
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 362
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothPbapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
