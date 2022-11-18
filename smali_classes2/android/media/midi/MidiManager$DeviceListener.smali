.class Landroid/media/midi/MidiManager$DeviceListener;
.super Landroid/media/midi/IMidiDeviceListener$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListener"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mTransport:I

.field final synthetic blacklist this$0:Landroid/media/midi/MidiManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V
    .locals 0
    .param p2, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "transport"    # I

    .line 118
    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener;->this$0:Landroid/media/midi/MidiManager;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceListener$Stub;-><init>()V

    .line 119
    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    .line 120
    iput-object p3, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 121
    iput p4, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    .line 122
    return-void
.end method

.method private blacklist shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z
    .locals 5
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 167
    iget v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 169
    :cond_1
    if-ne v0, v3, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 172
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid transport type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v2
.end method


# virtual methods
.method synthetic blacklist lambda$onDeviceAdded$0$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 129
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onDeviceRemoved$1$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 141
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onDeviceStatusChanged$2$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 1
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 152
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method

.method public greylist-max-o onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 126
    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 128
    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 138
    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    .line 146
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 2
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 150
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    .line 156
    :goto_0
    return-void
.end method
