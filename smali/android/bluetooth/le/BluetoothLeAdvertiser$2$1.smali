.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingSetStarted(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic blacklist val$advertiserId:I

.field final synthetic blacklist val$status:I

.field final synthetic blacklist val$txPower:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 613
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 616
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 618
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-void

    .line 622
    :cond_0
    new-instance v0, Landroid/bluetooth/le/AdvertisingSet;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v2, v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmBluetoothManager(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v3, v3, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/AdvertisingSet;-><init>(ILandroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V

    .line 624
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 626
    return-void
.end method
