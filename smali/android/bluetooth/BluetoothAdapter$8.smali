.class Landroid/bluetooth/BluetoothAdapter$8;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic blacklist val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic blacklist val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    .line 4769
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$8;->this$0:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$serviceUuids:[Ljava/util/UUID;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 8
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 4772
    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 4774
    const-string v1, "LE Scan has already started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    return-void

    .line 4777
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    .line 4778
    .local v1, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v1, :cond_1

    .line 4779
    return-void

    .line 4781
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$serviceUuids:[Ljava/util/UUID;

    if-eqz v2, :cond_4

    .line 4782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4783
    .local v2, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$serviceUuids:[Ljava/util/UUID;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 4784
    .local v6, "uuid":Ljava/util/UUID;
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4783
    .end local v6    # "uuid":Ljava/util/UUID;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4786
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v3

    .line 4787
    .local v3, "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4789
    :cond_3
    const-string/jumbo v4, "uuids does not match"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    return-void

    .line 4794
    .end local v2    # "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    .line 4795
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    .line 4794
    invoke-interface {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 4796
    return-void
.end method
