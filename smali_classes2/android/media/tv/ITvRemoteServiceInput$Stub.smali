.class public abstract Landroid/media/tv/ITvRemoteServiceInput$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteServiceInput.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteServiceInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteServiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteServiceInput"

.field static final greylist-max-o TRANSACTION_clearInputBridge:I = 0x3

.field static final greylist-max-o TRANSACTION_closeInputBridge:I = 0x2

.field static final blacklist TRANSACTION_openGamepadBridge:I = 0xa

.field static final greylist-max-o TRANSACTION_openInputBridge:I = 0x1

.field static final blacklist TRANSACTION_sendGamepadAxisValue:I = 0xd

.field static final blacklist TRANSACTION_sendGamepadKeyDown:I = 0xb

.field static final blacklist TRANSACTION_sendGamepadKeyUp:I = 0xc

.field static final greylist-max-o TRANSACTION_sendKeyDown:I = 0x5

.field static final greylist-max-o TRANSACTION_sendKeyUp:I = 0x6

.field static final greylist-max-o TRANSACTION_sendPointerDown:I = 0x7

.field static final greylist-max-o TRANSACTION_sendPointerSync:I = 0x9

.field static final greylist-max-o TRANSACTION_sendPointerUp:I = 0x8

.field static final greylist-max-o TRANSACTION_sendTimestamp:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvRemoteServiceInput;

    if-eqz v1, :cond_1

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvRemoteServiceInput;

    return-object v1

    .line 78
    :cond_1
    new-instance v1, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "sendGamepadAxisValue"

    return-object v0

    .line 135
    :pswitch_1
    const-string v0, "sendGamepadKeyUp"

    return-object v0

    .line 131
    :pswitch_2
    const-string v0, "sendGamepadKeyDown"

    return-object v0

    .line 127
    :pswitch_3
    const-string v0, "openGamepadBridge"

    return-object v0

    .line 123
    :pswitch_4
    const-string v0, "sendPointerSync"

    return-object v0

    .line 119
    :pswitch_5
    const-string v0, "sendPointerUp"

    return-object v0

    .line 115
    :pswitch_6
    const-string v0, "sendPointerDown"

    return-object v0

    .line 111
    :pswitch_7
    const-string v0, "sendKeyUp"

    return-object v0

    .line 107
    :pswitch_8
    const-string v0, "sendKeyDown"

    return-object v0

    .line 103
    :pswitch_9
    const-string v0, "sendTimestamp"

    return-object v0

    .line 99
    :pswitch_a
    const-string v0, "clearInputBridge"

    return-object v0

    .line 95
    :pswitch_b
    const-string v0, "closeInputBridge"

    return-object v0

    .line 91
    :pswitch_c
    const-string v0, "openInputBridge"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 518
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "android.media.tv.ITvRemoteServiceInput"

    .line 155
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 156
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    move-object/from16 v10, p2

    .line 158
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 166
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 306
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 162
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v9

    .line 295
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 297
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 300
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadAxisValue(Landroid/os/IBinder;IF)V

    .line 302
    goto/16 :goto_1

    .line 285
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 287
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadKeyUp(Landroid/os/IBinder;I)V

    .line 290
    goto/16 :goto_1

    .line 275
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 277
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadKeyDown(Landroid/os/IBinder;I)V

    .line 280
    goto/16 :goto_1

    .line 265
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 267
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 270
    goto/16 :goto_1

    .line 257
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 258
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerSync(Landroid/os/IBinder;)V

    .line 260
    goto/16 :goto_1

    .line 247
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 252
    goto/16 :goto_1

    .line 233
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 235
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 242
    goto :goto_1

    .line 223
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 228
    goto :goto_1

    .line 213
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 215
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 218
    goto :goto_1

    .line 203
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 206
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 208
    goto :goto_1

    .line 195
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->clearInputBridge(Landroid/os/IBinder;)V

    .line 198
    goto :goto_1

    .line 187
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 188
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {v6, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->closeInputBridge(Landroid/os/IBinder;)V

    .line 190
    goto :goto_1

    .line 171
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 173
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 177
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 179
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 180
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 182
    nop

    .line 309
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_1
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
