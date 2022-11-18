.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->onBatchScanResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

.field final synthetic blacklist val$results:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 579
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 582
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-$$Nest$fgetmScanCallback(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;->val$results:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 583
    return-void
.end method
