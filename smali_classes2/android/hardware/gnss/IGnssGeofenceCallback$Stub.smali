.class public abstract Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_gnssGeofenceAddCb:I = 0x3

.field static final blacklist TRANSACTION_gnssGeofencePauseCb:I = 0x5

.field static final blacklist TRANSACTION_gnssGeofenceRemoveCb:I = 0x4

.field static final blacklist TRANSACTION_gnssGeofenceResumeCb:I = 0x6

.field static final blacklist TRANSACTION_gnssGeofenceStatusCb:I = 0x2

.field static final blacklist TRANSACTION_gnssGeofenceTransitionCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->markVintfStability()V

    .line 57
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofenceCallback;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssGeofenceCallback;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 76
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 81
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 82
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_0
    sparse-switch v7, :sswitch_data_0

    .line 104
    packed-switch v7, :pswitch_data_0

    .line 178
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 88
    :sswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v11

    .line 93
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return v11

    .line 99
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v11

    .line 168
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceResumeCb(II)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofencePauseCb(II)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceRemoveCb(II)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 135
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceAddCb(II)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_0

    .line 124
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/GnssLocation;

    .line 127
    .local v1, "_arg1":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_0

    .line 109
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/gnss/GnssLocation;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 111
    .local v12, "_arg0":I
    sget-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/gnss/GnssLocation;

    .line 113
    .local v13, "_arg1":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 115
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 116
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    nop

    .line 181
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/hardware/gnss/GnssLocation;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :goto_0
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
