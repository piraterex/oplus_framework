.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2;
.super Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic blacklist val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 610
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAdvertisingDataSet(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 667
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 674
    return-void
.end method

.method public blacklist onAdvertisingEnabled(IZI)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "enabled"    # Z
    .param p3, "status"    # I

    .line 656
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    return-void
.end method

.method public blacklist onAdvertisingParametersUpdated(III)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 689
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void
.end method

.method public blacklist onAdvertisingSetStarted(III)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 613
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    return-void
.end method

.method public blacklist onAdvertisingSetStopped(I)V
    .locals 2
    .param p1, "advertiserId"    # I

    .line 643
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method

.method public blacklist onOwnAddressRead(IILjava/lang/String;)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;

    .line 632
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method public blacklist onPeriodicAdvertisingDataSet(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 711
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    return-void
.end method

.method public blacklist onPeriodicAdvertisingEnabled(IZI)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .line 722
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$10;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$10;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method

.method public blacklist onPeriodicAdvertisingParametersUpdated(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 700
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 707
    return-void
.end method

.method public blacklist onScanResponseDataSet(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 678
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method
