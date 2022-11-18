.class Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    .line 4674
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;->this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothServiceDown()V
    .locals 1

    .line 4682
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;->this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->onBluetoothServiceDown()V

    .line 4683
    return-void
.end method

.method public blacklist onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 1
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .line 4677
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;->this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->onBluetoothServiceUp()V

    .line 4678
    return-void
.end method

.method public blacklist onBrEdrDown()V
    .locals 0

    .line 4686
    return-void
.end method
