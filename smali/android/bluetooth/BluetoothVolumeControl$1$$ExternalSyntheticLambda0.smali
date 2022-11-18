.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothVolumeControl$Callback;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothVolumeControl$1;->lambda$onVolumeOffsetChanged$0(Landroid/bluetooth/BluetoothVolumeControl$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
