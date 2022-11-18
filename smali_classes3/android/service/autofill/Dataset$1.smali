.class Landroid/service/autofill/Dataset$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;
    .locals 31
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1062
    move-object/from16 v0, p1

    const-class v1, Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1064
    .local v1, "presentation":Landroid/widget/RemoteViews;
    const-class v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1066
    .local v3, "dialogPresentation":Landroid/widget/RemoteViews;
    const-class v4, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    .line 1068
    .local v4, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    const-class v5, Landroid/service/autofill/InlinePresentation;

    .line 1069
    invoke-virtual {v0, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InlinePresentation;

    .line 1070
    .local v5, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1071
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1072
    .local v6, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    sget-object v7, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1073
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1074
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    sget-object v8, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1075
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1076
    .local v8, "presentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    sget-object v9, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1077
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1078
    .local v9, "dialogPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    sget-object v10, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1079
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1080
    .local v10, "inlinePresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/InlinePresentation;>;"
    sget-object v11, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1081
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1082
    .local v11, "inlineTooltipPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/InlinePresentation;>;"
    sget-object v12, Landroid/service/autofill/Dataset$DatasetFieldFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1083
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1084
    .local v12, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/Dataset$DatasetFieldFilter;>;"
    const-class v13, Landroid/content/ClipData;

    invoke-virtual {v0, v2, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ClipData;

    .line 1086
    .local v13, "fieldContent":Landroid/content/ClipData;
    const-class v14, Landroid/content/IntentSender;

    invoke-virtual {v0, v2, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/IntentSender;

    .line 1088
    .local v14, "authentication":Landroid/content/IntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1094
    .local v15, "datasetId":Ljava/lang/String;
    if-nez v1, :cond_1

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    new-instance v16, Landroid/service/autofill/Dataset$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v16

    .local v16, "builder":Landroid/service/autofill/Dataset$Builder;
    goto :goto_2

    .line 1095
    .end local v16    # "builder":Landroid/service/autofill/Dataset$Builder;
    :cond_1
    :goto_0
    new-instance v16, Landroid/service/autofill/Presentations$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/service/autofill/Presentations$Builder;-><init>()V

    move-object/from16 v17, v16

    .line 1096
    .local v17, "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    if-eqz v1, :cond_2

    .line 1097
    move-object/from16 v2, v17

    .end local v17    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .local v2, "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    invoke-virtual {v2, v1}, Landroid/service/autofill/Presentations$Builder;->setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    goto :goto_1

    .line 1096
    .end local v2    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .restart local v17    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    :cond_2
    move-object/from16 v2, v17

    .line 1099
    .end local v17    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .restart local v2    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    :goto_1
    if-eqz v4, :cond_3

    .line 1100
    invoke-virtual {v2, v4}, Landroid/service/autofill/Presentations$Builder;->setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    .line 1102
    :cond_3
    if-eqz v5, :cond_4

    .line 1103
    invoke-virtual {v2, v5}, Landroid/service/autofill/Presentations$Builder;->setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    .line 1105
    :cond_4
    if-eqz v3, :cond_5

    .line 1106
    invoke-virtual {v2, v3}, Landroid/service/autofill/Presentations$Builder;->setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    .line 1108
    :cond_5
    new-instance v0, Landroid/service/autofill/Dataset$Builder;

    move-object/from16 v17, v1

    .end local v1    # "presentation":Landroid/widget/RemoteViews;
    .local v17, "presentation":Landroid/widget/RemoteViews;
    invoke-virtual {v2}, Landroid/service/autofill/Presentations$Builder;->build()Landroid/service/autofill/Presentations;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/autofill/Dataset$Builder;-><init>(Landroid/service/autofill/Presentations;)V

    .line 1109
    .end local v2    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .local v0, "builder":Landroid/service/autofill/Dataset$Builder;
    nop

    .line 1113
    :goto_2
    if-eqz v13, :cond_6

    .line 1114
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1, v13}, Landroid/service/autofill/Dataset$Builder;->setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;

    .line 1116
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1117
    .local v1, "inlinePresentationsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move-object/from16 v26, v3

    .end local v3    # "dialogPresentation":Landroid/widget/RemoteViews;
    .local v26, "dialogPresentation":Landroid/widget/RemoteViews;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1118
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 1119
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v27, v18

    check-cast v27, Landroid/view/autofill/AutofillValue;

    .line 1120
    .local v27, "value":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v18

    check-cast v28, Landroid/widget/RemoteViews;

    .line 1121
    .local v28, "fieldPresentation":Landroid/widget/RemoteViews;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v29, v18

    check-cast v29, Landroid/widget/RemoteViews;

    .line 1123
    .local v29, "fieldDialogPresentation":Landroid/widget/RemoteViews;
    if-ge v2, v1, :cond_7

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v22, v18

    goto :goto_4

    :cond_7
    const/16 v22, 0x0

    .line 1125
    .local v22, "fieldInlinePresentation":Landroid/service/autofill/InlinePresentation;
    :goto_4
    if-ge v2, v1, :cond_8

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v23, v18

    goto :goto_5

    :cond_8
    const/16 v23, 0x0

    .line 1126
    .local v23, "fieldInlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    :goto_5
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v30, v18

    check-cast v30, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 1127
    .local v30, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v24, v30

    move-object/from16 v25, v29

    invoke-static/range {v18 .. v25}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$msetLifeTheUniverseAndEverything(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 1117
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v22    # "fieldInlinePresentation":Landroid/service/autofill/InlinePresentation;
    .end local v23    # "fieldInlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    .end local v27    # "value":Landroid/view/autofill/AutofillValue;
    .end local v28    # "fieldPresentation":Landroid/widget/RemoteViews;
    .end local v29    # "fieldDialogPresentation":Landroid/widget/RemoteViews;
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v26

    goto :goto_3

    .line 1131
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v0, v14}, Landroid/service/autofill/Dataset$Builder;->setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;

    .line 1132
    invoke-virtual {v0, v15}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    .line 1133
    invoke-virtual {v0}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1059
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/Dataset;
    .locals 1
    .param p1, "size"    # I

    .line 1138
    new-array v0, p1, [Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1059
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->newArray(I)[Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method
