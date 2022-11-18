.class public final synthetic Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    iput p2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;->f$2:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;->f$2:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onAcceptCall$0$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V

    return-void
.end method
