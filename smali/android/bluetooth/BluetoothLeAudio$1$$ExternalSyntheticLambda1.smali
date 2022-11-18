.class public final synthetic Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeAudio$Callback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/BluetoothLeAudioCodecStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeAudio$Callback;ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothLeAudio$Callback;

    iput p2, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;->f$2:Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothLeAudio$Callback;

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;->f$2:Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothLeAudio$1;->lambda$onCodecConfigChanged$0(Landroid/bluetooth/BluetoothLeAudio$Callback;ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    return-void
.end method
