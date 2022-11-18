.class Landroid/bluetooth/BluetoothSap$1;
.super Landroid/bluetooth/BluetoothProfileConnector;
.source "BluetoothSap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothSap;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothSap;
    .param p2, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p3, "profileId"    # I
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/bluetooth/BluetoothProfileConnector;-><init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 123
    invoke-static {p1}, Landroid/bluetooth/IBluetoothSap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap$1;->getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;

    move-result-object p1

    return-object p1
.end method
