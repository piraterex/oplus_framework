.class Landroid/telecom/ParcelableCall$1;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;
    .locals 36
    .param p1, "source"    # Landroid/os/Parcel;

    .line 623
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 624
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 626
    .local v3, "state":I
    const-class v4, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/DisconnectCause;

    .line 627
    .local v4, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v5, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 630
    .local v6, "capabilities":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 631
    .local v7, "properties":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 632
    .local v8, "connectTimeMillis":J
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 633
    .local v10, "handle":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 634
    .local v11, "handlePresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 636
    .local v13, "callerDisplayNamePresentation":I
    const-class v14, Landroid/telecom/GatewayInfo;

    invoke-virtual {v0, v1, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/GatewayInfo;

    .line 637
    .local v14, "gatewayInfo":Landroid/telecom/GatewayInfo;
    const-class v15, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/PhoneAccountHandle;

    .line 638
    .local v15, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v16, v15

    .end local v15    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .local v16, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v15

    const/16 v17, 0x0

    move-object/from16 v18, v14

    .end local v14    # "gatewayInfo":Landroid/telecom/GatewayInfo;
    .local v18, "gatewayInfo":Landroid/telecom/GatewayInfo;
    const/4 v14, 0x1

    if-ne v15, v14, :cond_0

    move v15, v14

    goto :goto_0

    :cond_0
    move/from16 v15, v17

    .line 639
    .local v15, "isVideoCallProviderChanged":Z
    :goto_0
    nop

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v14

    .line 641
    .local v14, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    move-object/from16 v19, v14

    .end local v14    # "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    .local v19, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 642
    .local v14, "parentCallId":Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 643
    .local v22, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v21, v14

    .end local v14    # "parentCallId":Ljava/lang/String;
    .local v21, "parentCallId":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    move/from16 v23, v15

    move-object/from16 v15, v22

    .end local v22    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "isVideoCallProviderChanged":Z
    invoke-virtual {v0, v15, v1, v14}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 644
    const-class v14, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/StatusHints;

    .line 645
    .local v14, "statusHints":Landroid/telecom/StatusHints;
    move-object/from16 v22, v14

    .end local v14    # "statusHints":Landroid/telecom/StatusHints;
    .local v22, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 646
    .local v14, "videoState":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v24

    .line 647
    .local v25, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v24, v14

    .end local v14    # "videoState":I
    .local v24, "videoState":I
    const-class v14, Ljava/lang/String;

    move-object/from16 v26, v15

    move-object/from16 v15, v25

    .end local v25    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v15, v1, v14}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 648
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v14

    .line 649
    .local v14, "intentExtras":Landroid/os/Bundle;
    move-object/from16 v25, v14

    .end local v14    # "intentExtras":Landroid/os/Bundle;
    .local v25, "intentExtras":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v14

    .line 650
    .local v14, "extras":Landroid/os/Bundle;
    move-object/from16 v27, v14

    .end local v14    # "extras":Landroid/os/Bundle;
    .local v27, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 651
    .local v14, "supportedAudioRoutes":I
    move-object/from16 v28, v15

    .end local v15    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v15

    move/from16 v29, v13

    const/4 v13, 0x1

    .end local v13    # "callerDisplayNamePresentation":I
    .local v29, "callerDisplayNamePresentation":I
    if-ne v15, v13, :cond_1

    move/from16 v17, v13

    :cond_1
    move/from16 v13, v17

    .line 652
    .local v13, "isRttCallChanged":Z
    const-class v15, Landroid/telecom/ParcelableRttCall;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/ParcelableRttCall;

    .line 653
    .local v15, "rttCall":Landroid/telecom/ParcelableRttCall;
    move-object/from16 v17, v1

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .local v17, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 654
    .local v0, "creationTimeMillis":J
    move-wide/from16 v30, v0

    .end local v0    # "creationTimeMillis":J
    .local v30, "creationTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 655
    .local v0, "callDirection":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    .local v1, "callerNumberVerificationStatus":I
    move/from16 v20, v1

    .end local v1    # "callerNumberVerificationStatus":I
    .local v20, "callerNumberVerificationStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "contactDisplayName":Ljava/lang/String;
    move-object/from16 v32, v1

    .end local v1    # "contactDisplayName":Ljava/lang/String;
    .local v32, "contactDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "activeChildCallId":Ljava/lang/String;
    move-object/from16 v33, v1

    .end local v1    # "activeChildCallId":Ljava/lang/String;
    .local v33, "activeChildCallId":Ljava/lang/String;
    new-instance v1, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    invoke-direct {v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;-><init>()V

    .line 659
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 660
    invoke-virtual {v1, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 661
    invoke-virtual {v1, v4}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {v1, v5}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCannedSmsResponses(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 663
    invoke-virtual {v1, v6}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCapabilities(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 664
    invoke-virtual {v1, v7}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setProperties(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 665
    invoke-virtual {v1, v14}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setSupportedAudioRoutes(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 666
    invoke-virtual {v1, v8, v9}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setConnectTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v10}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setHandle(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 668
    invoke-virtual {v1, v11}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setHandlePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v12}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 670
    move-object/from16 v34, v2

    move/from16 v2, v29

    .end local v29    # "callerDisplayNamePresentation":I
    .local v2, "callerDisplayNamePresentation":I
    .local v34, "id":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerDisplayNamePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 671
    move-object/from16 v2, v18

    .end local v18    # "gatewayInfo":Landroid/telecom/GatewayInfo;
    .local v2, "gatewayInfo":Landroid/telecom/GatewayInfo;
    .restart local v29    # "callerDisplayNamePresentation":I
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setGatewayInfo(Landroid/telecom/GatewayInfo;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 672
    move-object/from16 v2, v16

    .end local v16    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .local v2, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .restart local v18    # "gatewayInfo":Landroid/telecom/GatewayInfo;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 673
    move/from16 v2, v23

    .end local v23    # "isVideoCallProviderChanged":Z
    .local v2, "isVideoCallProviderChanged":Z
    .restart local v16    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIsVideoCallProviderChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 674
    move-object/from16 v2, v19

    .end local v19    # "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    .local v2, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    .restart local v23    # "isVideoCallProviderChanged":Z
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setVideoCallProvider(Lcom/android/internal/telecom/IVideoProvider;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 675
    invoke-virtual {v1, v13}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIsRttCallChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 676
    invoke-virtual {v1, v15}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setRttCall(Landroid/telecom/ParcelableRttCall;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 677
    move-object/from16 v2, v21

    .end local v21    # "parentCallId":Ljava/lang/String;
    .local v2, "parentCallId":Ljava/lang/String;
    .restart local v19    # "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setParentCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 678
    move-object/from16 v2, v26

    .end local v26    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "parentCallId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setChildCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 679
    move-object/from16 v2, v22

    .end local v22    # "statusHints":Landroid/telecom/StatusHints;
    .local v2, "statusHints":Landroid/telecom/StatusHints;
    .restart local v26    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 680
    move/from16 v2, v24

    .end local v24    # "videoState":I
    .local v2, "videoState":I
    .restart local v22    # "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setVideoState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 681
    move-object/from16 v2, v28

    .end local v28    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "videoState":I
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setConferenceableCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 682
    move-object/from16 v2, v25

    .end local v25    # "intentExtras":Landroid/os/Bundle;
    .local v2, "intentExtras":Landroid/os/Bundle;
    .restart local v28    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIntentExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 683
    move-object/from16 v2, v27

    .end local v27    # "extras":Landroid/os/Bundle;
    .local v2, "extras":Landroid/os/Bundle;
    .restart local v25    # "intentExtras":Landroid/os/Bundle;
    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 684
    move-object/from16 v35, v2

    move/from16 v27, v3

    move-wide/from16 v2, v30

    .end local v3    # "state":I
    .end local v30    # "creationTimeMillis":J
    .local v2, "creationTimeMillis":J
    .local v27, "state":I
    .local v35, "extras":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCreationTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 685
    invoke-virtual {v1, v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallDirection(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 686
    move/from16 v30, v0

    move/from16 v0, v20

    .end local v20    # "callerNumberVerificationStatus":I
    .local v0, "callerNumberVerificationStatus":I
    .local v30, "callDirection":I
    invoke-virtual {v1, v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerNumberVerificationStatus(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 687
    move-object/from16 v0, v32

    .end local v32    # "contactDisplayName":Ljava/lang/String;
    .local v0, "contactDisplayName":Ljava/lang/String;
    .restart local v20    # "callerNumberVerificationStatus":I
    invoke-virtual {v1, v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setContactDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 688
    move-object/from16 v0, v33

    .end local v33    # "activeChildCallId":Ljava/lang/String;
    .local v0, "activeChildCallId":Ljava/lang/String;
    .restart local v32    # "contactDisplayName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setActiveChildCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 689
    invoke-virtual {v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->createParcelableCall()Landroid/telecom/ParcelableCall;

    move-result-object v1

    .line 658
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 620
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableCall;
    .locals 1
    .param p1, "size"    # I

    .line 694
    new-array v0, p1, [Landroid/telecom/ParcelableCall;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 620
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->newArray(I)[Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method
