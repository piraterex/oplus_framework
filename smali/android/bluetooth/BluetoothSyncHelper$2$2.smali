.class Landroid/bluetooth/BluetoothSyncHelper$2$2;
.super Ljava/lang/Object;
.source "BluetoothSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothSyncHelper$2;->onBleBroadcastAudioSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

.field final synthetic blacklist val$broadcastSourceChannels:Ljava/util/List;

.field final synthetic blacklist val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSyncHelper$2;ILandroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothSyncHelper$2;

    .line 431
    iput-object p1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

    iput p2, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$status:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$broadcastSourceChannels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onBleBroadcastSourceSelected for status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

    iget-object v0, v0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$status:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothSyncHelper$2$2;->val$broadcastSourceChannels:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;->onBleBroadcastSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    .line 438
    return-void
.end method
