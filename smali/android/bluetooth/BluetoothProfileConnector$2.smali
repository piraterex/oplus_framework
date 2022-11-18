.class Landroid/bluetooth/BluetoothProfileConnector$2;
.super Ljava/lang/Object;
.source "BluetoothProfileConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothProfileConnector;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothProfileConnector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothProfileConnector;

    .line 92
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector$2;, "Landroid/bluetooth/BluetoothProfileConnector$2;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 94
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector$2;, "Landroid/bluetooth/BluetoothProfileConnector$2;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mlogDebug(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothProfileConnector;->getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmProfileId(Landroid/bluetooth/BluetoothProfileConnector;)I

    move-result v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v2}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmProfileProxy(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 100
    :cond_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 103
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector$2;, "Landroid/bluetooth/BluetoothProfileConnector$2;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mlogDebug(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothProfileConnector;)V

    .line 105
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$fgetmProfileId(Landroid/bluetooth/BluetoothProfileConnector;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 108
    :cond_0
    return-void
.end method
