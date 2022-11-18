.class public abstract Landroid/location/IGpsGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field static final greylist-max-o TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_pauseHardwareGeofence:I = 0x4

.field static final greylist-max-o TRANSACTION_removeHardwareGeofence:I = 0x3

.field static final greylist-max-o TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/location/IGpsGeofenceHardware;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "resumeHardwareGeofence"

    return-object v0

    .line 86
    :pswitch_1
    const-string v0, "pauseHardwareGeofence"

    return-object v0

    .line 82
    :pswitch_2
    const-string v0, "removeHardwareGeofence"

    return-object v0

    .line 78
    :pswitch_3
    const-string v0, "addCircularHardwareGeofence"

    return-object v0

    .line 74
    :pswitch_4
    const-string v0, "isHardwareGeofenceSupported"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 311
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/location/IGpsGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 105
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p3

    const-string v15, "android.location.IGpsGeofenceHardware"

    .line 106
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 107
    move-object/from16 v10, p2

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    move-object/from16 v10, p2

    .line 109
    :goto_0
    packed-switch v13, :pswitch_data_0

    .line 117
    packed-switch v13, :pswitch_data_1

    .line 184
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 113
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v11

    .line 173
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {v12, v0, v1}, Landroid/location/IGpsGeofenceHardware$Stub;->resumeHardwareGeofence(II)Z

    move-result v2

    .line 178
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 180
    move/from16 v27, v11

    goto/16 :goto_1

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {v12, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->pauseHardwareGeofence(I)Z

    move-result v1

    .line 166
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    move/from16 v27, v11

    goto :goto_1

    .line 153
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {v12, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->removeHardwareGeofence(I)Z

    move-result v1

    .line 156
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    move/from16 v27, v11

    goto :goto_1

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 131
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 133
    .local v17, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 135
    .local v19, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 137
    .local v21, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 139
    .local v23, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 141
    .local v24, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 143
    .local v25, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 144
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
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

    invoke-virtual/range {v0 .. v11}, Landroid/location/IGpsGeofenceHardware$Stub;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v0

    .line 146
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    goto :goto_1

    .line 121
    .end local v0    # "_result":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":D
    .end local v19    # "_arg2":D
    .end local v21    # "_arg3":D
    .end local v23    # "_arg4":I
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":I
    :pswitch_5
    move/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/location/IGpsGeofenceHardware$Stub;->isHardwareGeofenceSupported()Z

    move-result v0

    .line 122
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    nop

    .line 187
    .end local v0    # "_result":Z
    :goto_1
    return v27

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
