.class public abstract Landroid/media/IRingtonePlayer$Stub;
.super Landroid/os/Binder;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IRingtonePlayer"

.field static final greylist-max-o TRANSACTION_getTitle:I = 0x8

.field static final greylist-max-o TRANSACTION_isPlaying:I = 0x4

.field static final greylist-max-o TRANSACTION_openRingtone:I = 0x9

.field static final greylist-max-o TRANSACTION_play:I = 0x1

.field static final greylist-max-o TRANSACTION_playAsync:I = 0x6

.field static final blacklist TRANSACTION_playWithVolumeShaping:I = 0x2

.field static final greylist-max-o TRANSACTION_setPlaybackProperties:I = 0x5

.field static final greylist-max-o TRANSACTION_stop:I = 0x3

.field static final greylist-max-o TRANSACTION_stopAsync:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.media.IRingtonePlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRingtonePlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "android.media.IRingtonePlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/media/IRingtonePlayer;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Landroid/media/IRingtonePlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRingtonePlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_0
    const-string v0, "openRingtone"

    return-object v0

    .line 111
    :pswitch_1
    const-string v0, "getTitle"

    return-object v0

    .line 107
    :pswitch_2
    const-string v0, "stopAsync"

    return-object v0

    .line 103
    :pswitch_3
    const-string v0, "playAsync"

    return-object v0

    .line 99
    :pswitch_4
    const-string v0, "setPlaybackProperties"

    return-object v0

    .line 95
    :pswitch_5
    const-string v0, "isPlaying"

    return-object v0

    .line 91
    :pswitch_6
    const-string v0, "stop"

    return-object v0

    .line 87
    :pswitch_7
    const-string v0, "playWithVolumeShaping"

    return-object v0

    .line 83
    :pswitch_8
    const-string v0, "play"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 428
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/media/IRingtonePlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.media.IRingtonePlayer"

    .line 131
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 132
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 142
    packed-switch v8, :pswitch_data_1

    .line 251
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 138
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v12

    .line 242
    :pswitch_1
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 243
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {v7, v0}, Landroid/media/IRingtonePlayer$Stub;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 245
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    goto/16 :goto_0

    .line 232
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 233
    .restart local v0    # "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v7, v0}, Landroid/media/IRingtonePlayer$Stub;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IRingtonePlayer$Stub;->stopAsync()V

    .line 227
    goto/16 :goto_0

    .line 213
    :pswitch_4
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 215
    .restart local v0    # "_arg0":Landroid/net/Uri;
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 217
    .local v1, "_arg1":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 219
    .local v2, "_arg2":Z
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 220
    .local v3, "_arg3":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IRingtonePlayer$Stub;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 222
    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/UserHandle;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/media/AudioAttributes;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 203
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 205
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 206
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IRingtonePlayer$Stub;->setPlaybackProperties(Landroid/os/IBinder;FZZ)V

    .line 208
    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 190
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v7, v0}, Landroid/media/IRingtonePlayer$Stub;->isPlaying(Landroid/os/IBinder;)Z

    move-result v1

    .line 192
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 182
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v7, v0}, Landroid/media/IRingtonePlayer$Stub;->stop(Landroid/os/IBinder;)V

    .line 184
    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 165
    .local v13, "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/Uri;

    .line 167
    .local v14, "_arg1":Landroid/net/Uri;
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/media/AudioAttributes;

    .line 169
    .local v15, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 171
    .local v16, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 173
    .local v17, "_arg4":Z
    sget-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/media/VolumeShaper$Configuration;

    .line 174
    .local v18, "_arg5":Landroid/media/VolumeShaper$Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IRingtonePlayer$Stub;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V

    .line 176
    goto :goto_0

    .line 147
    .end local v13    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/net/Uri;
    .end local v15    # "_arg2":Landroid/media/AudioAttributes;
    .end local v16    # "_arg3":F
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Landroid/media/VolumeShaper$Configuration;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 149
    .local v6, "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    .line 151
    .local v13, "_arg1":Landroid/net/Uri;
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/media/AudioAttributes;

    .line 153
    .local v14, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 155
    .local v15, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 156
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IRingtonePlayer$Stub;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V

    .line 158
    nop

    .line 254
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Landroid/net/Uri;
    .end local v14    # "_arg2":Landroid/media/AudioAttributes;
    .end local v15    # "_arg3":F
    .end local v16    # "_arg4":Z
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
