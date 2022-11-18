.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onOwnAddressRead(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic blacklist val$address:Ljava/lang/String;

.field final synthetic blacklist val$addressType:I

.field final synthetic blacklist val$advertiserId:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 632
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->val$advertiserId:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->val$addressType:I

    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 635
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->val$advertiserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 636
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->val$addressType:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onOwnAddressRead(Landroid/bluetooth/le/AdvertisingSet;ILjava/lang/String;)V

    .line 637
    return-void
.end method
