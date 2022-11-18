.class public abstract Landroid/media/ISpatializer$Stub;
.super Landroid/os/Binder;
.source "ISpatializer.java"

# interfaces
.implements Landroid/media/ISpatializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0x8

.field static final blacklist TRANSACTION_getLevel:I = 0x4

.field static final blacklist TRANSACTION_getOutput:I = 0x13

.field static final blacklist TRANSACTION_getParameter:I = 0x12

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0x6

.field static final blacklist TRANSACTION_getSupportedLevels:I = 0x2

.field static final blacklist TRANSACTION_getSupportedModes:I = 0xf

.field static final blacklist TRANSACTION_isHeadTrackingSupported:I = 0x5

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0x9

.field static final blacklist TRANSACTION_registerHeadTrackingCallback:I = 0x10

.field static final blacklist TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0x7

.field static final blacklist TRANSACTION_setDisplayOrientation:I = 0xd

.field static final blacklist TRANSACTION_setGlobalTransform:I = 0xa

.field static final blacklist TRANSACTION_setHeadSensor:I = 0xb

.field static final blacklist TRANSACTION_setHingeAngle:I = 0xe

.field static final blacklist TRANSACTION_setLevel:I = 0x3

.field static final blacklist TRANSACTION_setParameter:I = 0x11

.field static final blacklist TRANSACTION_setScreenSensor:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 165
    sget-object v0, Landroid/media/ISpatializer$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/ISpatializer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    sget-object v0, Landroid/media/ISpatializer$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 177
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/ISpatializer;

    if-eqz v1, :cond_1

    .line 178
    move-object v1, v0

    check-cast v1, Landroid/media/ISpatializer;

    return-object v1

    .line 180
    :cond_1
    new-instance v1, Landroid/media/ISpatializer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ISpatializer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 184
    return-object p0
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

    .line 188
    sget-object v0, Landroid/media/ISpatializer$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 189
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 190
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 200
    packed-switch p1, :pswitch_data_1

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 196
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return v1

    .line 353
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getOutput()I

    move-result v2

    .line 354
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto/16 :goto_0

    .line 342
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 345
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v3}, Landroid/media/ISpatializer$Stub;->getParameter(I[B)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 349
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 334
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3}, Landroid/media/ISpatializer$Stub;->setParameter(I[B)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingCallback;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Landroid/media/ISpatializerHeadTrackingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":Landroid/media/ISpatializerHeadTrackingCallback;
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedModes()[B

    move-result-object v2

    .line 315
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 317
    goto/16 :goto_0

    .line 306
    .end local v2    # "_result":[B
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 307
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setHingeAngle(F)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":F
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 298
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setDisplayOrientation(F)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":F
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setScreenSensor(I)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 279
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setHeadSensor(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_0

    .line 270
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 271
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setGlobalTransform([F)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto :goto_0

    .line 263
    .end local v2    # "_arg0":[F
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->recenterHeadTracker()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_0

    .line 256
    :pswitch_c
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getActualHeadTrackingMode()B

    move-result v2

    .line 257
    .local v2, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    goto :goto_0

    .line 248
    .end local v2    # "_result":B
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 249
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setDesiredHeadTrackingMode(B)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_0

    .line 240
    .end local v2    # "_arg0":B
    :pswitch_e
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedHeadTrackingModes()[B

    move-result-object v2

    .line 241
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 243
    goto :goto_0

    .line 233
    .end local v2    # "_result":[B
    :pswitch_f
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->isHeadTrackingSupported()Z

    move-result v2

    .line 234
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto :goto_0

    .line 226
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getLevel()B

    move-result v2

    .line 227
    .local v2, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    goto :goto_0

    .line 218
    .end local v2    # "_result":B
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 219
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Landroid/media/ISpatializer$Stub;->setLevel(B)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_0

    .line 210
    .end local v2    # "_arg0":B
    :pswitch_12
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedLevels()[B

    move-result-object v2

    .line 211
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 213
    goto :goto_0

    .line 204
    .end local v2    # "_result":[B
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->release()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    nop

    .line 363
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
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
