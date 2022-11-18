.class public abstract Landroid/hardware/tv/tuner/IDescrambler$Stub;
.super Landroid/os/Binder;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDescrambler$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addPid:I = 0x3

.field static final blacklist TRANSACTION_close:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_removePid:I = 0x4

.field static final blacklist TRANSACTION_setDemuxSource:I = 0x1

.field static final blacklist TRANSACTION_setKeyToken:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->markVintfStability()V

    .line 54
    sget-object v0, Landroid/hardware/tv/tuner/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDescrambler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Landroid/hardware/tv/tuner/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDescrambler;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IDescrambler;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/hardware/tv/tuner/IDescrambler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
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

    .line 77
    sget-object v0, Landroid/hardware/tv/tuner/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 90
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v1

    .line 96
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->close()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_0

    .line 135
    :pswitch_1
    sget-object v2, Landroid/hardware/tv/tuner/DemuxPid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxPid;

    .line 137
    .local v2, "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v3

    .line 138
    .local v3, "_arg1":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->removePid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    .end local v3    # "_arg1":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_2
    sget-object v2, Landroid/hardware/tv/tuner/DemuxPid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxPid;

    .line 126
    .restart local v2    # "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg1":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->addPid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    .end local v3    # "_arg1":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 116
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->setKeyToken([B)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->setDemuxSource(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 154
    .end local v2    # "_arg0":I
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
