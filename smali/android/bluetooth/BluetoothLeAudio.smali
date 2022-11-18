.class public final Landroid/bluetooth/BluetoothLeAudio;
.super Ljava/lang/Object;
.source "BluetoothLeAudio.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudio$AudioLocation;,
        Landroid/bluetooth/BluetoothLeAudio$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_LE_AUDIO_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_LE_AUDIO_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

.field public static final whitelist AUDIO_LOCATION_BACK_CENTER:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BACK_LEFT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BACK_RIGHT:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BOTTOM_FRONT_CENTER:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BOTTOM_FRONT_LEFT:I = 0x400000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BOTTOM_FRONT_RIGHT:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_CENTER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_LEFT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_LEFT_OF_CENTER:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_LEFT_WIDE:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_RIGHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_RIGHT_OF_CENTER:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_RIGHT_WIDE:I = 0x2000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_INVALID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_LEFT_SURROUND:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_LOW_FREQ_EFFECTS_ONE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_LOW_FREQ_EFFECTS_TWO:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_RIGHT_SURROUND:I = 0x8000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_SIDE_LEFT:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_SIDE_RIGHT:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_BACK_CENTER:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_BACK_LEFT:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_BACK_RIGHT:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_CENTER:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_FRONT_CENTER:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_FRONT_LEFT:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_FRONT_RIGHT:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_SIDE_LEFT:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_SIDE_RIGHT:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CONTEXT_TYPE_ATTENTION_SEEKING:I = 0x10

.field public static final blacklist CONTEXT_TYPE_COMMUNICATION:I = 0x2

.field public static final blacklist CONTEXT_TYPE_EMERGENCY_ALERT:I = 0x80

.field public static final blacklist CONTEXT_TYPE_GAME:I = 0x800

.field public static final blacklist CONTEXT_TYPE_IMMEDIATE_ALERT:I = 0x20

.field public static final blacklist CONTEXT_TYPE_INSTRUCTIONAL:I = 0x8

.field public static final blacklist CONTEXT_TYPE_LIVE:I = 0x400

.field public static final blacklist CONTEXT_TYPE_MAN_MACHINE:I = 0x40

.field public static final blacklist CONTEXT_TYPE_MEDIA:I = 0x4

.field public static final blacklist CONTEXT_TYPE_RINGTONE:I = 0x100

.field public static final blacklist CONTEXT_TYPE_TV:I = 0x200

.field public static final blacklist CONTEXT_TYPE_UNSPECIFIED:I = 0x1

.field private static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_LE_AUDIO_AVAILABLE_CONTEXTS:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_AVAILABLE_CONTEXTS"

.field public static final blacklist EXTRA_LE_AUDIO_DIRECTION:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_DIRECTION"

.field public static final whitelist EXTRA_LE_AUDIO_GROUP_ID:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_GROUP_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_LE_AUDIO_SINK_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_SINK_LOCATION"

.field public static final blacklist EXTRA_LE_AUDIO_SOURCE_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_SOURCE_LOCATION"

.field public static final whitelist GROUP_ID_INVALID:I = -0x1

.field public static final blacklist GROUP_STATUS_ACTIVE:I = 0x1

.field public static final blacklist GROUP_STATUS_INACTIVE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeAudio"

.field private static final blacklist VDBG:Z = true


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeAudio$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothLeAudio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudioCallback;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetService(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudio;
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    .line 140
    new-instance v0, Landroid/bluetooth/BluetoothLeAudio$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeAudio$1;-><init>(Landroid/bluetooth/BluetoothLeAudio;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    .line 631
    new-instance v0, Landroid/bluetooth/BluetoothLeAudio$2;

    const-class v1, Landroid/bluetooth/IBluetoothLeAudio;

    .line 633
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x16

    const-string v5, "BluetoothLeAudio"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothLeAudio$2;-><init>(Landroid/bluetooth/BluetoothLeAudio;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 641
    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$3;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothLeAudio$3;-><init>(Landroid/bluetooth/BluetoothLeAudio;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 677
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 678
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 679
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 681
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 682
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 684
    :try_start_0
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    goto :goto_0

    .line 685
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 690
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/CloseGuard;

    invoke-direct {v1}, Landroid/util/CloseGuard;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mCloseGuard:Landroid/util/CloseGuard;

    .line 691
    const-string v2, "close"

    invoke-virtual {v1, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeAudio;
    .locals 1

    .line 711
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothLeAudio;

    return-object v0
.end method

.method private blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1366
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1368
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1369
    :cond_1
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1373
    const-string v0, "BluetoothLeAudio"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 1351
    packed-switch p0, :pswitch_data_0

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1359
    :pswitch_0
    const-string v0, "disconnecting"

    return-object v0

    .line 1357
    :pswitch_1
    const-string v0, "connected"

    return-object v0

    .line 1355
    :pswitch_2
    const-string v0, "connecting"

    return-object v0

    .line 1353
    :pswitch_3
    const-string v0, "disconnected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 698
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 699
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 701
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_0

    .line 702
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeAudio"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 708
    return-void
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 739
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 741
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 742
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 743
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 747
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 748
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 749
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

    .line 750
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 751
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

    .line 754
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 783
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 784
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 785
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 786
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 787
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 791
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 792
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 793
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

    .line 794
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 795
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

    .line 798
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 715
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudio;->close()V

    .line 719
    return-void
.end method

.method public blacklist getActiveDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1086
    const-string v0, "getActiveDevice()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1088
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1090
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1095
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1096
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getActiveDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1097
    nop

    .line 1098
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1097
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1100
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v3

    .line 1101
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 1104
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1248
    const-string v0, "getAudioLocation()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1249
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1250
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1251
    .local v1, "defaultLocation":I
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1252
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1256
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1257
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1258
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
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1259
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    .line 1260
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

    .line 1263
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    .locals 7
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1392
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodecStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeAudio"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 1396
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v3, 0x0

    .line 1398
    .local v3, "defaultValue":Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    if-nez v1, :cond_0

    .line 1399
    const-string v0, "Proxy not attached to service"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1404
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1405
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothLeAudioCodecStatus;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getCodecStatus(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1406
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1409
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothLeAudioCodecStatus;>;"
    :catch_0
    move-exception v4

    .line 1410
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

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1407
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1408
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

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v3
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

    .line 849
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 850
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 851
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 853
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 859
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 860
    nop

    .line 861
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 860
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 863
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v3

    .line 864
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 867
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectedGroupLeadDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 6
    .param p1, "groupId"    # I

    .line 821
    const-string v0, "getConnectedGroupLeadDevice()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 822
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 823
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 824
    .local v1, "defaultValue":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 825
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 830
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 831
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectedGroupLeadDevice(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 832
    nop

    .line 833
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 832
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 835
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v3

    .line 836
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 839
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1324
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1326
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1327
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1328
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1332
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1333
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1334
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
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1335
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    .line 1336
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

    .line 1339
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 907
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 908
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 909
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 910
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 911
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 915
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 916
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 917
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
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 918
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    .line 919
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

    .line 922
    .end local v4    # "e":Ljava/lang/Exception;
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

    .line 878
    const-string v0, "getDevicesMatchingStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 880
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 882
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 888
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 889
    nop

    .line 890
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 889
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 892
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_0
    move-exception v3

    .line 893
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 896
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getGroupId(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1118
    const-string v0, "getGroupId()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1120
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, -0x1

    .line 1121
    .local v1, "defaultValue":I
    const/4 v2, -0x1

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1122
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1126
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1127
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1128
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
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1129
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    .line 1130
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

    .line 1133
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist groupAddNode(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "group_id"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1178
    const-string v0, "groupAddNode()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1179
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1180
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1181
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1182
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1186
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1187
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->groupAddNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1188
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

    .line 1189
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 1190
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

    .line 1193
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "group_id"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1210
    const-string v0, "groupRemoveNode()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1211
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1212
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1213
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1214
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1218
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1219
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1220
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

    .line 1221
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 1222
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

    .line 1225
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist isNextAutoSwtichActiveDevice()Z
    .locals 4

    .line 1470
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1471
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1472
    .local v1, "defaultValue":Z
    if-nez v0, :cond_0

    .line 1473
    const-string v2, "BluetoothLeAudio"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1479
    const/4 v2, 0x0

    return v2

    .line 1476
    :cond_0
    const-class v2, Landroid/bluetooth/IBluetoothLeAudioSocExt;

    invoke-static {v2}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLeAudioSocExt;

    .line 1477
    .local v2, "bluetoothLeAudioExt":Landroid/bluetooth/IBluetoothLeAudioSocExt;
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v0, v3}, Landroid/bluetooth/IBluetoothLeAudioSocExt;->isNextAutoSwtichActiveDevice(Landroid/bluetooth/IBluetoothLeAudio;Landroid/content/AttributionSource;)Z

    move-result v3

    return v3
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 952
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 953
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 954
    const-string/jumbo v0, "registerCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 958
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 967
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 968
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_1

    .line 970
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 971
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 972
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeAudio;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    throw v2

    .line 974
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeAudio;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    :catch_1
    move-exception v1

    .line 975
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothLeAudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    nop

    .line 982
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 985
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    monitor-exit v0

    .line 987
    return-void

    .line 983
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeAudio;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    throw v1

    .line 986
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeAudio;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActiveDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1058
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1059
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1060
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1061
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1065
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1066
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1067
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

    .line 1068
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 1069
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

    .line 1072
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist setCodecConfigPreference(ILandroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "inputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .param p3, "outputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCodecConfigPreference("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeAudio"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v0, " inputCodecConfig shall not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1439
    const-string v0, " outputCodecConfig shall not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1441
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1443
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v0, :cond_1

    .line 1447
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v2}, Landroid/bluetooth/IBluetoothLeAudio;->setCodecConfigPreference(ILandroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    goto :goto_0

    .line 1451
    :catch_0
    move-exception v2

    .line 1452
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

    .line 1453
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1456
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1446
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service is unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1286
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1288
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 1289
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1290
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1292
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    const/16 v4, 0x64

    if-ne p2, v4, :cond_2

    .line 1296
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1297
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1298
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

    .line 1299
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 1300
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

    .line 1303
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist setVolume(I)V
    .locals 5
    .param p1, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolume(vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1150
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1151
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const-string v1, "BluetoothLeAudio"

    if-nez v0, :cond_0

    .line 1152
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 1157
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3, v2}, Landroid/bluetooth/IBluetoothLeAudio;->setVolume(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1158
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    nop

    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 1159
    :catch_0
    move-exception v2

    .line 1160
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 1163
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1008
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1009
    const-string/jumbo v0, "unregisterCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 1012
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1015
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1021
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v0, :cond_0

    .line 1022
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 1023
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1024
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1028
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1026
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v1, "BluetoothLeAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

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

    .line 1032
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeAudio;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    throw v1

    .line 1015
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeAudio;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
