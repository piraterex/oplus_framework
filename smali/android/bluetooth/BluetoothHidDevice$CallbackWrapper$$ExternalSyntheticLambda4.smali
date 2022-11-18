.class public final synthetic Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onVirtualCableUnplug$6$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
