.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

.field final synthetic blacklist val$onFound:Z

.field final synthetic blacklist val$scanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 601
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    iput-boolean p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$onFound:Z

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 604
    iget-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$onFound:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-$$Nest$fgetmScanCallback(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-$$Nest$fgetmScanCallback(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 611
    :goto_0
    return-void
.end method
