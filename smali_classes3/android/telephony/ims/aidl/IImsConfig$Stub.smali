.class public abstract Landroid/telephony/ims/aidl/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addImsConfigCallback:I = 0x1

.field static final blacklist TRANSACTION_addRcsConfigCallback:I = 0xa

.field static final blacklist TRANSACTION_getConfigInt:I = 0x3

.field static final blacklist TRANSACTION_getConfigString:I = 0x4

.field static final blacklist TRANSACTION_notifyIntImsConfigChanged:I = 0xe

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x8

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationRemoved:I = 0x9

.field static final blacklist TRANSACTION_notifyStringImsConfigChanged:I = 0xf

.field static final blacklist TRANSACTION_removeImsConfigCallback:I = 0x2

.field static final blacklist TRANSACTION_removeRcsConfigCallback:I = 0xb

.field static final blacklist TRANSACTION_setConfigInt:I = 0x5

.field static final blacklist TRANSACTION_setConfigString:I = 0x6

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0xd

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0xc

.field static final blacklist TRANSACTION_updateImsCarrierConfigs:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_1

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsConfig;

    return-object v1

    .line 93
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_0
    const-string/jumbo v0, "notifyStringImsConfigChanged"

    return-object v0

    .line 158
    :pswitch_1
    const-string/jumbo v0, "notifyIntImsConfigChanged"

    return-object v0

    .line 154
    :pswitch_2
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    .line 150
    :pswitch_3
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    .line 146
    :pswitch_4
    const-string/jumbo v0, "removeRcsConfigCallback"

    return-object v0

    .line 142
    :pswitch_5
    const-string v0, "addRcsConfigCallback"

    return-object v0

    .line 138
    :pswitch_6
    const-string/jumbo v0, "notifyRcsAutoConfigurationRemoved"

    return-object v0

    .line 134
    :pswitch_7
    const-string/jumbo v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    .line 130
    :pswitch_8
    const-string/jumbo v0, "updateImsCarrierConfigs"

    return-object v0

    .line 126
    :pswitch_9
    const-string/jumbo v0, "setConfigString"

    return-object v0

    .line 122
    :pswitch_a
    const-string/jumbo v0, "setConfigInt"

    return-object v0

    .line 118
    :pswitch_b
    const-string v0, "getConfigString"

    return-object v0

    .line 114
    :pswitch_c
    const-string v0, "getConfigInt"

    return-object v0

    .line 110
    :pswitch_d
    const-string/jumbo v0, "removeImsConfigCallback"

    return-object v0

    .line 106
    :pswitch_e
    const-string v0, "addImsConfigCallback"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 617
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 177
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 189
    packed-switch p1, :pswitch_data_1

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 185
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v1

    .line 326
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyStringImsConfigChanged(ILjava/lang/String;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_0

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 318
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyIntImsConfigChanged(II)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_0

    .line 306
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsClientConfiguration;

    .line 307
    .local v2, "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_4
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->triggerRcsReconfiguration()V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_0

    .line 291
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 292
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 283
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto/16 :goto_0

    .line 275
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_7
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationRemoved()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 265
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 267
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 268
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Z
    :pswitch_9
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 257
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigString(ILjava/lang/String;)I

    move-result v4

    .line 249
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    goto :goto_0

    .line 232
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigInt(II)I

    move-result v4

    .line 237
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    goto :goto_0

    .line 212
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigInt(I)I

    move-result v3

    .line 215
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    .line 204
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_0

    .line 194
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    .line 195
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    nop

    .line 339
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
