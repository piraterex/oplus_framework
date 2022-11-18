.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

.field final synthetic blacklist val$scanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 564
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 567
    const-string v0, "BluetoothLeScanner"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const-string/jumbo v1, "onScanResult() - handler run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-$$Nest$fgetmScanCallback(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 571
    return-void
.end method
