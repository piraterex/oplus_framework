.class public abstract Landroid/media/tv/ITvInputHardware$Stub;
.super Landroid/os/Binder;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardware"

.field static final greylist-max-o TRANSACTION_overrideAudioSink:I = 0x3

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputHardware;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputHardware;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "overrideAudioSink"

    return-object v0

    .line 89
    :pswitch_1
    const-string v0, "setStreamVolume"

    return-object v0

    .line 85
    :pswitch_2
    const-string v0, "setSurface"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 262
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/media/tv/ITvInputHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 108
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.media.tv.ITvInputHardware"

    .line 109
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 110
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 120
    packed-switch v7, :pswitch_data_1

    .line 162
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v11

    .line 146
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 148
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 152
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 154
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 155
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware$Stub;->overrideAudioSink(ILjava/lang/String;III)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_0

    .line 137
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 138
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvInputHardware$Stub;->setStreamVolume(F)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_0

    .line 125
    .end local v0    # "_arg0":F
    :pswitch_3
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 127
    .local v0, "_arg0":Landroid/view/Surface;
    sget-object v1, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvStreamConfig;

    .line 128
    .local v1, "_arg1":Landroid/media/tv/TvStreamConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvInputHardware$Stub;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v2

    .line 130
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    nop

    .line 165
    .end local v0    # "_arg0":Landroid/view/Surface;
    .end local v1    # "_arg1":Landroid/media/tv/TvStreamConfig;
    .end local v2    # "_result":Z
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
