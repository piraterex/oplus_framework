.class Landroid/bluetooth/BluetoothDeviceGroup$3;
.super Landroid/bluetooth/IBluetoothGroupCallback$Stub;
.source "BluetoothDeviceGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothDeviceGroup;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDeviceGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothDeviceGroup;

    .line 276
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionStateChanged(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectionStateChanged() - state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$3$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceGroup$3$2;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public blacklist onExclusiveAccessAvailable(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExclusiveAccessAvailable() - appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$3$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceGroup$3$7;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public blacklist onExclusiveAccessChanged(IIILjava/util/List;)V
    .locals 8
    .param p1, "groupId"    # I
    .param p2, "value"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 387
    .local p4, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExclusiveAccessChanged() - appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accessStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v7, Landroid/bluetooth/BluetoothDeviceGroup$3$6;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothDeviceGroup$3$6;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;IIILjava/util/List;)V

    invoke-static {v0, v7}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public blacklist onExclusiveAccessStatusFetched(II)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "accessValue"    # I

    .line 405
    return-void
.end method

.method public blacklist onGroupClientAppRegistered(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "appId"    # I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupClientAppRegistered() - status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fputmAppRegistered(Landroid/bluetooth/BluetoothDeviceGroup;Z)V

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fputmAppId(Landroid/bluetooth/BluetoothDeviceGroup;I)V

    .line 290
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$3$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceGroup$3$1;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public blacklist onGroupClientAppUnregistered(I)V
    .locals 2
    .param p1, "status"    # I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupClientAppUnregistered() - status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public blacklist onGroupDeviceFound(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupDeviceFound() - appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$3$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceGroup$3$5;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public blacklist onGroupDiscoveryStatusChanged(III)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "status"    # I
    .param p3, "reason"    # I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupDiscoveryStatusChanged() - appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$3$4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothDeviceGroup$3$4;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public blacklist onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewGroupFound() - appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Including service UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v1, "BluetoothDeviceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$3$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothDeviceGroup$3$3;-><init>(Landroid/bluetooth/BluetoothDeviceGroup$3;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method
