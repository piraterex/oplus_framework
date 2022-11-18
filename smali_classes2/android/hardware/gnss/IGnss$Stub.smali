.class public abstract Landroid/hardware/gnss/IGnss$Stub;
.super Landroid/os/Binder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnss$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_deleteAidingData:I = 0x13

.field static final blacklist TRANSACTION_getExtensionAGnss:I = 0xa

.field static final blacklist TRANSACTION_getExtensionAGnssRil:I = 0xb

.field static final blacklist TRANSACTION_getExtensionGnssAntennaInfo:I = 0x15

.field static final blacklist TRANSACTION_getExtensionGnssBatching:I = 0x7

.field static final blacklist TRANSACTION_getExtensionGnssConfiguration:I = 0x4

.field static final blacklist TRANSACTION_getExtensionGnssDebug:I = 0xc

.field static final blacklist TRANSACTION_getExtensionGnssGeofence:I = 0x8

.field static final blacklist TRANSACTION_getExtensionGnssMeasurement:I = 0x5

.field static final blacklist TRANSACTION_getExtensionGnssNavigationMessage:I = 0x9

.field static final blacklist TRANSACTION_getExtensionGnssPowerIndication:I = 0x6

.field static final blacklist TRANSACTION_getExtensionGnssVisibilityControl:I = 0xd

.field static final blacklist TRANSACTION_getExtensionMeasurementCorrections:I = 0x16

.field static final blacklist TRANSACTION_getExtensionPsds:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_injectBestLocation:I = 0x12

.field static final blacklist TRANSACTION_injectLocation:I = 0x11

.field static final blacklist TRANSACTION_injectTime:I = 0x10

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setPositionMode:I = 0x14

.field static final blacklist TRANSACTION_start:I = 0xe

.field static final blacklist TRANSACTION_startNmea:I = 0x19

.field static final blacklist TRANSACTION_startSvStatus:I = 0x17

.field static final blacklist TRANSACTION_stop:I = 0xf

.field static final blacklist TRANSACTION_stopNmea:I = 0x1a

.field static final blacklist TRANSACTION_stopSvStatus:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->markVintfStability()V

    .line 130
    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnss$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnss;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/gnss/IGnss;

    if-eqz v1, :cond_1

    .line 143
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnss;

    return-object v1

    .line 145
    :cond_1
    new-instance v1, Landroid/hardware/gnss/IGnss$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnss$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 149
    return-object p0
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

    .line 153
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 154
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 155
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    :cond_0
    sparse-switch v7, :sswitch_data_0

    .line 177
    packed-switch v7, :pswitch_data_0

    .line 372
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 161
    :sswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return v11

    .line 166
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v11

    .line 172
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v11

    .line 366
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->stopNmea()V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_0

    .line 360
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->startNmea()V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_0

    .line 354
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->stopSvStatus()V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_0

    .line 348
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->startSvStatus()V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_0

    .line 341
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;

    move-result-object v0

    .line 342
    .local v0, "_result":Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 344
    goto/16 :goto_0

    .line 334
    .end local v0    # "_result":Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssAntennaInfo()Landroid/hardware/gnss/IGnssAntennaInfo;

    move-result-object v0

    .line 335
    .local v0, "_result":Landroid/hardware/gnss/IGnssAntennaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 337
    goto/16 :goto_0

    .line 326
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssAntennaInfo;
    :pswitch_6
    sget-object v0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gnss/IGnss$PositionModeOptions;

    .line 327
    .local v0, "_arg0":Landroid/hardware/gnss/IGnss$PositionModeOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->setPositionMode(Landroid/hardware/gnss/IGnss$PositionModeOptions;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":Landroid/hardware/gnss/IGnss$PositionModeOptions;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->deleteAidingData(I)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":I
    :pswitch_8
    sget-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gnss/GnssLocation;

    .line 309
    .local v0, "_arg0":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/GnssLocation;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    :pswitch_9
    sget-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gnss/GnssLocation;

    .line 300
    .restart local v0    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->injectLocation(Landroid/hardware/gnss/GnssLocation;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 288
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 290
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 291
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/IGnss$Stub;->injectTime(JJI)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_0

    .line 279
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->stop()V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_0

    .line 273
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->start()V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto/16 :goto_0

    .line 266
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssVisibilityControl()Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;

    move-result-object v0

    .line 267
    .local v0, "_result":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 269
    goto/16 :goto_0

    .line 259
    .end local v0    # "_result":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/IGnssDebug;

    move-result-object v0

    .line 260
    .local v0, "_result":Landroid/hardware/gnss/IGnssDebug;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 262
    goto/16 :goto_0

    .line 252
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssDebug;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/IAGnssRil;

    move-result-object v0

    .line 253
    .local v0, "_result":Landroid/hardware/gnss/IAGnssRil;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 255
    goto/16 :goto_0

    .line 245
    .end local v0    # "_result":Landroid/hardware/gnss/IAGnssRil;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/IAGnss;

    move-result-object v0

    .line 246
    .local v0, "_result":Landroid/hardware/gnss/IAGnss;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 248
    goto :goto_0

    .line 238
    .end local v0    # "_result":Landroid/hardware/gnss/IAGnss;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/IGnssNavigationMessageInterface;

    move-result-object v0

    .line 239
    .local v0, "_result":Landroid/hardware/gnss/IGnssNavigationMessageInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 241
    goto :goto_0

    .line 231
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssNavigationMessageInterface;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssGeofence()Landroid/hardware/gnss/IGnssGeofence;

    move-result-object v0

    .line 232
    .local v0, "_result":Landroid/hardware/gnss/IGnssGeofence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 234
    goto :goto_0

    .line 224
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssGeofence;
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/IGnssBatching;

    move-result-object v0

    .line 225
    .local v0, "_result":Landroid/hardware/gnss/IGnssBatching;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 227
    goto :goto_0

    .line 217
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssBatching;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssPowerIndication()Landroid/hardware/gnss/IGnssPowerIndication;

    move-result-object v0

    .line 218
    .local v0, "_result":Landroid/hardware/gnss/IGnssPowerIndication;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 220
    goto :goto_0

    .line 210
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssPowerIndication;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/IGnssMeasurementInterface;

    move-result-object v0

    .line 211
    .local v0, "_result":Landroid/hardware/gnss/IGnssMeasurementInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 213
    goto :goto_0

    .line 203
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssMeasurementInterface;
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/IGnssConfiguration;

    move-result-object v0

    .line 204
    .local v0, "_result":Landroid/hardware/gnss/IGnssConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 206
    goto :goto_0

    .line 196
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssConfiguration;
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionPsds()Landroid/hardware/gnss/IGnssPsds;

    move-result-object v0

    .line 197
    .local v0, "_result":Landroid/hardware/gnss/IGnssPsds;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 199
    goto :goto_0

    .line 190
    .end local v0    # "_result":Landroid/hardware/gnss/IGnssPsds;
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->close()V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_0

    .line 182
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/IGnssCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssCallback;

    move-result-object v0

    .line 183
    .local v0, "_arg0":Landroid/hardware/gnss/IGnssCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->setCallback(Landroid/hardware/gnss/IGnssCallback;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    nop

    .line 375
    .end local v0    # "_arg0":Landroid/hardware/gnss/IGnssCallback;
    :goto_0
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_0
    .end packed-switch
.end method
