.class Landroid/bluetooth/BluetoothSyncHelper$2;
.super Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;
.source "BluetoothSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothSyncHelper;->wrap(Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;Landroid/os/Handler;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothSyncHelper;

.field final synthetic blacklist val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/os/Handler;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothSyncHelper;

    .line 416
    iput-object p1, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->this$0:Landroid/bluetooth/BluetoothSyncHelper;

    iput-object p2, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 444
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$3;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 487
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$6;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p3, "broadcastSourceChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$2;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$2;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;ILandroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 457
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$4;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public blacklist onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 470
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$5;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method public blacklist onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "scanres"    # Landroid/bluetooth/le/ScanResult;

    .line 418
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$1;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothSyncHelper$2$1;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method
