.class Landroid/bluetooth/BluetoothSyncHelper$2$6;
.super Ljava/lang/Object;
.source "BluetoothSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothSyncHelper$2;->onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

.field final synthetic blacklist val$rcvr:Landroid/bluetooth/BluetoothDevice;

.field final synthetic blacklist val$srcId:B

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothSyncHelper$2;

    .line 487
    iput-object p1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

    iput-object p2, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$rcvr:Landroid/bluetooth/BluetoothDevice;

    iput-byte p3, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$srcId:B

    iput p4, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onBleBroadcastAudioSourceRemoved for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$rcvr:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "srcId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$srcId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

    iget-object v0, v0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$rcvr:Landroid/bluetooth/BluetoothDevice;

    iget-byte v2, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$srcId:B

    iget v3, p0, Landroid/bluetooth/BluetoothSyncHelper$2$6;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;->onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V

    .line 495
    return-void
.end method
