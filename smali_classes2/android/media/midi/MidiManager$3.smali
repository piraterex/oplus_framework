.class Landroid/media/midi/MidiManager$3;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiManager;

.field final synthetic blacklist val$handlerF:Landroid/os/Handler;

.field final synthetic blacklist val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;

    .line 411
    iput-object p1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceOpened() server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "device":Landroid/media/midi/MidiDevice;
    if-eqz p1, :cond_0

    .line 419
    :try_start_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    .line 420
    .local v3, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    new-instance v8, Landroid/media/midi/MidiDevice;

    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v2}, Landroid/media/midi/MidiManager;->-$$Nest$fgetmService(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    move-result-object v5

    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v2}, Landroid/media/midi/MidiManager;->-$$Nest$fgetmToken(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    move-result-object v6

    move-object v2, v8

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 423
    .end local v3    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    .line 421
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "remote exception in getDeviceInfo()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3}, Landroid/media/midi/MidiManager;->-$$Nest$msendOpenDeviceResponse(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 426
    return-void
.end method
