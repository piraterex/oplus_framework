.class public final synthetic Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter$1;->lambda$onMetadataChanged$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
