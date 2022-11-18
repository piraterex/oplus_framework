.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final blacklist TRANSACTION_checkSmsShortCodeDestination:I = 0x1c

.field static final greylist-max-o TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x3

.field static final greylist-max-o TRANSACTION_createAppSpecificSmsToken:I = 0x1a

.field static final blacklist TRANSACTION_createAppSpecificSmsTokenWithPackageInfo:I = 0x1b

.field static final greylist-max-o TRANSACTION_disableCellBroadcastForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0xd

.field static final greylist-max-o TRANSACTION_enableCellBroadcastForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0xc

.field static final greylist-max-o TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x1

.field static final blacklist TRANSACTION_getCarrierConfigValuesForSubscriber:I = 0x19

.field static final greylist-max-o TRANSACTION_getImsSmsFormatForSubscriber:I = 0x15

.field static final greylist-max-o TRANSACTION_getPreferredSmsSubscription:I = 0x14

.field static final greylist-max-o TRANSACTION_getPremiumSmsPermission:I = 0xe

.field static final greylist-max-o TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0xf

.field static final blacklist TRANSACTION_getSmsCapacityOnIccForSubscriber:I = 0x1f

.field static final blacklist TRANSACTION_getSmscAddressFromIccEfForSubscriber:I = 0x1d

.field static final greylist-max-o TRANSACTION_injectSmsPduForSubscriber:I = 0x7

.field static final greylist-max-o TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x12

.field static final greylist-max-o TRANSACTION_isSMSPromptEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isSmsSimPickActivityNeeded:I = 0x13

.field static final blacklist TRANSACTION_resetAllCellBroadcastRanges:I = 0x20

.field static final greylist-max-o TRANSACTION_sendDataForSubscriber:I = 0x4

.field static final greylist-max-o TRANSACTION_sendMultipartTextForSubscriber:I = 0x8

.field static final greylist-max-o TRANSACTION_sendMultipartTextForSubscriberWithOptions:I = 0x9

.field static final greylist-max-o TRANSACTION_sendStoredMultipartText:I = 0x18

.field static final greylist-max-o TRANSACTION_sendStoredText:I = 0x17

.field static final greylist-max-o TRANSACTION_sendTextForSubscriber:I = 0x5

.field static final greylist-max-o TRANSACTION_sendTextForSubscriberWithOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_setPremiumSmsPermission:I = 0x10

.field static final greylist-max-o TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_setSmscAddressOnIccEfForSubscriber:I = 0x1e

.field static final greylist-max-o TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 596
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 597
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 605
    if-nez p0, :cond_0

    .line 606
    const/4 v0, 0x0

    return-object v0

    .line 608
    :cond_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 609
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    .line 610
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISms;

    return-object v1

    .line 612
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 621
    packed-switch p0, :pswitch_data_0

    .line 753
    const/4 v0, 0x0

    return-object v0

    .line 749
    :pswitch_0
    const-string/jumbo v0, "resetAllCellBroadcastRanges"

    return-object v0

    .line 745
    :pswitch_1
    const-string v0, "getSmsCapacityOnIccForSubscriber"

    return-object v0

    .line 741
    :pswitch_2
    const-string/jumbo v0, "setSmscAddressOnIccEfForSubscriber"

    return-object v0

    .line 737
    :pswitch_3
    const-string v0, "getSmscAddressFromIccEfForSubscriber"

    return-object v0

    .line 733
    :pswitch_4
    const-string v0, "checkSmsShortCodeDestination"

    return-object v0

    .line 729
    :pswitch_5
    const-string v0, "createAppSpecificSmsTokenWithPackageInfo"

    return-object v0

    .line 725
    :pswitch_6
    const-string v0, "createAppSpecificSmsToken"

    return-object v0

    .line 721
    :pswitch_7
    const-string v0, "getCarrierConfigValuesForSubscriber"

    return-object v0

    .line 717
    :pswitch_8
    const-string/jumbo v0, "sendStoredMultipartText"

    return-object v0

    .line 713
    :pswitch_9
    const-string/jumbo v0, "sendStoredText"

    return-object v0

    .line 709
    :pswitch_a
    const-string/jumbo v0, "isSMSPromptEnabled"

    return-object v0

    .line 705
    :pswitch_b
    const-string v0, "getImsSmsFormatForSubscriber"

    return-object v0

    .line 701
    :pswitch_c
    const-string v0, "getPreferredSmsSubscription"

    return-object v0

    .line 697
    :pswitch_d
    const-string/jumbo v0, "isSmsSimPickActivityNeeded"

    return-object v0

    .line 693
    :pswitch_e
    const-string v0, "isImsSmsSupportedForSubscriber"

    return-object v0

    .line 689
    :pswitch_f
    const-string/jumbo v0, "setPremiumSmsPermissionForSubscriber"

    return-object v0

    .line 685
    :pswitch_10
    const-string/jumbo v0, "setPremiumSmsPermission"

    return-object v0

    .line 681
    :pswitch_11
    const-string v0, "getPremiumSmsPermissionForSubscriber"

    return-object v0

    .line 677
    :pswitch_12
    const-string v0, "getPremiumSmsPermission"

    return-object v0

    .line 673
    :pswitch_13
    const-string v0, "disableCellBroadcastRangeForSubscriber"

    return-object v0

    .line 669
    :pswitch_14
    const-string v0, "enableCellBroadcastRangeForSubscriber"

    return-object v0

    .line 665
    :pswitch_15
    const-string v0, "disableCellBroadcastForSubscriber"

    return-object v0

    .line 661
    :pswitch_16
    const-string v0, "enableCellBroadcastForSubscriber"

    return-object v0

    .line 657
    :pswitch_17
    const-string/jumbo v0, "sendMultipartTextForSubscriberWithOptions"

    return-object v0

    .line 653
    :pswitch_18
    const-string/jumbo v0, "sendMultipartTextForSubscriber"

    return-object v0

    .line 649
    :pswitch_19
    const-string v0, "injectSmsPduForSubscriber"

    return-object v0

    .line 645
    :pswitch_1a
    const-string/jumbo v0, "sendTextForSubscriberWithOptions"

    return-object v0

    .line 641
    :pswitch_1b
    const-string/jumbo v0, "sendTextForSubscriber"

    return-object v0

    .line 637
    :pswitch_1c
    const-string/jumbo v0, "sendDataForSubscriber"

    return-object v0

    .line 633
    :pswitch_1d
    const-string v0, "copyMessageToIccEfForSubscriber"

    return-object v0

    .line 629
    :pswitch_1e
    const-string/jumbo v0, "updateMessageOnIccEfForSubscriber"

    return-object v0

    .line 625
    :pswitch_1f
    const-string v0, "getAllMessagesFromIccEfForSubscriber"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 616
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2432
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 760
    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 764
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "com.android.internal.telephony.ISms"

    .line 765
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 766
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 776
    packed-switch v14, :pswitch_data_1

    .line 1280
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 772
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    return v10

    .line 1271
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1272
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1273
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->resetAllCellBroadcastRanges(I)Z

    move-result v1

    .line 1274
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1276
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1261
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1262
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v1

    .line 1264
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1247
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1251
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 1254
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1256
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1235
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1237
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1242
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1217
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1219
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1221
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1223
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1225
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1226
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1228
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1201
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1203
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 1208
    .local v3, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v4

    .line 1210
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1187
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1189
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1192
    .local v2, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1193
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    .line 1194
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1196
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1178
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1180
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1182
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1156
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1158
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1160
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1162
    .local v16, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/Uri;

    .line 1164
    .local v17, "_arg3":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1166
    .local v18, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1168
    .local v19, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1169
    .local v20, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1135
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Landroid/net/Uri;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v20    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1137
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1139
    .restart local v9    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1141
    .restart local v16    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/Uri;

    .line 1143
    .restart local v17    # "_arg3":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1145
    .restart local v18    # "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/app/PendingIntent;

    .line 1147
    .local v19, "_arg5":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/PendingIntent;

    .line 1148
    .local v20, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1127
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Landroid/net/Uri;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Landroid/app/PendingIntent;
    .end local v20    # "_arg6":Landroid/app/PendingIntent;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v0

    .line 1128
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1130
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1118
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1119
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1110
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    move-result v0

    .line 1111
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1101
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1102
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    move-result v1

    .line 1104
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1106
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1091
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1092
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    move-result v1

    .line 1094
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1096
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1078
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1067
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1072
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1055
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1057
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result v2

    .line 1060
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1045
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v1

    .line 1048
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1029
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1031
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1035
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1036
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v4

    .line 1038
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1040
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1013
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1015
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1017
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1019
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1020
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v4

    .line 1022
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1024
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 999
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1001
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1003
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1004
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    move-result v3

    .line 1006
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1008
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 985
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 987
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 990
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    move-result v3

    .line 992
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 994
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 954
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 956
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 958
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 960
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 962
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 964
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 966
    .local v21, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 968
    .local v22, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 970
    .local v23, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 972
    .local v24, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 974
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 976
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 977
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move/from16 v28, v10

    move/from16 v10, v25

    move-object/from16 v29, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    goto/16 :goto_0

    .line 927
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v23    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v24    # "_arg8":Z
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 929
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 931
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 933
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 935
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 937
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 939
    .local v20, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    .line 941
    .local v21, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 943
    .local v22, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 945
    .local v23, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 946
    .local v24, "_arg9":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-wide/from16 v10, v24

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    goto/16 :goto_0

    .line 912
    .end local v12    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v22    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v23    # "_arg8":Z
    .end local v24    # "_arg9":J
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 914
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 916
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 919
    .local v3, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    goto/16 :goto_0

    .line 881
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 883
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 885
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 887
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 889
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 891
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 893
    .local v21, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/PendingIntent;

    .line 895
    .local v22, "_arg6":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/PendingIntent;

    .line 897
    .local v23, "_arg7":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 899
    .local v24, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 901
    .restart local v25    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 903
    .restart local v26    # "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 904
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    goto/16 :goto_0

    .line 854
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    .end local v24    # "_arg8":Z
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 856
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 858
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 860
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 862
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 864
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 866
    .local v20, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 868
    .local v21, "_arg6":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/PendingIntent;

    .line 870
    .local v22, "_arg7":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 872
    .local v23, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 873
    .local v24, "_arg9":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-wide/from16 v10, v24

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto/16 :goto_0

    .line 829
    .end local v12    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Landroid/app/PendingIntent;
    .end local v22    # "_arg7":Landroid/app/PendingIntent;
    .end local v23    # "_arg8":Z
    .end local v24    # "_arg9":J
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 831
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 833
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 835
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 837
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 839
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 841
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 843
    .local v19, "_arg6":[B
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/PendingIntent;

    .line 845
    .local v20, "_arg7":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 846
    .local v21, "_arg8":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto/16 :goto_0

    .line 811
    .end local v10    # "_arg0":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":[B
    .end local v20    # "_arg7":Landroid/app/PendingIntent;
    .end local v21    # "_arg8":Landroid/app/PendingIntent;
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_1e
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 813
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 815
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 817
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 819
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 820
    .local v10, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v0

    .line 822
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 824
    goto :goto_0

    .line 793
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v10    # "_arg4":[B
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 795
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 797
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 799
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 801
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 802
    .restart local v10    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v0

    .line 804
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 806
    goto :goto_0

    .line 781
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":[B
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 786
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 788
    nop

    .line 1283
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :goto_0
    return v28

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
