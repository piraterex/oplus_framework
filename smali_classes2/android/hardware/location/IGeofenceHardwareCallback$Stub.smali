.class public abstract Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardwareCallback.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardwareCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardwareCallback"

.field static final greylist-max-o TRANSACTION_onGeofenceAdd:I = 0x2

.field static final greylist-max-o TRANSACTION_onGeofencePause:I = 0x4

.field static final greylist-max-o TRANSACTION_onGeofenceRemove:I = 0x3

.field static final greylist-max-o TRANSACTION_onGeofenceResume:I = 0x5

.field static final greylist-max-o TRANSACTION_onGeofenceTransition:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "onGeofenceResume"

    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "onGeofencePause"

    return-object v0

    .line 73
    :pswitch_2
    const-string v0, "onGeofenceRemove"

    return-object v0

    .line 69
    :pswitch_3
    const-string v0, "onGeofenceAdd"

    return-object v0

    .line 65
    :pswitch_4
    const-string v0, "onGeofenceTransition"

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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 266
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.hardware.location.IGeofenceHardwareCallback"

    .line 97
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 98
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 108
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 168
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 104
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v11

    .line 159
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceResume(II)V

    .line 164
    goto :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofencePause(II)V

    .line 154
    goto :goto_0

    .line 139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceRemove(II)V

    .line 144
    goto :goto_0

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceAdd(II)V

    .line 134
    goto :goto_0

    .line 113
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 115
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 117
    .local v14, "_arg1":I
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/location/Location;

    .line 119
    .local v15, "_arg2":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 121
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 122
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceTransition(IILandroid/location/Location;JI)V

    .line 124
    nop

    .line 171
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Landroid/location/Location;
    .end local v16    # "_arg3":J
    .end local v18    # "_arg4":I
    :goto_0
    return v11

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
