.class Landroid/bluetooth/BluetoothGatt$1$16;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onSubrateChange(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic blacklist val$contNum:I

.field final synthetic blacklist val$latency:I

.field final synthetic blacklist val$status:I

.field final synthetic blacklist val$subrateFactor:I

.field final synthetic blacklist val$timeout:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGatt$1;IIIII)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothGatt$1;

    .line 859
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$16;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$subrateFactor:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$latency:I

    iput p4, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$contNum:I

    iput p5, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$timeout:I

    iput p6, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 862
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$16;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    .line 863
    .local v0, "callback":Landroid/bluetooth/BluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 864
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$16;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$subrateFactor:I

    iget v4, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$latency:I

    iget v5, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$contNum:I

    iget v6, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$timeout:I

    iget v7, p0, Landroid/bluetooth/BluetoothGatt$1$16;->val$status:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/BluetoothGattCallback;->onSubrateChange(Landroid/bluetooth/BluetoothGatt;IIIII)V

    .line 867
    :cond_0
    return-void
.end method
