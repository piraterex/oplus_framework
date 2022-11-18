.class Landroid/bluetooth/BluetoothHeadset$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;

    .line 1555
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1558
    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1561
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)V

    .line 1562
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1566
    nop

    .line 1567
    return-void

    .line 1565
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1566
    throw v0
.end method

.method public blacklist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 1571
    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1574
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1578
    nop

    .line 1579
    return-void

    .line 1577
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1578
    throw v0
.end method
