.class Landroid/bluetooth/le/BluetoothLeAdvertiser$4;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic blacklist val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic blacklist val$error:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 746
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 749
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;->val$error:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 750
    return-void
.end method
