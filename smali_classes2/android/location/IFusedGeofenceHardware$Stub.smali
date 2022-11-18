.class public abstract Landroid/location/IFusedGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedGeofenceHardware.java"

# interfaces
.implements Landroid/location/IFusedGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IFusedGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IFusedGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IFusedGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addGeofences:I = 0x2

.field static final greylist-max-o TRANSACTION_isSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_modifyGeofenceOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_pauseMonitoringGeofence:I = 0x4

.field static final greylist-max-o TRANSACTION_removeGeofences:I = 0x3

.field static final greylist-max-o TRANSACTION_resumeMonitoringGeofence:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IFusedGeofenceHardware;

    if-eqz v1, :cond_1

    .line 107
    move-object v1, v0

    check-cast v1, Landroid/location/IFusedGeofenceHardware;

    return-object v1

    .line 109
    :cond_1
    new-instance v1, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 118
    packed-switch p0, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_0
    const-string v0, "modifyGeofenceOptions"

    return-object v0

    .line 138
    :pswitch_1
    const-string v0, "resumeMonitoringGeofence"

    return-object v0

    .line 134
    :pswitch_2
    const-string v0, "pauseMonitoringGeofence"

    return-object v0

    .line 130
    :pswitch_3
    const-string v0, "removeGeofences"

    return-object v0

    .line 126
    :pswitch_4
    const-string v0, "addGeofences"

    return-object v0

    .line 122
    :pswitch_5
    const-string v0, "isSupported"

    return-object v0

    nop

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 410
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 153
    invoke-static {p1}, Landroid/location/IFusedGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.location.IFusedGeofenceHardware"

    .line 158
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 159
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 169
    packed-switch v8, :pswitch_data_1

    .line 237
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 165
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v12

    .line 219
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 221
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 223
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 225
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 227
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 229
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 230
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/location/IFusedGeofenceHardware$Stub;->modifyGeofenceOptions(IIIIII)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_0

    .line 208
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v7, v0, v1}, Landroid/location/IFusedGeofenceHardware$Stub;->resumeMonitoringGeofence(II)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_0

    .line 199
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v7, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->pauseMonitoringGeofence(I)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_0

    .line 190
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 191
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v7, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->removeGeofences([I)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_0

    .line 181
    .end local v0    # "_arg0":[I
    :pswitch_5
    sget-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 182
    .local v0, "_arg0":[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v7, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_0

    .line 173
    .end local v0    # "_arg0":[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/location/IFusedGeofenceHardware$Stub;->isSupported()Z

    move-result v0

    .line 174
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    nop

    .line 240
    .end local v0    # "_result":Z
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
