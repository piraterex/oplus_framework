.class public abstract Landroid/nfc/INfcCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcCardEmulation"

.field static final greylist-max-o TRANSACTION_getAidGroupForService:I = 0x8

.field static final blacklist TRANSACTION_getPreferredPaymentService:I = 0xe

.field static final greylist-max-o TRANSACTION_getServices:I = 0xa

.field static final blacklist TRANSACTION_isDefaultPaymentRegistered:I = 0xf

.field static final greylist-max-o TRANSACTION_isDefaultServiceForAid:I = 0x2

.field static final greylist-max-o TRANSACTION_isDefaultServiceForCategory:I = 0x1

.field static final greylist-max-o TRANSACTION_registerAidGroupForService:I = 0x5

.field static final greylist-max-o TRANSACTION_removeAidGroupForService:I = 0x9

.field static final greylist-max-o TRANSACTION_setDefaultForNextTap:I = 0x4

.field static final greylist-max-o TRANSACTION_setDefaultServiceForCategory:I = 0x3

.field static final blacklist TRANSACTION_setOffHostForService:I = 0x6

.field static final greylist-max-o TRANSACTION_setPreferredService:I = 0xb

.field static final greylist-max-o TRANSACTION_supportsAidPrefixRegistration:I = 0xd

.field static final blacklist TRANSACTION_unsetOffHostForService:I = 0x7

.field static final greylist-max-o TRANSACTION_unsetPreferredService:I = 0xc


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcCardEmulation;

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcCardEmulation;

    return-object v1

    .line 97
    :cond_1
    new-instance v1, Landroid/nfc/INfcCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 166
    :pswitch_0
    const-string v0, "isDefaultPaymentRegistered"

    return-object v0

    .line 162
    :pswitch_1
    const-string v0, "getPreferredPaymentService"

    return-object v0

    .line 158
    :pswitch_2
    const-string v0, "supportsAidPrefixRegistration"

    return-object v0

    .line 154
    :pswitch_3
    const-string/jumbo v0, "unsetPreferredService"

    return-object v0

    .line 150
    :pswitch_4
    const-string v0, "setPreferredService"

    return-object v0

    .line 146
    :pswitch_5
    const-string v0, "getServices"

    return-object v0

    .line 142
    :pswitch_6
    const-string v0, "removeAidGroupForService"

    return-object v0

    .line 138
    :pswitch_7
    const-string v0, "getAidGroupForService"

    return-object v0

    .line 134
    :pswitch_8
    const-string/jumbo v0, "unsetOffHostForService"

    return-object v0

    .line 130
    :pswitch_9
    const-string v0, "setOffHostForService"

    return-object v0

    .line 126
    :pswitch_a
    const-string v0, "registerAidGroupForService"

    return-object v0

    .line 122
    :pswitch_b
    const-string v0, "setDefaultForNextTap"

    return-object v0

    .line 118
    :pswitch_c
    const-string v0, "setDefaultServiceForCategory"

    return-object v0

    .line 114
    :pswitch_d
    const-string v0, "isDefaultServiceForAid"

    return-object v0

    .line 110
    :pswitch_e
    const-string v0, "isDefaultServiceForCategory"

    return-object v0

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

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 696
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 177
    invoke-static {p1}, Landroid/nfc/INfcCardEmulation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 181
    const-string v0, "android.nfc.INfcCardEmulation"

    .line 182
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 193
    packed-switch p1, :pswitch_data_1

    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v1

    .line 365
    :pswitch_1
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultPaymentRegistered()Z

    move-result v2

    .line 366
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 368
    goto/16 :goto_0

    .line 356
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 359
    .local v3, "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 361
    goto/16 :goto_0

    .line 348
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    :pswitch_3
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAidPrefixRegistration()Z

    move-result v2

    .line 349
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    goto/16 :goto_0

    .line 341
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->unsetPreferredService()Z

    move-result v2

    .line 342
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    goto/16 :goto_0

    .line 332
    .end local v2    # "_result":Z
    :pswitch_5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 333
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v3

    .line 335
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    goto/16 :goto_0

    .line 320
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 325
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    goto/16 :goto_0

    .line 306
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 310
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 313
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 296
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 297
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v5

    .line 299
    .local v5, "_result":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_0

    .line 280
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 283
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 285
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 287
    goto/16 :goto_0

    .line 266
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 270
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 273
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 275
    goto/16 :goto_0

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 256
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    sget-object v4, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/AidGroup;

    .line 257
    .local v4, "_arg2":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v5

    .line 259
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    goto :goto_0

    .line 240
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Landroid/nfc/cardemulation/AidGroup;
    .end local v5    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 243
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 245
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto :goto_0

    .line 226
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 230
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 233
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto :goto_0

    .line 212
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 216
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 219
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 221
    goto :goto_0

    .line 198
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 202
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 205
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    nop

    .line 375
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
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
