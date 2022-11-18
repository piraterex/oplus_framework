.class public abstract Landroid/hardware/location/IContextHubService$Stub;
.super Landroid/os/Binder;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubService"

.field static final greylist-max-o TRANSACTION_createClient:I = 0x9

.field static final blacklist TRANSACTION_createPendingIntentClient:I = 0xa

.field static final greylist-max-o TRANSACTION_disableNanoApp:I = 0xf

.field static final greylist-max-o TRANSACTION_enableNanoApp:I = 0xe

.field static final greylist-max-o TRANSACTION_findNanoAppOnHub:I = 0x7

.field static final greylist-max-o TRANSACTION_getContextHubHandles:I = 0x2

.field static final greylist-max-o TRANSACTION_getContextHubInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getContextHubs:I = 0xb

.field static final greylist-max-o TRANSACTION_getNanoAppInstanceInfo:I = 0x6

.field static final greylist-max-o TRANSACTION_loadNanoApp:I = 0x4

.field static final greylist-max-o TRANSACTION_loadNanoAppOnHub:I = 0xc

.field static final greylist-max-o TRANSACTION_queryNanoApps:I = 0x10

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_sendMessage:I = 0x8

.field static final greylist-max-o TRANSACTION_unloadNanoApp:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadNanoAppFromHub:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IContextHubService;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubService;

    return-object v1

    .line 112
    :cond_1
    new-instance v1, Landroid/hardware/location/IContextHubService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 121
    packed-switch p0, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 185
    :pswitch_0
    const-string v0, "queryNanoApps"

    return-object v0

    .line 181
    :pswitch_1
    const-string v0, "disableNanoApp"

    return-object v0

    .line 177
    :pswitch_2
    const-string v0, "enableNanoApp"

    return-object v0

    .line 173
    :pswitch_3
    const-string/jumbo v0, "unloadNanoAppFromHub"

    return-object v0

    .line 169
    :pswitch_4
    const-string v0, "loadNanoAppOnHub"

    return-object v0

    .line 165
    :pswitch_5
    const-string v0, "getContextHubs"

    return-object v0

    .line 161
    :pswitch_6
    const-string v0, "createPendingIntentClient"

    return-object v0

    .line 157
    :pswitch_7
    const-string v0, "createClient"

    return-object v0

    .line 153
    :pswitch_8
    const-string v0, "sendMessage"

    return-object v0

    .line 149
    :pswitch_9
    const-string v0, "findNanoAppOnHub"

    return-object v0

    .line 145
    :pswitch_a
    const-string v0, "getNanoAppInstanceInfo"

    return-object v0

    .line 141
    :pswitch_b
    const-string/jumbo v0, "unloadNanoApp"

    return-object v0

    .line 137
    :pswitch_c
    const-string v0, "loadNanoApp"

    return-object v0

    .line 133
    :pswitch_d
    const-string v0, "getContextHubInfo"

    return-object v0

    .line 129
    :pswitch_e
    const-string v0, "getContextHubHandles"

    return-object v0

    .line 125
    :pswitch_f
    const-string v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 116
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 750
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 196
    invoke-static {p1}, Landroid/hardware/location/IContextHubService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 200
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.hardware.location.IContextHubService"

    .line 201
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 202
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 212
    packed-switch v7, :pswitch_data_1

    .line 403
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 208
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return v11

    .line 393
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 395
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 396
    .local v1, "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {v6, v0, v1}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 384
    .restart local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 385
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v2    # "_arg2":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 371
    .restart local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 372
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_0

    .line 354
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v2    # "_arg2":J
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 356
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 358
    .restart local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 359
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_0

    .line 341
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v2    # "_arg2":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 345
    .restart local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    sget-object v2, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppBinary;

    .line 346
    .local v2, "_arg2":Landroid/hardware/location/NanoAppBinary;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v2    # "_arg2":Landroid/hardware/location/NanoAppBinary;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs()Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 336
    goto/16 :goto_0

    .line 318
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 320
    .local v12, "_arg0":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/PendingIntent;

    .line 322
    .local v13, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 324
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/location/IContextHubService$Stub;->createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    .line 327
    .local v0, "_result":Landroid/hardware/location/IContextHubClient;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 329
    goto/16 :goto_0

    .line 302
    .end local v0    # "_result":Landroid/hardware/location/IContextHubClient;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/app/PendingIntent;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v1

    .line 306
    .local v1, "_arg1":Landroid/hardware/location/IContextHubClientCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v4

    .line 311
    .local v4, "_result":Landroid/hardware/location/IContextHubClient;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 313
    goto/16 :goto_0

    .line 288
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/IContextHubClientCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/hardware/location/IContextHubClient;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .local v1, "_arg1":I
    sget-object v2, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubMessage;

    .line 293
    .local v2, "_arg2":Landroid/hardware/location/ContextHubMessage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v3

    .line 295
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/location/ContextHubMessage;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppFilter;

    .line 279
    .local v1, "_arg1":Landroid/hardware/location/NanoAppFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v6, v0, v1}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v2

    .line 281
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 283
    goto :goto_0

    .line 266
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/NanoAppFilter;
    .end local v2    # "_result":[I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v6, v0}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v1

    .line 269
    .local v1, "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 271
    goto :goto_0

    .line 256
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v6, v0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp(I)I

    move-result v1

    .line 259
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    goto :goto_0

    .line 244
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoApp;

    .line 247
    .local v1, "_arg1":Landroid/hardware/location/NanoApp;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v6, v0, v1}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v2

    .line 249
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    goto :goto_0

    .line 234
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/location/NanoApp;
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {v6, v0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v1

    .line 237
    .local v1, "_result":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 239
    goto :goto_0

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/location/ContextHubInfo;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles()[I

    move-result-object v0

    .line 227
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 229
    goto :goto_0

    .line 217
    .end local v0    # "_result":[I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/location/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubCallback;

    move-result-object v0

    .line 218
    .local v0, "_arg0":Landroid/hardware/location/IContextHubCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v6, v0}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I

    move-result v1

    .line 220
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    nop

    .line 406
    .end local v0    # "_arg0":Landroid/hardware/location/IContextHubCallback;
    .end local v1    # "_result":I
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
