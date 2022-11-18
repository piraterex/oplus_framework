.class Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 26
    .param p1, "source"    # Landroid/os/Parcel;

    .line 611
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 612
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 613
    .local v15, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    .line 614
    .local v4, "onHost":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 615
    .local v16, "offHostName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 616
    .local v17, "staticOffHostName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 617
    .local v14, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 618
    .local v18, "numStaticGroups":I
    if-lez v18, :cond_1

    .line 619
    sget-object v2, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 621
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    .line 622
    .local v13, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 623
    .local v19, "numDynamicGroups":I
    if-lez v19, :cond_2

    .line 624
    sget-object v2, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v13, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 626
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v5

    .line 627
    .local v8, "requiresUnlock":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v5

    .line 628
    .local v9, "requiresScreenOn":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 629
    .local v20, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 630
    .local v21, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 639
    .local v22, "settingsActivityName":Ljava/lang/String;
    new-instance v23, Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v2, v23

    move-object v3, v1

    move-object v5, v15

    move-object v6, v14

    move-object v7, v13

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v24, v13

    .end local v13    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local v24, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v13, v16

    move-object/from16 v25, v14

    .end local v14    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local v25, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v2, "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v2, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 643
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 608
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .line 649
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 608
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p1

    return-object p1
.end method
