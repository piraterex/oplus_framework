.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onPeriodicAdvertisingParametersUpdated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic blacklist val$advertiserId:I

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 700
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->val$advertiserId:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 703
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->val$advertiserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 704
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;->val$status:I

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/le/AdvertisingSetCallback;->onPeriodicAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;I)V

    .line 705
    return-void
.end method
