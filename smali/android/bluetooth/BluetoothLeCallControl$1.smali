.class Landroid/bluetooth/BluetoothLeCallControl$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
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

    .line 400
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$1;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .locals 2
    .param p1, "up"    # Z

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChange: up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-nez p1, :cond_0

    .line 405
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$1;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothLeCallControl;)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$1;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$mdoBind(Landroid/bluetooth/BluetoothLeCallControl;)Z

    .line 409
    :goto_0
    return-void
.end method
