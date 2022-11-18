.class public final synthetic Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$7;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$7;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$7;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;->lambda$onBluetoothServiceUp$0$android-bluetooth-BluetoothAdapter$7(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    return-void
.end method
