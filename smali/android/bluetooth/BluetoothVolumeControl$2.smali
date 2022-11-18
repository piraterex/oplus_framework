.class Landroid/bluetooth/BluetoothVolumeControl$2;
.super Landroid/bluetooth/BluetoothProfileConnector;
.source "BluetoothVolumeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothVolumeControl;
    .param p2, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p3, "profileId"    # I
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$2;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/bluetooth/BluetoothProfileConnector;-><init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 141
    invoke-static {p1}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$2;->getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object p1

    return-object p1
.end method
