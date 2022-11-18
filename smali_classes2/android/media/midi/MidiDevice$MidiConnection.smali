.class public Landroid/media/midi/MidiDevice$MidiConnection;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MidiConnection"
.end annotation


# instance fields
.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final greylist-max-o mInputPortToken:Landroid/os/IBinder;

.field private greylist-max-o mIsClosed:Z

.field private final greylist-max-o mOutputPortToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/media/midi/MidiDevice;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/midi/MidiDevice;
    .param p2, "outputPortToken"    # Landroid/os/IBinder;
    .param p3, "inputPort"    # Landroid/media/midi/MidiInputPort;

    .line 66
    iput-object p1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->this$0:Landroid/media/midi/MidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    .line 67
    invoke-virtual {p3}, Landroid/media/midi/MidiInputPort;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 68
    invoke-virtual {p3}, Landroid/media/midi/MidiInputPort;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortToken:Landroid/os/IBinder;

    .line 69
    iput-object p2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mOutputPortToken:Landroid/os/IBinder;

    .line 70
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iget-object v2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V

    .line 82
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->this$0:Landroid/media/midi/MidiDevice;

    invoke-static {v1}, Landroid/media/midi/MidiDevice;->-$$Nest$fgetmDeviceServer(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mOutputPortToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in MidiConnection.close"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mIsClosed:Z

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice$MidiConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    throw v0
.end method
