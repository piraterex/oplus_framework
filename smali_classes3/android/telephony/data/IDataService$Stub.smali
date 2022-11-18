.class public abstract Landroid/telephony/data/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataService"

.field static final blacklist TRANSACTION_cancelHandover:I = 0xb

.field static final greylist-max-o TRANSACTION_createDataServiceProvider:I = 0x1

.field static final greylist-max-o TRANSACTION_deactivateDataCall:I = 0x4

.field static final greylist-max-o TRANSACTION_registerForDataCallListChanged:I = 0x8

.field static final blacklist TRANSACTION_registerForUnthrottleApn:I = 0xc

.field static final greylist-max-o TRANSACTION_removeDataServiceProvider:I = 0x2

.field static final blacklist TRANSACTION_requestDataCallList:I = 0x7

.field static final greylist-max-o TRANSACTION_setDataProfile:I = 0x6

.field static final greylist-max-o TRANSACTION_setInitialAttachApn:I = 0x5

.field static final greylist-max-o TRANSACTION_setupDataCall:I = 0x3

.field static final blacklist TRANSACTION_startHandover:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterForDataCallListChanged:I = 0x9

.field static final blacklist TRANSACTION_unregisterForUnthrottleApn:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.telephony.data.IDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataService;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/telephony/data/IDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string/jumbo v0, "unregisterForUnthrottleApn"

    return-object v0

    .line 133
    :pswitch_1
    const-string/jumbo v0, "registerForUnthrottleApn"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "cancelHandover"

    return-object v0

    .line 125
    :pswitch_3
    const-string/jumbo v0, "startHandover"

    return-object v0

    .line 121
    :pswitch_4
    const-string/jumbo v0, "unregisterForDataCallListChanged"

    return-object v0

    .line 117
    :pswitch_5
    const-string/jumbo v0, "registerForDataCallListChanged"

    return-object v0

    .line 113
    :pswitch_6
    const-string/jumbo v0, "requestDataCallList"

    return-object v0

    .line 109
    :pswitch_7
    const-string/jumbo v0, "setDataProfile"

    return-object v0

    .line 105
    :pswitch_8
    const-string/jumbo v0, "setInitialAttachApn"

    return-object v0

    .line 101
    :pswitch_9
    const-string v0, "deactivateDataCall"

    return-object v0

    .line 97
    :pswitch_a
    const-string/jumbo v0, "setupDataCall"

    return-object v0

    .line 93
    :pswitch_b
    const-string/jumbo v0, "removeDataServiceProvider"

    return-object v0

    .line 89
    :pswitch_c
    const-string v0, "createDataServiceProvider"

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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 553
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Landroid/telephony/data/IDataService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "android.telephony.data.IDataService"

    .line 153
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 154
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 164
    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_1

    .line 330
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 160
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v11

    .line 321
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 324
    .local v1, "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 326
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 314
    .restart local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 316
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 304
    .local v2, "_arg2":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    .line 306
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 291
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 292
    .restart local v2    # "_arg2":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    .line 294
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 280
    .local v1, "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 282
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 272
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 260
    .restart local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 262
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 243
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 247
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 249
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 250
    .local v3, "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 252
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 233
    .local v1, "_arg1":Landroid/telephony/data/DataProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 235
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 236
    .restart local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 238
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/DataProfile;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 222
    .restart local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V

    .line 224
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 187
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 189
    .local v17, "_arg1":I
    sget-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/telephony/data/DataProfile;

    .line 191
    .local v18, "_arg2":Landroid/telephony/data/DataProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 193
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 195
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 197
    .local v21, "_arg5":I
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/LinkProperties;

    .line 199
    .local v22, "_arg6":Landroid/net/LinkProperties;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 201
    .local v23, "_arg7":I
    sget-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/data/NetworkSliceInfo;

    .line 203
    .local v24, "_arg8":Landroid/telephony/data/NetworkSliceInfo;
    sget-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/telephony/data/TrafficDescriptor;

    .line 205
    .local v25, "_arg9":Landroid/telephony/data/TrafficDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 207
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v27

    .line 208
    .local v27, "_arg11":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v28, v11

    move/from16 v11, v26

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/telephony/data/IDataService$Stub;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 210
    goto :goto_0

    .line 177
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/telephony/data/DataProfile;
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Landroid/net/LinkProperties;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/telephony/data/NetworkSliceInfo;
    .end local v25    # "_arg9":Landroid/telephony/data/TrafficDescriptor;
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":Landroid/telephony/data/IDataServiceCallback;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v13, v0}, Landroid/telephony/data/IDataService$Stub;->removeDataServiceProvider(I)V

    .line 180
    goto :goto_0

    .line 169
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v13, v0}, Landroid/telephony/data/IDataService$Stub;->createDataServiceProvider(I)V

    .line 172
    nop

    .line 333
    .end local v0    # "_arg0":I
    :goto_0
    return v28

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
