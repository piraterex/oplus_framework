.class Landroid/bluetooth/BluetoothLeCallControl$3;
.super Landroid/os/Handler;
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
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeCallControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 888
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 891
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1b

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 900
    :pswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    goto :goto_0

    .line 893
    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 906
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
