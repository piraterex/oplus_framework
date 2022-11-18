.class Landroid/bluetooth/BluetoothDeviceGroup$3$3;
.super Ljava/lang/Object;
.source "BluetoothDeviceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothDeviceGroup$3;->onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

.field final synthetic blacklist val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic blacklist val$groupId:I

.field final synthetic blacklist val$uuid:Landroid/os/ParcelUuid;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDeviceGroup$3;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothDeviceGroup$3;

    .line 336
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iput p2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->val$groupId:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->val$uuid:Landroid/os/ParcelUuid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 339
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iget-object v0, v0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object v0

    .line 340
    .local v0, "callback":Landroid/bluetooth/BluetoothGroupCallback;
    if-eqz v0, :cond_0

    .line 341
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->val$groupId:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$3;->val$uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGroupCallback;->onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 343
    :cond_0
    return-void
.end method
