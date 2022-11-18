.class public final synthetic Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient$Callback;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothHapClient$Callback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothHapClient$Callback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothHapClient$1;->lambda$onSetPresetNameFailed$4(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
