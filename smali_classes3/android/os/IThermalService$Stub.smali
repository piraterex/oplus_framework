.class public abstract Landroid/os/IThermalService$Stub;
.super Landroid/os/Binder;
.source "IThermalService.java"

# interfaces
.implements Landroid/os/IThermalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalService"

.field static final blacklist TRANSACTION_getCurrentCoolingDevices:I = 0x9

.field static final blacklist TRANSACTION_getCurrentCoolingDevicesWithType:I = 0xa

.field static final blacklist TRANSACTION_getCurrentTemperatures:I = 0x4

.field static final blacklist TRANSACTION_getCurrentTemperaturesWithType:I = 0x5

.field static final blacklist TRANSACTION_getCurrentThermalStatus:I = 0x8

.field static final blacklist TRANSACTION_getThermalHeadroom:I = 0xb

.field static final greylist-max-o TRANSACTION_registerThermalEventListener:I = 0x1

.field static final blacklist TRANSACTION_registerThermalEventListenerWithType:I = 0x2

.field static final blacklist TRANSACTION_registerThermalStatusListener:I = 0x6

.field static final greylist-max-o TRANSACTION_unregisterThermalEventListener:I = 0x3

.field static final blacklist TRANSACTION_unregisterThermalStatusListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.os.IThermalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IThermalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    const-string v0, "android.os.IThermalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IThermalService;

    if-eqz v1, :cond_1

    .line 141
    move-object v1, v0

    check-cast v1, Landroid/os/IThermalService;

    return-object v1

    .line 143
    :cond_1
    new-instance v1, Landroid/os/IThermalService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IThermalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 196
    :pswitch_0
    const-string/jumbo v0, "getThermalHeadroom"

    return-object v0

    .line 192
    :pswitch_1
    const-string v0, "getCurrentCoolingDevicesWithType"

    return-object v0

    .line 188
    :pswitch_2
    const-string v0, "getCurrentCoolingDevices"

    return-object v0

    .line 184
    :pswitch_3
    const-string v0, "getCurrentThermalStatus"

    return-object v0

    .line 180
    :pswitch_4
    const-string/jumbo v0, "unregisterThermalStatusListener"

    return-object v0

    .line 176
    :pswitch_5
    const-string/jumbo v0, "registerThermalStatusListener"

    return-object v0

    .line 172
    :pswitch_6
    const-string v0, "getCurrentTemperaturesWithType"

    return-object v0

    .line 168
    :pswitch_7
    const-string v0, "getCurrentTemperatures"

    return-object v0

    .line 164
    :pswitch_8
    const-string/jumbo v0, "unregisterThermalEventListener"

    return-object v0

    .line 160
    :pswitch_9
    const-string/jumbo v0, "registerThermalEventListenerWithType"

    return-object v0

    .line 156
    :pswitch_a
    const-string/jumbo v0, "registerThermalEventListener"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 624
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 207
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    const-string v0, "android.os.IThermalService"

    .line 212
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 213
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 223
    packed-switch p1, :pswitch_data_1

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 219
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return v1

    .line 321
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getThermalHeadroom(I)F

    move-result v3

    .line 324
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 326
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;

    move-result-object v3

    .line 314
    .local v3, "_result":[Landroid/os/CoolingDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 316
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/os/CoolingDevice;
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object v2

    .line 304
    .local v2, "_result":[Landroid/os/CoolingDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 306
    goto/16 :goto_0

    .line 296
    .end local v2    # "_result":[Landroid/os/CoolingDevice;
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentThermalStatus()I

    move-result v2

    .line 297
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    goto/16 :goto_0

    .line 287
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object v2

    .line 288
    .local v2, "_arg0":Landroid/os/IThermalStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v3

    .line 290
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 292
    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":Landroid/os/IThermalStatusListener;
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Landroid/os/IThermalStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v3

    .line 280
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    goto :goto_0

    .line 267
    .end local v2    # "_arg0":Landroid/os/IThermalStatusListener;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v3

    .line 270
    .local v3, "_result":[Landroid/os/Temperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 272
    goto :goto_0

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/os/Temperature;
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object v2

    .line 260
    .local v2, "_result":[Landroid/os/Temperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 262
    goto :goto_0

    .line 250
    .end local v2    # "_result":[Landroid/os/Temperature;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v3

    .line 253
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 255
    goto :goto_0

    .line 238
    .end local v2    # "_arg0":Landroid/os/IThermalEventListener;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 241
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3}, Landroid/os/IThermalService$Stub;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v4

    .line 243
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 245
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":Landroid/os/IThermalEventListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    .line 229
    .restart local v2    # "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v3

    .line 231
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    nop

    .line 333
    .end local v2    # "_arg0":Landroid/os/IThermalEventListener;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
