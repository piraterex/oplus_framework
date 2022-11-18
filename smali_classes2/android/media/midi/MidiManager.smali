.class public final Landroid/media/midi/MidiManager;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiManager$OnDeviceOpenedListener;,
        Landroid/media/midi/MidiManager$DeviceCallback;,
        Landroid/media/midi/MidiManager$DeviceListener;,
        Landroid/media/midi/MidiManager$Transport;
    }
.end annotation


# static fields
.field public static final greylist-max-o BLUETOOTH_MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.bluetoothmidiservice.BluetoothMidiService"

.field public static final greylist-max-o BLUETOOTH_MIDI_SERVICE_INTENT:Ljava/lang/String; = "android.media.midi.BluetoothMidiService"

.field public static final greylist-max-o BLUETOOTH_MIDI_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.bluetoothmidiservice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiManager"

.field public static final whitelist TRANSPORT_MIDI_BYTE_STREAM:I = 0x1

.field public static final whitelist TRANSPORT_UNIVERSAL_MIDI_PACKETS:I = 0x2


# instance fields
.field private greylist-max-o mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/media/midi/MidiManager$DeviceCallback;",
            "Landroid/media/midi/MidiManager$DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/media/midi/IMidiManager;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendOpenDeviceResponse(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/midi/IMidiManager;)V
    .locals 1
    .param p1, "service"    # Landroid/media/midi/IMidiManager;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    iput-object p1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    .line 225
    return-void
.end method

.method private greylist-max-o sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 348
    if-eqz p3, :cond_0

    .line 349
    new-instance v0, Landroid/media/midi/MidiManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/midi/MidiManager$1;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/media/midi/MidiDevice;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {p2, p1}, Landroid/media/midi/MidiManager$OnDeviceOpenedListener;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V

    .line 357
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist closeBluetoothDevice(Landroid/media/midi/MidiDevice;)V
    .locals 3
    .param p1, "midiDevice"    # Landroid/media/midi/MidiDevice;

    .line 439
    :try_start_0
    invoke-virtual {p1}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception closing BLE-MIDI device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public blacklist createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;
    .locals 15
    .param p1, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p2, "numOutputPorts"    # I
    .param p3, "inputPortNames"    # [Ljava/lang/String;
    .param p4, "outputPortNames"    # [Ljava/lang/String;
    .param p5, "properties"    # Landroid/os/Bundle;
    .param p6, "type"    # I
    .param p7, "defaultProtocol"    # I
    .param p8, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v1, p0

    move-object/from16 v2, p1

    .line 451
    :try_start_0
    new-instance v0, Landroid/media/midi/MidiDeviceServer;

    iget-object v3, v1, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v13, p2

    move-object/from16 v14, p8

    :try_start_1
    invoke-direct {v0, v3, v2, v13, v14}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .line 453
    .local v0, "server":Landroid/media/midi/MidiDeviceServer;
    iget-object v4, v1, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v5

    array-length v6, v2

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v4 .. v12}, Landroid/media/midi/IMidiManager;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    .line 456
    .local v3, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v3, :cond_0

    .line 457
    const-string v4, "MidiManager"

    const-string v5, "registerVirtualDevice failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    const/4 v4, 0x0

    return-object v4

    .line 460
    :cond_0
    return-object v0

    .line 461
    .end local v0    # "server":Landroid/media/midi/MidiDeviceServer;
    .end local v3    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v14, p8

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-interface {v0}, Landroid/media/midi/IMidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDevicesForTransport(I)Ljava/util/Set;
    .locals 2
    .param p1, "transport"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-interface {v0, p1}, Landroid/media/midi/IMidiManager;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 337
    .local v0, "devices":[Landroid/media/midi/MidiDeviceInfo;
    if-nez v0, :cond_0

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 340
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 341
    .end local v0    # "devices":[Landroid/media/midi/MidiDeviceInfo;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 407
    move-object v0, p2

    .line 408
    .local v0, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v1, p3

    .line 410
    .local v1, "handlerF":Landroid/os/Handler;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openBluetoothDevice() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MidiManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v2, Landroid/media/midi/MidiManager$3;

    invoke-direct {v2, p0, v0, v1}, Landroid/media/midi/MidiManager$3;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 430
    .local v2, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v3, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v4, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, p1, v2}, Landroid/media/midi/IMidiManager;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catch_0
    move-exception v3

    .line 432
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public whitelist openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 371
    move-object v0, p1

    .line 372
    .local v0, "deviceInfoF":Landroid/media/midi/MidiDeviceInfo;
    move-object v1, p2

    .line 373
    .local v1, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v2, p3

    .line 375
    .local v2, "handlerF":Landroid/os/Handler;
    new-instance v3, Landroid/media/midi/MidiManager$2;

    invoke-direct {v3, p0, v0, v1, v2}, Landroid/media/midi/MidiManager$2;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 389
    .local v3, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v5, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, p1, v3}, Landroid/media/midi/IMidiManager;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_0
    move-exception v4

    .line 391
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public whitelist registerDeviceCallback(ILjava/util/concurrent/Executor;Landroid/media/midi/MidiManager$DeviceCallback;)V
    .locals 3
    .param p1, "transport"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    .line 281
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Landroid/media/midi/MidiManager$DeviceListener;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V

    .line 284
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    nop

    .line 288
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-eqz p2, :cond_0

    .line 250
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/media/midi/MidiManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/media/midi/MidiManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object v0, v1

    .line 252
    :cond_0
    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V

    .line 255
    .local v1, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 259
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist unregisterDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    .line 297
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager$DeviceListener;

    .line 298
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/midi/IMidiManager;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 305
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
