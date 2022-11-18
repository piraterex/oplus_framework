.class Landroid/bluetooth/BluetoothProfileConnector$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothProfileConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothProfileConnector;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothProfileConnector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothProfileConnector;

    .line 58
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector$1;, "Landroid/bluetooth/BluetoothProfileConnector$1;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector$1;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .locals 1
    .param p1, "up"    # Z

    .line 60
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector$1;, "Landroid/bluetooth/BluetoothProfileConnector$1;"
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$1;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mdoBind(Landroid/bluetooth/BluetoothProfileConnector;)Z

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$1;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothProfileConnector;)V

    .line 65
    :goto_0
    return-void
.end method
