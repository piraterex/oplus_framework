.class public abstract Landroid/os/IServiceManager$Stub;
.super Landroid/os/Binder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addService:I = 0x3

.field static final blacklist TRANSACTION_checkService:I = 0x2

.field static final blacklist TRANSACTION_getConnectionInfo:I = 0xa

.field static final blacklist TRANSACTION_getDeclaredInstances:I = 0x8

.field static final blacklist TRANSACTION_getService:I = 0x1

.field static final blacklist TRANSACTION_getServiceDebugInfo:I = 0xd

.field static final blacklist TRANSACTION_isDeclared:I = 0x7

.field static final blacklist TRANSACTION_listServices:I = 0x4

.field static final blacklist TRANSACTION_registerClientCallback:I = 0xb

.field static final blacklist TRANSACTION_registerForNotifications:I = 0x5

.field static final blacklist TRANSACTION_tryUnregisterService:I = 0xc

.field static final blacklist TRANSACTION_unregisterForNotifications:I = 0x6

.field static final blacklist TRANSACTION_updatableViaApex:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 116
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    const-string v0, "android.os.IServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 128
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IServiceManager;

    if-eqz v1, :cond_1

    .line 129
    move-object v1, v0

    check-cast v1, Landroid/os/IServiceManager;

    return-object v1

    .line 131
    :cond_1
    new-instance v1, Landroid/os/IServiceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 140
    packed-switch p0, :pswitch_data_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 192
    :pswitch_0
    const-string v0, "getServiceDebugInfo"

    return-object v0

    .line 188
    :pswitch_1
    const-string/jumbo v0, "tryUnregisterService"

    return-object v0

    .line 184
    :pswitch_2
    const-string/jumbo v0, "registerClientCallback"

    return-object v0

    .line 180
    :pswitch_3
    const-string v0, "getConnectionInfo"

    return-object v0

    .line 176
    :pswitch_4
    const-string/jumbo v0, "updatableViaApex"

    return-object v0

    .line 172
    :pswitch_5
    const-string v0, "getDeclaredInstances"

    return-object v0

    .line 168
    :pswitch_6
    const-string/jumbo v0, "isDeclared"

    return-object v0

    .line 164
    :pswitch_7
    const-string/jumbo v0, "unregisterForNotifications"

    return-object v0

    .line 160
    :pswitch_8
    const-string/jumbo v0, "registerForNotifications"

    return-object v0

    .line 156
    :pswitch_9
    const-string/jumbo v0, "listServices"

    return-object v0

    .line 152
    :pswitch_a
    const-string v0, "addService"

    return-object v0

    .line 148
    :pswitch_b
    const-string v0, "checkService"

    return-object v0

    .line 144
    :pswitch_c
    const-string v0, "getService"

    return-object v0

    nop

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

    .line 135
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 664
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 203
    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const-string v0, "android.os.IServiceManager"

    .line 208
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 209
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 219
    packed-switch p1, :pswitch_data_1

    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 215
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    return v1

    .line 354
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/IServiceManager$Stub;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v2

    .line 355
    .local v2, "_result":[Landroid/os/ServiceDebugInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 357
    goto/16 :goto_0

    .line 344
    .end local v2    # "_result":[Landroid/os/ServiceDebugInfo;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 347
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 335
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IClientCallback;

    move-result-object v4

    .line 336
    .local v4, "_arg2":Landroid/os/IClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_0

    .line 321
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IClientCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object v3

    .line 324
    .local v3, "_result":Landroid/os/ConnectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 326
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ConnectionInfo;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    goto/16 :goto_0

    .line 301
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 306
    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->isDeclared(Ljava/lang/String;)Z

    move-result v3

    .line 294
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    goto/16 :goto_0

    .line 280
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object v3

    .line 283
    .local v3, "_arg1":Landroid/os/IServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto :goto_0

    .line 269
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IServiceCallback;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object v3

    .line 272
    .restart local v3    # "_arg1":Landroid/os/IServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto :goto_0

    .line 259
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IServiceCallback;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->listServices(I)[Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 264
    goto :goto_0

    .line 244
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 248
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 250
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 251
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IServiceManager$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto :goto_0

    .line 234
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 237
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 239
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 227
    .restart local v3    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 229
    nop

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :goto_0
    return v1

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
