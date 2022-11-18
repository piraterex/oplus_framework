.class public final Landroid/bluetooth/BluetoothLeBroadcastAssistant;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastAssistant.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeBroadcastAssistant"


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private blacklist mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothLeBroadcastAssistant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackMap:Ljava/util/Map;

    .line 310
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;

    const-class v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x1d

    const-string v5, "BluetoothLeBroadcastAssistant"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 326
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mContext:Landroid/content/Context;

    .line 327
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 328
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    .line 329
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 330
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCloseGuard:Landroid/util/CloseGuard;

    .line 331
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    return-object v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1000
    if-eqz p0, :cond_0

    .line 1001
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 995
    const-string v0, "BluetoothLeBroadcastAssistant"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method


# virtual methods
.method public whitelist addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 5
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceMetadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "isGroupOp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBroadcastSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 784
    const-string/jumbo v0, "sink cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 785
    const-string/jumbo v0, "sourceMetadata cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_3

    .line 789
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->isAtLeastOneCallbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 792
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 793
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const-string v1, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 794
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    goto :goto_0

    .line 799
    :catch_0
    move-exception v2

    .line 800
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

    .line 803
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 790
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All callbacks are unregistered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 347
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 336
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->close()V

    .line 340
    return-void
.end method

.method public whitelist getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
            ">;"
        }
    .end annotation

    .line 949
    const-string v0, "getAllSources()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 950
    const-string/jumbo v0, "sink cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 951
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 952
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastReceiveState;>;"
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 955
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 959
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 960
    :catch_0
    move-exception v3

    .line 961
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 6
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

    .line 424
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 426
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 428
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getConnectedDevices()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 433
    :catch_0
    move-exception v3

    .line 434
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 499
    const-string v0, "getConnectionPolicy()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 500
    const-string v0, "device cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 501
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 502
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 503
    .local v1, "defaultValue":I
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 504
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 508
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 509
    :catch_0
    move-exception v3

    .line 510
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 365
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v0, "sink cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 368
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 369
    .local v1, "defaultValue":I
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 370
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 375
    :catch_0
    move-exception v3

    .line 376
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
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

    .line 395
    const-string v0, "getDevicesMatchingConnectionStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v0, "states cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 398
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 400
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 405
    :catch_0
    move-exception v3

    .line 406
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getMaximumSourceCapacity(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 977
    const-string/jumbo v0, "sink cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 978
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 979
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 980
    .local v1, "defaultValue":I
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 981
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 985
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getMaximumSourceCapacity(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 986
    :catch_0
    move-exception v3

    .line 987
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isSearchInProgress()Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 698
    const-string/jumbo v0, "stopSearchingForSources:"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 699
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 700
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 701
    .local v1, "defaultValue":Z
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 702
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 707
    :catch_0
    move-exception v3

    .line 708
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist modifySource(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 5
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "updatedMetadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcastSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 858
    const-string/jumbo v0, "sink cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 859
    const-string/jumbo v0, "updatedMetadata cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 860
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_3

    .line 863
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->isAtLeastOneCallbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 867
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const-string v1, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 868
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 872
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->modifySource(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_0

    .line 873
    :catch_0
    move-exception v2

    .line 874
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

    .line 877
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 864
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All callbacks are unregistered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 539
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 540
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v0, "registerCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 543
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_0

    .line 544
    const-string v1, "BluetoothLeBroadcastAssistant"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-nez v1, :cond_1

    .line 548
    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    invoke-direct {v1, v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;-><init>(Landroid/bluetooth/IBluetoothLeBroadcastAssistant;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    .line 550
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->register(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    .line 552
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist removeSource(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBroadcastSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 911
    const-string/jumbo v0, "sink cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 912
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->isAtLeastOneCallbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 919
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const-string v1, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 920
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 922
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    goto :goto_0

    .line 925
    :catch_0
    move-exception v2

    .line 926
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

    .line 929
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 916
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All callbacks are unregistered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 461
    const-string/jumbo v0, "setConnectionPolicy()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 462
    const-string v0, "device cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 464
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 465
    .local v1, "defaultValue":Z
    const-string v2, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 466
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    const/16 v3, 0x64

    if-ne p2, v3, :cond_2

    .line 472
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 473
    :catch_0
    move-exception v3

    .line 474
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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist startSearchingForSources(Ljava/util/List;)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .line 627
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const-string/jumbo v0, "searchForBroadcastSources"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 628
    const-string v0, "filters can be empty, but not null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_3

    .line 632
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->isAtLeastOneCallbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 636
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const-string v1, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 637
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    goto :goto_0

    .line 642
    :catch_0
    move-exception v2

    .line 643
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

    .line 646
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 633
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All callbacks are unregistered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopSearchingForSources()V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 665
    const-string/jumbo v0, "stopSearchingForSources:"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_3

    .line 669
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->isAtLeastOneCallbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 673
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const-string v1, "BluetoothLeBroadcastAssistant"

    if-nez v0, :cond_0

    .line 674
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->stopSearchingForSources()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v2

    .line 680
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

    .line 683
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 670
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All callbacks are unregistered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 574
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 575
    const-string/jumbo v0, "unregisterCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 577
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_0

    .line 578
    const-string v1, "BluetoothLeBroadcastAssistant"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->unregister(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    goto :goto_0

    .line 582
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no callback was ever registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_2
    :goto_0
    return-void
.end method
