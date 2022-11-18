.class Landroid/bluetooth/BluetoothLeBroadcast$1;
.super Landroid/bluetooth/BluetoothProfileConnector;
.source "BluetoothLeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeBroadcast;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcast;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeBroadcast;
    .param p2, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p3, "profileId"    # I
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/bluetooth/BluetoothProfileConnector;-><init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudio;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 72
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$1;->getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object p1

    return-object p1
.end method
