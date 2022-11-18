.class public abstract Landroid/hardware/gnss/IGnssGeofence$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofence.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGeofence:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_pauseGeofence:I = 0x3

.field static final blacklist TRANSACTION_removeGeofence:I = 0x5

.field static final blacklist TRANSACTION_resumeGeofence:I = 0x4

.field static final blacklist TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->markVintfStability()V

    .line 54
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofence;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofence;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssGeofence;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
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
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p3

    sget-object v15, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 78
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 79
    move-object/from16 v10, p2

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    move-object/from16 v10, p2

    .line 81
    :goto_0
    sparse-switch v13, :sswitch_data_0

    .line 101
    packed-switch v13, :pswitch_data_0

    .line 166
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 85
    :sswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v11

    .line 90
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v11

    .line 96
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v11

    .line 158
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {v12, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->removeGeofence(I)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    move/from16 v27, v11

    goto/16 :goto_1

    .line 147
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {v12, v0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->resumeGeofence(II)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    move/from16 v27, v11

    goto :goto_1

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {v12, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->pauseGeofence(I)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    move/from16 v27, v11

    goto :goto_1

    .line 115
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 117
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 119
    .local v17, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 121
    .local v19, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 123
    .local v21, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 125
    .local v23, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 127
    .local v24, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 129
    .local v25, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 130
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v27, v11

    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/gnss/IGnssGeofence$Stub;->addGeofence(IDDDIIII)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_1

    .line 106
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":D
    .end local v19    # "_arg2":D
    .end local v21    # "_arg3":D
    .end local v23    # "_arg4":I
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":I
    :pswitch_4
    move/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;

    move-result-object v0

    .line 107
    .local v0, "_arg0":Landroid/hardware/gnss/IGnssGeofenceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {v12, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->setCallback(Landroid/hardware/gnss/IGnssGeofenceCallback;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 169
    .end local v0    # "_arg0":Landroid/hardware/gnss/IGnssGeofenceCallback;
    :goto_1
    return v27

    nop

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
