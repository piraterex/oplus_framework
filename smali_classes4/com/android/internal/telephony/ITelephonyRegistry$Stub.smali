.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final blacklist TRANSACTION_addCarrierPrivilegesCallback:I = 0x2b

.field static final blacklist TRANSACTION_addOnOpportunisticSubscriptionsChangedListener:I = 0x2

.field static final greylist-max-o TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final blacklist TRANSACTION_listenWithEventList:I = 0x4

.field static final blacklist TRANSACTION_notifyActiveDataSubIdChanged:I = 0x1e

.field static final blacklist TRANSACTION_notifyAllowedNetworkTypesChanged:I = 0x29

.field static final blacklist TRANSACTION_notifyBarringInfoChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xb

.field static final blacklist TRANSACTION_notifyCallQualityChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_notifyCallState:I = 0x6

.field static final blacklist TRANSACTION_notifyCallStateForAllSubs:I = 0x5

.field static final greylist-max-o TRANSACTION_notifyCarrierNetworkChange:I = 0x19

.field static final blacklist TRANSACTION_notifyCarrierNetworkChangeWithSubId:I = 0x1a

.field static final blacklist TRANSACTION_notifyCarrierPrivilegesChanged:I = 0x2d

.field static final blacklist TRANSACTION_notifyCarrierServiceChanged:I = 0x2e

.field static final greylist-max-o TRANSACTION_notifyCellInfo:I = 0x10

.field static final greylist-max-o TRANSACTION_notifyCellInfoForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_notifyCellLocationForSubscriber:I = 0xf

.field static final greylist-max-o TRANSACTION_notifyDataActivity:I = 0xc

.field static final greylist-max-o TRANSACTION_notifyDataActivityForSubscriber:I = 0xd

.field static final greylist-max-o TRANSACTION_notifyDataConnectionForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_notifyDataEnabled:I = 0x28

.field static final greylist-max-o TRANSACTION_notifyDisconnectCause:I = 0x12

.field static final blacklist TRANSACTION_notifyDisplayInfoChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyEmergencyNumberList:I = 0x20

.field static final blacklist TRANSACTION_notifyImsDisconnectCause:I = 0x24

.field static final blacklist TRANSACTION_notifyLinkCapacityEstimateChanged:I = 0x2a

.field static final greylist-max-o TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_notifyOpportunisticSubscriptionInfoChanged:I = 0x18

.field static final blacklist TRANSACTION_notifyOutgoingEmergencyCall:I = 0x21

.field static final blacklist TRANSACTION_notifyOutgoingEmergencySms:I = 0x22

.field static final blacklist TRANSACTION_notifyPhoneCapabilityChanged:I = 0x1d

.field static final blacklist TRANSACTION_notifyPhysicalChannelConfigForSubscriber:I = 0x27

.field static final greylist-max-o TRANSACTION_notifyPreciseCallState:I = 0x11

.field static final blacklist TRANSACTION_notifyRadioPowerStateChanged:I = 0x1f

.field static final blacklist TRANSACTION_notifyRegistrationFailed:I = 0x25

.field static final greylist-max-o TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final greylist-max-o TRANSACTION_notifySignalStrengthForPhoneId:I = 0x8

.field static final greylist-max-o TRANSACTION_notifySimActivationStateChangedForPhoneId:I = 0x15

.field static final blacklist TRANSACTION_notifySrvccStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySubscriptionInfoChanged:I = 0x17

.field static final greylist-max-o TRANSACTION_notifyUserMobileDataStateChangedForPhoneId:I = 0x1b

.field static final blacklist TRANSACTION_removeCarrierPrivilegesCallback:I = 0x2c

.field static final greylist-max-o TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 160
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 172
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    .line 173
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephonyRegistry;

    return-object v1

    .line 175
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 184
    packed-switch p0, :pswitch_data_0

    .line 372
    const/4 v0, 0x0

    return-object v0

    .line 368
    :pswitch_0
    const-string/jumbo v0, "notifyCarrierServiceChanged"

    return-object v0

    .line 364
    :pswitch_1
    const-string/jumbo v0, "notifyCarrierPrivilegesChanged"

    return-object v0

    .line 360
    :pswitch_2
    const-string/jumbo v0, "removeCarrierPrivilegesCallback"

    return-object v0

    .line 356
    :pswitch_3
    const-string v0, "addCarrierPrivilegesCallback"

    return-object v0

    .line 352
    :pswitch_4
    const-string/jumbo v0, "notifyLinkCapacityEstimateChanged"

    return-object v0

    .line 348
    :pswitch_5
    const-string/jumbo v0, "notifyAllowedNetworkTypesChanged"

    return-object v0

    .line 344
    :pswitch_6
    const-string/jumbo v0, "notifyDataEnabled"

    return-object v0

    .line 340
    :pswitch_7
    const-string/jumbo v0, "notifyPhysicalChannelConfigForSubscriber"

    return-object v0

    .line 336
    :pswitch_8
    const-string/jumbo v0, "notifyBarringInfoChanged"

    return-object v0

    .line 332
    :pswitch_9
    const-string/jumbo v0, "notifyRegistrationFailed"

    return-object v0

    .line 328
    :pswitch_a
    const-string/jumbo v0, "notifyImsDisconnectCause"

    return-object v0

    .line 324
    :pswitch_b
    const-string/jumbo v0, "notifyCallQualityChanged"

    return-object v0

    .line 320
    :pswitch_c
    const-string/jumbo v0, "notifyOutgoingEmergencySms"

    return-object v0

    .line 316
    :pswitch_d
    const-string/jumbo v0, "notifyOutgoingEmergencyCall"

    return-object v0

    .line 312
    :pswitch_e
    const-string/jumbo v0, "notifyEmergencyNumberList"

    return-object v0

    .line 308
    :pswitch_f
    const-string/jumbo v0, "notifyRadioPowerStateChanged"

    return-object v0

    .line 304
    :pswitch_10
    const-string/jumbo v0, "notifyActiveDataSubIdChanged"

    return-object v0

    .line 300
    :pswitch_11
    const-string/jumbo v0, "notifyPhoneCapabilityChanged"

    return-object v0

    .line 296
    :pswitch_12
    const-string/jumbo v0, "notifyDisplayInfoChanged"

    return-object v0

    .line 292
    :pswitch_13
    const-string/jumbo v0, "notifyUserMobileDataStateChangedForPhoneId"

    return-object v0

    .line 288
    :pswitch_14
    const-string/jumbo v0, "notifyCarrierNetworkChangeWithSubId"

    return-object v0

    .line 284
    :pswitch_15
    const-string/jumbo v0, "notifyCarrierNetworkChange"

    return-object v0

    .line 280
    :pswitch_16
    const-string/jumbo v0, "notifyOpportunisticSubscriptionInfoChanged"

    return-object v0

    .line 276
    :pswitch_17
    const-string/jumbo v0, "notifySubscriptionInfoChanged"

    return-object v0

    .line 272
    :pswitch_18
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    return-object v0

    .line 268
    :pswitch_19
    const-string/jumbo v0, "notifySimActivationStateChangedForPhoneId"

    return-object v0

    .line 264
    :pswitch_1a
    const-string/jumbo v0, "notifySrvccStateChanged"

    return-object v0

    .line 260
    :pswitch_1b
    const-string/jumbo v0, "notifyCellInfoForSubscriber"

    return-object v0

    .line 256
    :pswitch_1c
    const-string/jumbo v0, "notifyDisconnectCause"

    return-object v0

    .line 252
    :pswitch_1d
    const-string/jumbo v0, "notifyPreciseCallState"

    return-object v0

    .line 248
    :pswitch_1e
    const-string/jumbo v0, "notifyCellInfo"

    return-object v0

    .line 244
    :pswitch_1f
    const-string/jumbo v0, "notifyCellLocationForSubscriber"

    return-object v0

    .line 240
    :pswitch_20
    const-string/jumbo v0, "notifyDataConnectionForSubscriber"

    return-object v0

    .line 236
    :pswitch_21
    const-string/jumbo v0, "notifyDataActivityForSubscriber"

    return-object v0

    .line 232
    :pswitch_22
    const-string/jumbo v0, "notifyDataActivity"

    return-object v0

    .line 228
    :pswitch_23
    const-string/jumbo v0, "notifyCallForwardingChangedForSubscriber"

    return-object v0

    .line 224
    :pswitch_24
    const-string/jumbo v0, "notifyCallForwardingChanged"

    return-object v0

    .line 220
    :pswitch_25
    const-string/jumbo v0, "notifyMessageWaitingChangedForPhoneId"

    return-object v0

    .line 216
    :pswitch_26
    const-string/jumbo v0, "notifySignalStrengthForPhoneId"

    return-object v0

    .line 212
    :pswitch_27
    const-string/jumbo v0, "notifyServiceStateForPhoneId"

    return-object v0

    .line 208
    :pswitch_28
    const-string/jumbo v0, "notifyCallState"

    return-object v0

    .line 204
    :pswitch_29
    const-string/jumbo v0, "notifyCallStateForAllSubs"

    return-object v0

    .line 200
    :pswitch_2a
    const-string/jumbo v0, "listenWithEventList"

    return-object v0

    .line 196
    :pswitch_2b
    const-string/jumbo v0, "removeOnSubscriptionsChangedListener"

    return-object v0

    .line 192
    :pswitch_2c
    const-string v0, "addOnOpportunisticSubscriptionsChangedListener"

    return-object v0

    .line 188
    :pswitch_2d
    const-string v0, "addOnSubscriptionsChangedListener"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 179
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1816
    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 379
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "com.android.internal.telephony.ITelephonyRegistry"

    .line 384
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 385
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 395
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_1

    .line 973
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 391
    :pswitch_0
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    return v13

    .line 961
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 963
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 966
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierServiceChanged(ILjava/lang/String;I)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    goto/16 :goto_0

    .line 948
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 950
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 952
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 953
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V

    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_0

    .line 937
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":[I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v0

    .line 939
    .local v0, "_arg0":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_0

    .line 922
    .end local v0    # "_arg0":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 924
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v1

    .line 926
    .local v1, "_arg1":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_0

    .line 909
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 914
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_0

    .line 894
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 896
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 898
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 900
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 901
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyAllowedNetworkTypesChanged(IIIJ)V

    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_0

    .line 879
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 881
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 883
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 885
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 886
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataEnabled(IIZI)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_0

    .line 866
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 870
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 871
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 857
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo;

    .line 858
    .local v2, "_arg2":Landroid/telephony/BarringInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto/16 :goto_0

    .line 832
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/BarringInfo;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 834
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 836
    .local v15, "_arg1":I
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/CellIdentity;

    .line 838
    .local v16, "_arg2":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 840
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 842
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 844
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 845
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_0

    .line 821
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Landroid/telephony/CellIdentity;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 823
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .line 824
    .local v1, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    goto/16 :goto_0

    .line 806
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_c
    sget-object v0, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    .line 808
    .local v0, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 810
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 812
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 813
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_0

    .line 793
    .end local v0    # "_arg0":Landroid/telephony/CallQuality;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 795
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 798
    .local v2, "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 785
    .restart local v2    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    goto/16 :goto_0

    .line 769
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 771
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyEmergencyNumberList(II)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_0

    .line 756
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 758
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 760
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 761
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRadioPowerStateChanged(III)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    goto/16 :goto_0

    .line 747
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 748
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyActiveDataSubIdChanged(I)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_0

    .line 738
    .end local v0    # "_arg0":I
    :pswitch_12
    sget-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneCapability;

    .line 739
    .local v0, "_arg0":Landroid/telephony/PhoneCapability;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_0

    .line 725
    .end local v0    # "_arg0":Landroid/telephony/PhoneCapability;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 727
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 729
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    .line 730
    .local v2, "_arg2":Landroid/telephony/TelephonyDisplayInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/TelephonyDisplayInfo;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 714
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 717
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto/16 :goto_0

    .line 701
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 703
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 704
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChangeWithSubId(IZ)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 693
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    goto/16 :goto_0

    .line 685
    .end local v0    # "_arg0":Z
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    goto/16 :goto_0

    .line 679
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_0

    .line 667
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 669
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 671
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 672
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(II[B)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 654
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimActivationStateChangedForPhoneId(IIII)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_0

    .line 641
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 644
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySrvccStateChanged(II)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_0

    .line 630
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 632
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 633
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 615
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 622
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(IIII)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_0

    .line 598
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 600
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 602
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 604
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 606
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 607
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(IIIII)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    goto/16 :goto_0

    .line 589
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1f
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 590
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_0

    .line 578
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 580
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 581
    .local v1, "_arg1":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_0

    .line 565
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/CellIdentity;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 567
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 569
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 570
    .local v2, "_arg2":Landroid/telephony/PreciseDataConnectionState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_0

    .line 554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/PreciseDataConnectionState;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_0

    .line 545
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 546
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_0

    .line 534
    .end local v0    # "_arg0":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 537
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_0

    .line 525
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 526
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_0

    .line 512
    .end local v0    # "_arg0":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 514
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 517
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_0

    .line 499
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 501
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 503
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .line 504
    .local v2, "_arg2":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/SignalStrength;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;

    .line 491
    .local v2, "_arg2":Landroid/telephony/ServiceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_0

    .line 471
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/ServiceState;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 477
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(IIILjava/lang/String;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_0

    .line 460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForAllSubs(ILjava/lang/String;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 439
    .local v15, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 441
    .local v16, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 443
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 445
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 447
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v20

    .line 449
    .local v20, "_arg5":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 451
    .local v21, "_arg6":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 452
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto :goto_0

    .line 426
    .end local v15    # "_arg0":Z
    .end local v16    # "_arg1":Z
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v21    # "_arg6":[I
    .end local v22    # "_arg7":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v1

    .line 429
    .local v1, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto :goto_0

    .line 413
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v2

    .line 418
    .local v2, "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto :goto_0

    .line 400
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v2

    .line 405
    .restart local v2    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    nop

    .line 976
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
