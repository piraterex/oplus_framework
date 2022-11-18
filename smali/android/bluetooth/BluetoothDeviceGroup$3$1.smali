.class Landroid/bluetooth/BluetoothDeviceGroup$3$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothDeviceGroup$3;->onGroupClientAppRegistered(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

.field final synthetic blacklist val$appId:I

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDeviceGroup$3;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothDeviceGroup$3;

    .line 290
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iput p2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$status:I

    iput p3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$appId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 293
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iget-object v0, v0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object v0

    .line 294
    .local v0, "callback":Landroid/bluetooth/BluetoothGroupCallback;
    if-eqz v0, :cond_0

    .line 295
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$status:I

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$appId:I

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGroupCallback;->onGroupClientAppRegistered(II)V

    .line 297
    :cond_0
    return-void
.end method
