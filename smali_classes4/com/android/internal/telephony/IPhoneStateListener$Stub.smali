.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final blacklist TRANSACTION_onActiveDataSubIdChanged:I = 0x17

.field static final blacklist TRANSACTION_onAllowedNetworkTypesChanged:I = 0x23

.field static final blacklist TRANSACTION_onBarringInfoChanged:I = 0x20

.field static final blacklist TRANSACTION_onCallAttributesChanged:I = 0x19

.field static final blacklist TRANSACTION_onCallDisconnectCauseChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onCallStateChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final greylist-max-o TRANSACTION_onCellInfoChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onCellLocationChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final greylist-max-o TRANSACTION_onDataActivity:I = 0x9

.field static final greylist-max-o TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onDataConnectionStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onDataEnabledChanged:I = 0x22

.field static final blacklist TRANSACTION_onDisplayInfoChanged:I = 0x15

.field static final blacklist TRANSACTION_onEmergencyNumberListChanged:I = 0x1a

.field static final blacklist TRANSACTION_onImsCallDisconnectCauseChanged:I = 0x1e

.field static final blacklist TRANSACTION_onLegacyCallStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onLinkCapacityEstimateChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final blacklist TRANSACTION_onOutgoingEmergencyCall:I = 0x1b

.field static final blacklist TRANSACTION_onOutgoingEmergencySms:I = 0x1c

.field static final blacklist TRANSACTION_onPhoneCapabilityChanged:I = 0x16

.field static final blacklist TRANSACTION_onPhysicalChannelConfigChanged:I = 0x21

.field static final greylist-max-o TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onRadioPowerStateChanged:I = 0x18

.field static final blacklist TRANSACTION_onRegistrationFailed:I = 0x1f

.field static final greylist-max-o TRANSACTION_onServiceStateChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onSignalStrengthsChanged:I = 0xa

.field static final blacklist TRANSACTION_onSrvccStateChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onUserMobileDataStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_onVoiceActivationStateChanged:I = 0x10


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 131
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 143
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_1

    .line 144
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v1

    .line 146
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 155
    packed-switch p0, :pswitch_data_0

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 299
    :pswitch_0
    const-string/jumbo v0, "onLinkCapacityEstimateChanged"

    return-object v0

    .line 295
    :pswitch_1
    const-string/jumbo v0, "onAllowedNetworkTypesChanged"

    return-object v0

    .line 291
    :pswitch_2
    const-string/jumbo v0, "onDataEnabledChanged"

    return-object v0

    .line 287
    :pswitch_3
    const-string/jumbo v0, "onPhysicalChannelConfigChanged"

    return-object v0

    .line 283
    :pswitch_4
    const-string/jumbo v0, "onBarringInfoChanged"

    return-object v0

    .line 279
    :pswitch_5
    const-string/jumbo v0, "onRegistrationFailed"

    return-object v0

    .line 275
    :pswitch_6
    const-string/jumbo v0, "onImsCallDisconnectCauseChanged"

    return-object v0

    .line 271
    :pswitch_7
    const-string/jumbo v0, "onCallDisconnectCauseChanged"

    return-object v0

    .line 267
    :pswitch_8
    const-string/jumbo v0, "onOutgoingEmergencySms"

    return-object v0

    .line 263
    :pswitch_9
    const-string/jumbo v0, "onOutgoingEmergencyCall"

    return-object v0

    .line 259
    :pswitch_a
    const-string/jumbo v0, "onEmergencyNumberListChanged"

    return-object v0

    .line 255
    :pswitch_b
    const-string/jumbo v0, "onCallAttributesChanged"

    return-object v0

    .line 251
    :pswitch_c
    const-string/jumbo v0, "onRadioPowerStateChanged"

    return-object v0

    .line 247
    :pswitch_d
    const-string/jumbo v0, "onActiveDataSubIdChanged"

    return-object v0

    .line 243
    :pswitch_e
    const-string/jumbo v0, "onPhoneCapabilityChanged"

    return-object v0

    .line 239
    :pswitch_f
    const-string/jumbo v0, "onDisplayInfoChanged"

    return-object v0

    .line 235
    :pswitch_10
    const-string/jumbo v0, "onUserMobileDataStateChanged"

    return-object v0

    .line 231
    :pswitch_11
    const-string/jumbo v0, "onCarrierNetworkChange"

    return-object v0

    .line 227
    :pswitch_12
    const-string/jumbo v0, "onOemHookRawEvent"

    return-object v0

    .line 223
    :pswitch_13
    const-string/jumbo v0, "onDataActivationStateChanged"

    return-object v0

    .line 219
    :pswitch_14
    const-string/jumbo v0, "onVoiceActivationStateChanged"

    return-object v0

    .line 215
    :pswitch_15
    const-string/jumbo v0, "onSrvccStateChanged"

    return-object v0

    .line 211
    :pswitch_16
    const-string/jumbo v0, "onDataConnectionRealTimeInfoChanged"

    return-object v0

    .line 207
    :pswitch_17
    const-string/jumbo v0, "onPreciseDataConnectionStateChanged"

    return-object v0

    .line 203
    :pswitch_18
    const-string/jumbo v0, "onPreciseCallStateChanged"

    return-object v0

    .line 199
    :pswitch_19
    const-string/jumbo v0, "onCellInfoChanged"

    return-object v0

    .line 195
    :pswitch_1a
    const-string/jumbo v0, "onSignalStrengthsChanged"

    return-object v0

    .line 191
    :pswitch_1b
    const-string/jumbo v0, "onDataActivity"

    return-object v0

    .line 187
    :pswitch_1c
    const-string/jumbo v0, "onDataConnectionStateChanged"

    return-object v0

    .line 183
    :pswitch_1d
    const-string/jumbo v0, "onCallStateChanged"

    return-object v0

    .line 179
    :pswitch_1e
    const-string/jumbo v0, "onLegacyCallStateChanged"

    return-object v0

    .line 175
    :pswitch_1f
    const-string/jumbo v0, "onCellLocationChanged"

    return-object v0

    .line 171
    :pswitch_20
    const-string/jumbo v0, "onCallForwardingIndicatorChanged"

    return-object v0

    .line 167
    :pswitch_21
    const-string/jumbo v0, "onMessageWaitingIndicatorChanged"

    return-object v0

    .line 163
    :pswitch_22
    const-string/jumbo v0, "onSignalStrengthChanged"

    return-object v0

    .line 159
    :pswitch_23
    const-string/jumbo v0, "onServiceStateChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 150
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1146
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 310
    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 314
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.internal.telephony.IPhoneStateListener"

    .line 315
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 316
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 326
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 641
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 322
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    return v10

    .line 634
    :pswitch_1
    sget-object v0, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 635
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    .line 637
    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 627
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onAllowedNetworkTypesChanged(IJ)V

    .line 629
    goto/16 :goto_0

    .line 614
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 616
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataEnabledChanged(ZI)V

    .line 619
    goto/16 :goto_0

    .line 606
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_4
    sget-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 607
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    .line 609
    goto/16 :goto_0

    .line 598
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :pswitch_5
    sget-object v0, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BarringInfo;

    .line 599
    .local v0, "_arg0":Landroid/telephony/BarringInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    .line 601
    goto/16 :goto_0

    .line 582
    .end local v0    # "_arg0":Landroid/telephony/BarringInfo;
    :pswitch_6
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/CellIdentity;

    .line 584
    .local v12, "_arg0":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 586
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 588
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 590
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 591
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 593
    goto/16 :goto_0

    .line 574
    .end local v12    # "_arg0":Landroid/telephony/CellIdentity;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_7
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 575
    .local v0, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 577
    goto/16 :goto_0

    .line 564
    .end local v0    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallDisconnectCauseChanged(II)V

    .line 569
    goto/16 :goto_0

    .line 554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_9
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 556
    .local v0, "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    .line 559
    goto/16 :goto_0

    .line 544
    .end local v0    # "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    .end local v1    # "_arg1":I
    :pswitch_a
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 546
    .restart local v0    # "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    .line 549
    goto/16 :goto_0

    .line 535
    .end local v0    # "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 536
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 537
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    .line 539
    goto/16 :goto_0

    .line 527
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_c
    sget-object v0, Landroid/telephony/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallAttributes;

    .line 528
    .local v0, "_arg0":Landroid/telephony/CallAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    .line 530
    goto/16 :goto_0

    .line 519
    .end local v0    # "_arg0":Landroid/telephony/CallAttributes;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRadioPowerStateChanged(I)V

    .line 522
    goto/16 :goto_0

    .line 511
    .end local v0    # "_arg0":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onActiveDataSubIdChanged(I)V

    .line 514
    goto/16 :goto_0

    .line 503
    .end local v0    # "_arg0":I
    :pswitch_f
    sget-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneCapability;

    .line 504
    .local v0, "_arg0":Landroid/telephony/PhoneCapability;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 506
    goto/16 :goto_0

    .line 495
    .end local v0    # "_arg0":Landroid/telephony/PhoneCapability;
    :pswitch_10
    sget-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyDisplayInfo;

    .line 496
    .local v0, "_arg0":Landroid/telephony/TelephonyDisplayInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 498
    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":Landroid/telephony/TelephonyDisplayInfo;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 488
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onUserMobileDataStateChanged(Z)V

    .line 490
    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 480
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    .line 482
    goto/16 :goto_0

    .line 471
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 472
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    .line 474
    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":[B
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    .line 466
    goto/16 :goto_0

    .line 455
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    .line 458
    goto/16 :goto_0

    .line 447
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 448
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSrvccStateChanged(I)V

    .line 450
    goto/16 :goto_0

    .line 439
    .end local v0    # "_arg0":I
    :pswitch_17
    sget-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 440
    .local v0, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 442
    goto/16 :goto_0

    .line 431
    .end local v0    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :pswitch_18
    sget-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    .line 432
    .local v0, "_arg0":Landroid/telephony/PreciseDataConnectionState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 434
    goto/16 :goto_0

    .line 423
    .end local v0    # "_arg0":Landroid/telephony/PreciseDataConnectionState;
    :pswitch_19
    sget-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseCallState;

    .line 424
    .local v0, "_arg0":Landroid/telephony/PreciseCallState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    .line 426
    goto/16 :goto_0

    .line 415
    .end local v0    # "_arg0":Landroid/telephony/PreciseCallState;
    :pswitch_1a
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 416
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    .line 418
    goto/16 :goto_0

    .line 407
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_1b
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 408
    .local v0, "_arg0":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 410
    goto/16 :goto_0

    .line 399
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    .line 402
    goto :goto_0

    .line 389
    .end local v0    # "_arg0":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 391
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    .line 394
    goto :goto_0

    .line 381
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(I)V

    .line 384
    goto :goto_0

    .line 371
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLegacyCallStateChanged(ILjava/lang/String;)V

    .line 376
    goto :goto_0

    .line 363
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_20
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    .line 364
    .local v0, "_arg0":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V

    .line 366
    goto :goto_0

    .line 355
    .end local v0    # "_arg0":Landroid/telephony/CellIdentity;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 356
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    .line 358
    goto :goto_0

    .line 347
    .end local v0    # "_arg0":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 348
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    .line 350
    goto :goto_0

    .line 339
    .end local v0    # "_arg0":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    .line 342
    goto :goto_0

    .line 331
    .end local v0    # "_arg0":I
    :pswitch_24
    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 332
    .local v0, "_arg0":Landroid/telephony/ServiceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 334
    nop

    .line 644
    .end local v0    # "_arg0":Landroid/telephony/ServiceState;
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
