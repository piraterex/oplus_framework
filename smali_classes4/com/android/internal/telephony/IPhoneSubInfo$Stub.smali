.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final greylist-max-o TRANSACTION_getCarrierInfoForImsiEncryption:I = 0x17

.field static final greylist TRANSACTION_getDeviceId:I = 0x1

.field static final greylist-max-o TRANSACTION_getDeviceIdForPhone:I = 0x4

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x2

.field static final greylist-max-o TRANSACTION_getDeviceSvn:I = 0x6

.field static final greylist-max-o TRANSACTION_getDeviceSvnUsingSubId:I = 0x7

.field static final greylist-max-o TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_getIccSerialNumber:I = 0xc

.field static final greylist-max-o TRANSACTION_getIccSerialNumberForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_getIccSerialNumberWithFeature:I = 0xd

.field static final greylist-max-o TRANSACTION_getIccSimChallengeResponse:I = 0x21

.field static final greylist-max-o TRANSACTION_getImeiForSubscriber:I = 0x5

.field static final greylist-max-o TRANSACTION_getIsimDomain:I = 0x1d

.field static final greylist-max-o TRANSACTION_getIsimImpi:I = 0x1c

.field static final greylist-max-o TRANSACTION_getIsimImpu:I = 0x1e

.field static final greylist-max-o TRANSACTION_getIsimIst:I = 0x1f

.field static final greylist-max-o TRANSACTION_getIsimPcscf:I = 0x20

.field static final greylist-max-o TRANSACTION_getLine1AlphaTag:I = 0x11

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x12

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0xf

.field static final greylist-max-o TRANSACTION_getLine1NumberForSubscriber:I = 0x10

.field static final greylist-max-o TRANSACTION_getMsisdn:I = 0x13

.field static final greylist-max-o TRANSACTION_getMsisdnForSubscriber:I = 0x14

.field static final greylist-max-o TRANSACTION_getNaiForSubscriber:I = 0x3

.field static final greylist-max-o TRANSACTION_getSubscriberId:I = 0x8

.field static final greylist-max-o TRANSACTION_getSubscriberIdForSubscriber:I = 0xa

.field static final blacklist TRANSACTION_getSubscriberIdWithFeature:I = 0x9

.field static final greylist-max-o TRANSACTION_getVoiceMailAlphaTag:I = 0x1a

.field static final greylist-max-o TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x1b

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x15

.field static final greylist-max-o TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x16

.field static final greylist-max-o TRANSACTION_resetCarrierKeysForImsiEncryption:I = 0x19

.field static final greylist-max-o TRANSACTION_setCarrierInfoForImsiEncryption:I = 0x18


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 229
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 237
    if-nez p0, :cond_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 241
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 242
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v1

    .line 244
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 253
    packed-switch p0, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 385
    :pswitch_0
    const-string v0, "getIccSimChallengeResponse"

    return-object v0

    .line 381
    :pswitch_1
    const-string v0, "getIsimPcscf"

    return-object v0

    .line 377
    :pswitch_2
    const-string v0, "getIsimIst"

    return-object v0

    .line 373
    :pswitch_3
    const-string v0, "getIsimImpu"

    return-object v0

    .line 369
    :pswitch_4
    const-string v0, "getIsimDomain"

    return-object v0

    .line 365
    :pswitch_5
    const-string v0, "getIsimImpi"

    return-object v0

    .line 361
    :pswitch_6
    const-string v0, "getVoiceMailAlphaTagForSubscriber"

    return-object v0

    .line 357
    :pswitch_7
    const-string v0, "getVoiceMailAlphaTag"

    return-object v0

    .line 353
    :pswitch_8
    const-string/jumbo v0, "resetCarrierKeysForImsiEncryption"

    return-object v0

    .line 349
    :pswitch_9
    const-string/jumbo v0, "setCarrierInfoForImsiEncryption"

    return-object v0

    .line 345
    :pswitch_a
    const-string v0, "getCarrierInfoForImsiEncryption"

    return-object v0

    .line 341
    :pswitch_b
    const-string v0, "getVoiceMailNumberForSubscriber"

    return-object v0

    .line 337
    :pswitch_c
    const-string v0, "getVoiceMailNumber"

    return-object v0

    .line 333
    :pswitch_d
    const-string v0, "getMsisdnForSubscriber"

    return-object v0

    .line 329
    :pswitch_e
    const-string v0, "getMsisdn"

    return-object v0

    .line 325
    :pswitch_f
    const-string v0, "getLine1AlphaTagForSubscriber"

    return-object v0

    .line 321
    :pswitch_10
    const-string v0, "getLine1AlphaTag"

    return-object v0

    .line 317
    :pswitch_11
    const-string v0, "getLine1NumberForSubscriber"

    return-object v0

    .line 313
    :pswitch_12
    const-string v0, "getLine1Number"

    return-object v0

    .line 309
    :pswitch_13
    const-string v0, "getIccSerialNumberForSubscriber"

    return-object v0

    .line 305
    :pswitch_14
    const-string v0, "getIccSerialNumberWithFeature"

    return-object v0

    .line 301
    :pswitch_15
    const-string v0, "getIccSerialNumber"

    return-object v0

    .line 297
    :pswitch_16
    const-string v0, "getGroupIdLevel1ForSubscriber"

    return-object v0

    .line 293
    :pswitch_17
    const-string v0, "getSubscriberIdForSubscriber"

    return-object v0

    .line 289
    :pswitch_18
    const-string v0, "getSubscriberIdWithFeature"

    return-object v0

    .line 285
    :pswitch_19
    const-string v0, "getSubscriberId"

    return-object v0

    .line 281
    :pswitch_1a
    const-string v0, "getDeviceSvnUsingSubId"

    return-object v0

    .line 277
    :pswitch_1b
    const-string v0, "getDeviceSvn"

    return-object v0

    .line 273
    :pswitch_1c
    const-string v0, "getImeiForSubscriber"

    return-object v0

    .line 269
    :pswitch_1d
    const-string v0, "getDeviceIdForPhone"

    return-object v0

    .line 265
    :pswitch_1e
    const-string v0, "getNaiForSubscriber"

    return-object v0

    .line 261
    :pswitch_1f
    const-string v0, "getDeviceIdWithFeature"

    return-object v0

    .line 257
    :pswitch_20
    const-string v0, "getDeviceId"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 248
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1596
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 396
    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.internal.telephony.IPhoneSubInfo"

    .line 401
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 402
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 412
    packed-switch v8, :pswitch_data_1

    .line 830
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 408
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    return v12

    .line 811
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 813
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 815
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 817
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 819
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 821
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 822
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 826
    goto/16 :goto_0

    .line 801
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 806
    goto/16 :goto_0

    .line 791
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 792
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    goto/16 :goto_0

    .line 781
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 786
    goto/16 :goto_0

    .line 771
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 772
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    goto/16 :goto_0

    .line 761
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 764
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    goto/16 :goto_0

    .line 747
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 749
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    goto/16 :goto_0

    .line 735
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    goto/16 :goto_0

    .line 724
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 727
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_0

    .line 711
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 713
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/telephony/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ImsiEncryptionInfo;

    .line 716
    .local v2, "_arg2":Landroid/telephony/ImsiEncryptionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_0

    .line 697
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telephony/ImsiEncryptionInfo;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v3

    .line 704
    .local v3, "_result":Landroid/telephony/ImsiEncryptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 706
    goto/16 :goto_0

    .line 683
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/ImsiEncryptionInfo;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 685
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    goto/16 :goto_0

    .line 671
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 661
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 664
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    goto/16 :goto_0

    .line 645
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 648
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    goto/16 :goto_0

    .line 631
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 633
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 640
    goto/16 :goto_0

    .line 619
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    goto/16 :goto_0

    .line 579
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 581
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 586
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    goto/16 :goto_0

    .line 567
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    goto/16 :goto_0

    .line 557
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    goto/16 :goto_0

    .line 543
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    goto/16 :goto_0

    .line 529
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 536
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    goto/16 :goto_0

    .line 517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    goto/16 :goto_0

    .line 481
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    goto :goto_0

    .line 453
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    goto :goto_0

    .line 439
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    goto :goto_0

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 430
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    goto :goto_0

    .line 417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    nop

    .line 833
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
    .end packed-switch
.end method
