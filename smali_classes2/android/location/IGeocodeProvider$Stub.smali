.class public abstract Landroid/location/IGeocodeProvider$Stub;
.super Landroid/os/Binder;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeocodeProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IGeocodeProvider"

.field static final greylist-max-o TRANSACTION_getFromLocation:I = 0x1

.field static final greylist-max-o TRANSACTION_getFromLocationName:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGeocodeProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    const-string v0, "android.location.IGeocodeProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGeocodeProvider;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/location/IGeocodeProvider;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Landroid/location/IGeocodeProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGeocodeProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 64
    :pswitch_0
    const-string v0, "getFromLocationName"

    return-object v0

    .line 60
    :pswitch_1
    const-string v0, "getFromLocation"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 51
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 75
    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.location.IGeocodeProvider"

    .line 80
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 91
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 133
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 87
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v3

    .line 112
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 114
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 116
    .local v19, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 118
    .local v21, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    .line 120
    .local v23, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v25

    .line 122
    .local v25, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 124
    .local v27, "_arg5":I
    sget-object v5, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Landroid/location/GeocoderParams;

    .line 126
    .local v28, "_arg6":Landroid/location/GeocoderParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v29

    .line 127
    .local v29, "_arg7":Landroid/location/IGeocodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    move-object/from16 v5, p0

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    move/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    invoke-virtual/range {v5 .. v17}, Landroid/location/IGeocodeProvider$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 129
    goto :goto_0

    .line 96
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":D
    .end local v21    # "_arg2":D
    .end local v23    # "_arg3":D
    .end local v25    # "_arg4":D
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":Landroid/location/GeocoderParams;
    .end local v29    # "_arg7":Landroid/location/IGeocodeListener;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 98
    .local v13, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 100
    .local v15, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 102
    .local v17, "_arg2":I
    sget-object v5, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/location/GeocoderParams;

    .line 104
    .local v18, "_arg3":Landroid/location/GeocoderParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v19

    .line 105
    .local v19, "_arg4":Landroid/location/IGeocodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    move-object/from16 v5, p0

    move-wide v6, v13

    move-wide v8, v15

    move/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-virtual/range {v5 .. v12}, Landroid/location/IGeocodeProvider$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 107
    nop

    .line 136
    .end local v13    # "_arg0":D
    .end local v15    # "_arg1":D
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Landroid/location/GeocoderParams;
    .end local v19    # "_arg4":Landroid/location/IGeocodeListener;
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
