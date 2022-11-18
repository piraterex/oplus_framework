.class Landroid/bluetooth/le/BluetoothLeAdvertiser$1;
.super Landroid/bluetooth/le/AdvertisingSetCallback;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic blacklist val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic blacklist val$settings:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 183
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertisingSetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .locals 2
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "enabled"    # Z
    .param p3, "status"    # I

    .line 199
    if-eqz p2, :cond_0

    .line 200
    const-string v0, "BluetoothLeAdvertiser"

    const-string v1, "Legacy advertiser should be only disabled on timeout, but was enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 206
    return-void
.end method

.method public whitelist onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V
    .locals 3
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 187
    if-eqz p3, :cond_0

    .line 188
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-static {v0, v1, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$mpostStartFailure(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$mpostStartSuccess(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 193
    return-void
.end method
