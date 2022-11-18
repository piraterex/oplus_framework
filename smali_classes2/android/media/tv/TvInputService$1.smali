.class Landroid/media/tv/TvInputService$1;
.super Landroid/media/tv/ITvInputService$Stub;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;

    .line 157
    iput-object p1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 193
    if-nez p1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 197
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 198
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 199
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 202
    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/String;

    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v0, "TvInputService"

    const-string v1, "Creating session without input channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    if-nez p2, :cond_1

    .line 179
    return-void

    .line 181
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 182
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 183
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 184
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 185
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method

.method public blacklist getAvailableExtensionInterfaceNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService;->getAvailableExtensionInterfaceNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 221
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public blacklist notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 227
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method public blacklist notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 233
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return-void
.end method

.method public blacklist notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 239
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    return-void
.end method

.method public blacklist notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 245
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 170
    :cond_0
    return-void
.end method
