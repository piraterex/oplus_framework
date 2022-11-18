.class Landroid/service/autofill/FillResponse$1;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;
    .locals 21
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1039
    move-object/from16 v0, p1

    new-instance v1, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v1}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    .line 1040
    .local v1, "builder":Landroid/service/autofill/FillResponse$Builder;
    const-class v2, Landroid/content/pm/ParceledListSlice;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/ParceledListSlice;

    .line 1041
    .local v10, "datasetSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/autofill/Dataset;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    move-object v11, v2

    .line 1042
    .local v11, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v12, v2

    .line 1043
    .local v12, "datasetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v12, :cond_2

    .line 1044
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    invoke-virtual {v1, v3}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1046
    .end local v2    # "i":I
    :cond_2
    const-class v2, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;

    .line 1047
    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;

    .line 1050
    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Landroid/view/autofill/AutofillId;

    .line 1052
    .local v13, "authenticationIds":[Landroid/view/autofill/AutofillId;
    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/IntentSender;

    .line 1053
    .local v14, "authentication":Landroid/content/IntentSender;
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RemoteViews;

    .line 1054
    .local v15, "presentation":Landroid/widget/RemoteViews;
    const-class v2, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/service/autofill/InlinePresentation;

    .line 1055
    .local v16, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    const-class v2, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/service/autofill/InlinePresentation;

    .line 1056
    .local v17, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RemoteViews;

    .line 1057
    .local v18, "dialogPresentation":Landroid/widget/RemoteViews;
    if-eqz v13, :cond_3

    .line 1058
    move-object v2, v1

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$msetAuthentication(Landroid/service/autofill/FillResponse$Builder;[Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1061
    :cond_3
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 1062
    .local v2, "dialogHeader":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_4

    .line 1063
    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setDialogHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1065
    :cond_4
    const-class v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    .line 1066
    .local v3, "triggerIds":[Landroid/view/autofill/AutofillId;
    if-eqz v3, :cond_5

    .line 1067
    invoke-virtual {v1, v3}, Landroid/service/autofill/FillResponse$Builder;->setFillDialogTriggerIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1069
    :cond_5
    const-class v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 1070
    .local v4, "header":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_6

    .line 1071
    invoke-virtual {v1, v4}, Landroid/service/autofill/FillResponse$Builder;->setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1073
    :cond_6
    const-class v5, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    .line 1074
    .local v5, "footer":Landroid/widget/RemoteViews;
    if-eqz v5, :cond_7

    .line 1075
    invoke-virtual {v1, v5}, Landroid/service/autofill/FillResponse$Builder;->setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1077
    :cond_7
    const-class v6, Landroid/service/autofill/UserData;

    invoke-virtual {v0, v9, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/UserData;

    .line 1078
    .local v6, "userData":Landroid/service/autofill/UserData;
    if-eqz v6, :cond_8

    .line 1079
    invoke-virtual {v1, v6}, Landroid/service/autofill/FillResponse$Builder;->setUserData(Landroid/service/autofill/UserData;)Landroid/service/autofill/FillResponse$Builder;

    .line 1082
    :cond_8
    const-class v7, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v7}, Landroid/service/autofill/FillResponse$Builder;->setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1084
    .local v7, "disableDuration":J
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_9

    .line 1085
    invoke-virtual {v1, v7, v8}, Landroid/service/autofill/FillResponse$Builder;->disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;

    .line 1087
    :cond_9
    move-object/from16 v19, v2

    .end local v2    # "dialogHeader":Landroid/widget/RemoteViews;
    .local v19, "dialogHeader":Landroid/widget/RemoteViews;
    const-class v2, Landroid/view/autofill/AutofillId;

    .line 1088
    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/autofill/AutofillId;

    .line 1089
    .local v2, "fieldClassifactionIds":[Landroid/view/autofill/AutofillId;
    if-eqz v2, :cond_a

    .line 1090
    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1092
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/service/autofill/FillResponse$Builder;->setFlags(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 1094
    .local v9, "cancelIds":[I
    invoke-virtual {v1, v9}, Landroid/service/autofill/FillResponse$Builder;->setPresentationCancelIds([I)Landroid/service/autofill/FillResponse$Builder;

    .line 1096
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 1097
    .local v0, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v20, v1

    .end local v1    # "builder":Landroid/service/autofill/FillResponse$Builder;
    .local v20, "builder":Landroid/service/autofill/FillResponse$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 1099
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1033
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/FillResponse;
    .locals 1
    .param p1, "size"    # I

    .line 1104
    new-array v0, p1, [Landroid/service/autofill/FillResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1033
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->newArray(I)[Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method
