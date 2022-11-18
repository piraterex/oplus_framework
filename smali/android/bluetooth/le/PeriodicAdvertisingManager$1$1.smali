.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic blacklist val$advertisingSid:I

.field final synthetic blacklist val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic blacklist val$skip:I

.field final synthetic blacklist val$status:I

.field final synthetic blacklist val$syncHandle:I

.field final synthetic blacklist val$timeout:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;ILandroid/bluetooth/BluetoothDevice;IIII)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    .line 311
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$syncHandle:I

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$advertisingSid:I

    iput p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$skip:I

    iput p6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$timeout:I

    iput p7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 314
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v1, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$syncHandle:I

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$advertisingSid:I

    iget v5, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$skip:I

    iget v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$timeout:I

    iget v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 318
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v1, v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    return-void
.end method
