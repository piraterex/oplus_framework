.class public abstract Landroid/hardware/radio/data/IRadioDataIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioDataIndication.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioDataIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dataCallListChanged:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_keepaliveStatus:I = 0x2

.field static final blacklist TRANSACTION_pcoData:I = 0x3

.field static final blacklist TRANSACTION_slicingConfigChanged:I = 0x5

.field static final blacklist TRANSACTION_unthrottleApn:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioDataIndication;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioDataIndication;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/hardware/radio/data/IRadioDataIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 72
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

    .line 76
    sget-object v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 84
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 89
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v1

    .line 95
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/data/SlicingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/SlicingConfig;

    .line 148
    .local v3, "_arg1":Landroid/hardware/radio/data/SlicingConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->slicingConfigChanged(ILandroid/hardware/radio/data/SlicingConfig;)V

    .line 150
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/data/SlicingConfig;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/DataProfileInfo;

    .line 138
    .local v3, "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->unthrottleApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    .line 140
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/data/PcoDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/PcoDataInfo;

    .line 128
    .local v3, "_arg1":Landroid/hardware/radio/data/PcoDataInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->pcoData(ILandroid/hardware/radio/data/PcoDataInfo;)V

    .line 130
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/data/PcoDataInfo;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/data/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/KeepaliveStatus;

    .line 118
    .local v3, "_arg1":Landroid/hardware/radio/data/KeepaliveStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/data/KeepaliveStatus;)V

    .line 120
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/data/KeepaliveStatus;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/data/SetupDataCallResult;

    .line 108
    .local v3, "_arg1":[Landroid/hardware/radio/data/SetupDataCallResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->dataCallListChanged(I[Landroid/hardware/radio/data/SetupDataCallResult;)V

    .line 110
    nop

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/data/SetupDataCallResult;
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
