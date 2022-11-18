.class public abstract Landroid/hardware/usb/IUsbSerialReader$Stub;
.super Landroid/os/Binder;
.source "IUsbSerialReader.java"

# interfaces
.implements Landroid/hardware/usb/IUsbSerialReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbSerialReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbSerialReader$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSerial:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "android.hardware.usb.IUsbSerialReader"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbSerialReader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbSerialReader;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "android.hardware.usb.IUsbSerialReader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbSerialReader;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbSerialReader;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbSerialReader$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbSerialReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 51
    packed-switch p0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 55
    :pswitch_0
    const-string v0, "getSerial"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 66
    invoke-static {p1}, Landroid/hardware/usb/IUsbSerialReader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "android.hardware.usb.IUsbSerialReader"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 82
    packed-switch p1, :pswitch_data_1

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 87
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbSerialReader$Stub;->getSerial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    nop

    .line 99
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
