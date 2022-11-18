.class Landroid/bluetooth/BluetoothLeCallControl$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
.source "BluetoothLeCallControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeCallControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeCallControl;

    .line 868
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 872
    const-string v0, "BluetoothLeCallControl"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothLeCallControl;Landroid/bluetooth/IBluetoothLeCallControl;)V

    .line 875
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 876
    return-void
.end method

.method public blacklist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 881
    const-string v0, "BluetoothLeCallControl"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothLeCallControl;)V

    .line 884
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 885
    return-void
.end method
