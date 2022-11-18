.class public abstract Landroid/net/wifi/nl80211/IWificond$Stub;
.super Landroid/os/Binder;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GetApInterfaces:I = 0x7

.field static final blacklist TRANSACTION_GetClientInterfaces:I = 0x6

.field static final blacklist TRANSACTION_RegisterCallback:I = 0xd

.field static final blacklist TRANSACTION_UnregisterCallback:I = 0xe

.field static final blacklist TRANSACTION_createApInterface:I = 0x1

.field static final blacklist TRANSACTION_createClientInterface:I = 0x2

.field static final blacklist TRANSACTION_getAvailable2gChannels:I = 0x8

.field static final blacklist TRANSACTION_getAvailable5gNonDFSChannels:I = 0x9

.field static final blacklist TRANSACTION_getAvailable60gChannels:I = 0xc

.field static final blacklist TRANSACTION_getAvailable6gChannels:I = 0xb

.field static final blacklist TRANSACTION_getAvailableDFSChannels:I = 0xa

.field static final blacklist TRANSACTION_getDeviceWiphyCapabilities:I = 0x11

.field static final blacklist TRANSACTION_notifyCountryCodeChanged:I = 0x12

.field static final blacklist TRANSACTION_registerWificondEventCallback:I = 0xf

.field static final blacklist TRANSACTION_tearDownApInterface:I = 0x3

.field static final blacklist TRANSACTION_tearDownClientInterface:I = 0x4

.field static final blacklist TRANSACTION_tearDownInterfaces:I = 0x5

.field static final blacklist TRANSACTION_unregisterWificondEventCallback:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 138
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 146
    if-nez p0, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 150
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWificond;

    if-eqz v1, :cond_1

    .line 151
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWificond;

    return-object v1

    .line 153
    :cond_1
    new-instance v1, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 234
    :pswitch_0
    const-string v0, "notifyCountryCodeChanged"

    return-object v0

    .line 230
    :pswitch_1
    const-string v0, "getDeviceWiphyCapabilities"

    return-object v0

    .line 226
    :pswitch_2
    const-string/jumbo v0, "unregisterWificondEventCallback"

    return-object v0

    .line 222
    :pswitch_3
    const-string v0, "registerWificondEventCallback"

    return-object v0

    .line 218
    :pswitch_4
    const-string v0, "UnregisterCallback"

    return-object v0

    .line 214
    :pswitch_5
    const-string v0, "RegisterCallback"

    return-object v0

    .line 210
    :pswitch_6
    const-string v0, "getAvailable60gChannels"

    return-object v0

    .line 206
    :pswitch_7
    const-string v0, "getAvailable6gChannels"

    return-object v0

    .line 202
    :pswitch_8
    const-string v0, "getAvailableDFSChannels"

    return-object v0

    .line 198
    :pswitch_9
    const-string v0, "getAvailable5gNonDFSChannels"

    return-object v0

    .line 194
    :pswitch_a
    const-string v0, "getAvailable2gChannels"

    return-object v0

    .line 190
    :pswitch_b
    const-string v0, "GetApInterfaces"

    return-object v0

    .line 186
    :pswitch_c
    const-string v0, "GetClientInterfaces"

    return-object v0

    .line 182
    :pswitch_d
    const-string v0, "tearDownInterfaces"

    return-object v0

    .line 178
    :pswitch_e
    const-string v0, "tearDownClientInterface"

    return-object v0

    .line 174
    :pswitch_f
    const-string v0, "tearDownApInterface"

    return-object v0

    .line 170
    :pswitch_10
    const-string v0, "createClientInterface"

    return-object v0

    .line 166
    :pswitch_11
    const-string v0, "createApInterface"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 157
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 777
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 245
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    const-string v0, "android.net.wifi.nl80211.IWificond"

    .line 250
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 251
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 261
    packed-switch p1, :pswitch_data_1

    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 257
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return v1

    .line 402
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->notifyCountryCodeChanged()V

    .line 403
    goto/16 :goto_0

    .line 393
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v3

    .line 396
    .local v3, "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 398
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    .line 386
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->unregisterWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 388
    goto/16 :goto_0

    .line 377
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    .line 378
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 380
    goto/16 :goto_0

    .line 369
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    .line 370
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 372
    goto/16 :goto_0

    .line 361
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    .line 362
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 364
    goto/16 :goto_0

    .line 353
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    :pswitch_7
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable60gChannels()[I

    move-result-object v2

    .line 354
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 356
    goto/16 :goto_0

    .line 346
    .end local v2    # "_result":[I
    :pswitch_8
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable6gChannels()[I

    move-result-object v2

    .line 347
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 349
    goto/16 :goto_0

    .line 339
    .end local v2    # "_result":[I
    :pswitch_9
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailableDFSChannels()[I

    move-result-object v2

    .line 340
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 342
    goto/16 :goto_0

    .line 332
    .end local v2    # "_result":[I
    :pswitch_a
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object v2

    .line 333
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 335
    goto/16 :goto_0

    .line 325
    .end local v2    # "_result":[I
    :pswitch_b
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable2gChannels()[I

    move-result-object v2

    .line 326
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    goto :goto_0

    .line 318
    .end local v2    # "_result":[I
    :pswitch_c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object v2

    .line 319
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 321
    goto :goto_0

    .line 311
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_d
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object v2

    .line 312
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 314
    goto :goto_0

    .line 305
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownInterfaces()V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto :goto_0

    .line 296
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v3

    .line 299
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    goto :goto_0

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v3

    .line 289
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    goto :goto_0

    .line 276
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3

    .line 279
    .local v3, "_result":Landroid/net/wifi/nl80211/IClientInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 281
    goto :goto_0

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IClientInterface;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3

    .line 269
    .local v3, "_result":Landroid/net/wifi/nl80211/IApInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 271
    nop

    .line 410
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IApInterface;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
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
