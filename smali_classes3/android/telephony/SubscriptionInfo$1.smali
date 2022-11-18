.class Landroid/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;
    .locals 60
    .param p1, "source"    # Landroid/os/Parcel;

    .line 854
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "id":I
    move/from16 v2, v30

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, "iccId":Ljava/lang/String;
    move-object/from16 v3, v31

    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .local v32, "simSlotIndex":I
    move/from16 v4, v32

    .line 857
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Ljava/lang/CharSequence;

    .local v33, "displayName":Ljava/lang/CharSequence;
    move-object/from16 v5, v33

    .line 858
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Ljava/lang/CharSequence;

    .local v34, "carrierName":Ljava/lang/CharSequence;
    move-object/from16 v6, v34

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .local v35, "nameSource":I
    move/from16 v7, v35

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .local v36, "iconTint":I
    move/from16 v8, v36

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "number":Ljava/lang/String;
    move-object/from16 v9, v37

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .local v38, "dataRoaming":I
    move/from16 v10, v38

    .line 863
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .local v39, "mcc":Ljava/lang/String;
    move-object/from16 v12, v39

    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .local v40, "mnc":Ljava/lang/String;
    move-object/from16 v13, v40

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .local v41, "countryIso":Ljava/lang/String;
    move-object/from16 v14, v41

    .line 866
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v42

    .local v42, "isEmbedded":Z
    move/from16 v15, v42

    .line 867
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, [Landroid/telephony/UiccAccessRule;

    .local v43, "nativeAccessRules":[Landroid/telephony/UiccAccessRule;
    move-object/from16 v16, v43

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .local v44, "cardString":Ljava/lang/String;
    move-object/from16 v17, v44

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .local v45, "cardId":I
    move/from16 v18, v45

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, "portId":I
    move/from16 v28, v46

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v47

    .local v47, "isOpportunistic":Z
    move/from16 v19, v47

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .local v48, "groupUUID":Ljava/lang/String;
    move-object/from16 v20, v48

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v49

    .local v49, "isGroupDisabled":Z
    move/from16 v21, v49

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .local v50, "carrierid":I
    move/from16 v22, v50

    .line 875
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .local v51, "profileClass":I
    move/from16 v23, v51

    .line 876
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v52

    .local v52, "subType":I
    move/from16 v24, v52

    .line 877
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 878
    .local v11, "ehplmns":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "hplmns":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .local v53, "groupOwner":Ljava/lang/String;
    move-object/from16 v25, v53

    .line 880
    move-object/from16 v54, v1

    .end local v1    # "hplmns":[Ljava/lang/String;
    .local v54, "hplmns":[Ljava/lang/String;
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v55, v1

    check-cast v55, [Landroid/telephony/UiccAccessRule;

    .local v55, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    move-object/from16 v26, v55

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v56

    .local v56, "areUiccApplicationsEnabled":Z
    move/from16 v27, v56

    .line 883
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .local v57, "usageSetting":I
    move/from16 v29, v57

    .line 885
    new-instance v58, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v59, v54

    .end local v54    # "hplmns":[Ljava/lang/String;
    .local v59, "hplmns":[Ljava/lang/String;
    move-object/from16 v1, v58

    const/16 v54, 0x0

    move-object v0, v11

    .end local v11    # "ehplmns":[Ljava/lang/String;
    .local v0, "ehplmns":[Ljava/lang/String;
    move-object/from16 v11, v54

    invoke-direct/range {v1 .. v29}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;ZII)V

    .line 891
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v2, v59

    .end local v59    # "hplmns":[Ljava/lang/String;
    .local v2, "hplmns":[Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionInfo;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;)V

    .line 892
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 851
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "size"    # I

    .line 897
    new-array v0, p1, [Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 851
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->newArray(I)[Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method
