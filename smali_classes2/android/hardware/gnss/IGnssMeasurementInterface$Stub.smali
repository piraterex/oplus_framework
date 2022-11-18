.class public abstract Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;
.super Landroid/os/Binder;
.source "IGnssMeasurementInterface.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssMeasurementInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssMeasurementInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setCallbackWithOptions:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->markVintfStability()V

    .line 48
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/gnss/IGnssMeasurementInterface;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssMeasurementInterface;

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 67
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 72
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 95
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 79
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 84
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v1

    .line 90
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 119
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementCallback;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    sget-object v3, Landroid/hardware/gnss/IGnssMeasurementInterface$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/IGnssMeasurementInterface$Options;

    .line 122
    .local v3, "_arg1":Landroid/hardware/gnss/IGnssMeasurementInterface$Options;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->setCallbackWithOptions(Landroid/hardware/gnss/IGnssMeasurementCallback;Landroid/hardware/gnss/IGnssMeasurementInterface$Options;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    goto :goto_0

    .line 112
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    .end local v3    # "_arg1":Landroid/hardware/gnss/IGnssMeasurementInterface$Options;
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->close()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementCallback;

    move-result-object v2

    .line 102
    .restart local v2    # "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 104
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 105
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->setCallback(Landroid/hardware/gnss/IGnssMeasurementCallback;ZZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    nop

    .line 132
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
