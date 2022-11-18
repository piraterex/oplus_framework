.class public abstract Landroid/hardware/gnss/IGnssBatchingCallback$Stub;
.super Landroid/os/Binder;
.source "IGnssBatchingCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssBatchingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssBatchingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssBatchingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_gnssLocationBatchCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->markVintfStability()V

    .line 42
    sget-object v0, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatchingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/gnss/IGnssBatchingCallback;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssBatchingCallback;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/hardware/gnss/IGnssBatchingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    sget-object v0, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 78
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v1

    .line 84
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 94
    :pswitch_0
    sget-object v2, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/GnssLocation;

    .line 95
    .local v2, "_arg0":[Landroid/hardware/gnss/GnssLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->gnssLocationBatchCb([Landroid/hardware/gnss/GnssLocation;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    nop

    .line 105
    .end local v2    # "_arg0":[Landroid/hardware/gnss/GnssLocation;
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
