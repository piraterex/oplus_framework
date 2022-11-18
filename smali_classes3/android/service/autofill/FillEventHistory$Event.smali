.class public final Landroid/service/autofill/FillEventHistory$Event;
.super Ljava/lang/Object;
.source "FillEventHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$Event$UiType;,
        Landroid/service/autofill/FillEventHistory$Event$NoSaveReason;,
        Landroid/service/autofill/FillEventHistory$Event$EventIds;
    }
.end annotation


# static fields
.field public static final whitelist NO_SAVE_UI_REASON_DATASET_MATCH:I = 0x6

.field public static final whitelist NO_SAVE_UI_REASON_FIELD_VALIDATION_FAILED:I = 0x5

.field public static final whitelist NO_SAVE_UI_REASON_HAS_EMPTY_REQUIRED:I = 0x3

.field public static final whitelist NO_SAVE_UI_REASON_NONE:I = 0x0

.field public static final whitelist NO_SAVE_UI_REASON_NO_SAVE_INFO:I = 0x1

.field public static final whitelist NO_SAVE_UI_REASON_NO_VALUE_CHANGED:I = 0x4

.field public static final whitelist NO_SAVE_UI_REASON_WITH_DELAY_SAVE_FLAG:I = 0x2

.field public static final whitelist TYPE_AUTHENTICATION_SELECTED:I = 0x2

.field public static final whitelist TYPE_CONTEXT_COMMITTED:I = 0x4

.field public static final whitelist TYPE_DATASETS_SHOWN:I = 0x5

.field public static final whitelist TYPE_DATASET_AUTHENTICATION_SELECTED:I = 0x1

.field public static final whitelist TYPE_DATASET_SELECTED:I = 0x0

.field public static final whitelist TYPE_SAVE_SHOWN:I = 0x3

.field public static final whitelist UI_TYPE_DIALOG:I = 0x3

.field public static final whitelist UI_TYPE_INLINE:I = 0x2

.field public static final whitelist UI_TYPE_MENU:I = 0x1

.field public static final whitelist UI_TYPE_UNKNOWN:I


# instance fields
.field private final greylist-max-o mChangedDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChangedFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field private final greylist-max-o mDatasetId:Ljava/lang/String;

.field private final greylist-max-o mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

.field private final greylist-max-o mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mEventType:I

.field private final greylist-max-o mIgnoredDatasetIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mManuallyFilledDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mManuallyFilledFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSaveDialogNotShowReason:I

.field private final greylist-max-o mSelectedDatasetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUiType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientState(Landroid/service/autofill/FillEventHistory$Event;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatasetId(Landroid/service/autofill/FillEventHistory$Event;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetectedFieldClassifications(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/service/autofill/FieldClassification;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetectedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventType(Landroid/service/autofill/FillEventHistory$Event;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoredDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManuallyFilledDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSaveDialogNotShowReason(Landroid/service/autofill/FillEventHistory$Event;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiType(Landroid/service/autofill/FillEventHistory$Event;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    return p0
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V
    .locals 13
    .param p1, "eventType"    # I
    .param p2, "datasetId"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;
    .param p10, "detectedFieldIds"    # [Landroid/view/autofill/AutofillId;
    .param p11, "detectedFieldClassifications"    # [Landroid/service/autofill/FieldClassification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            ")V"
        }
    .end annotation

    .line 577
    .local p4, "selectedDatasetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "ignoredDatasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p7, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p9, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;I)V

    .line 581
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;I)V
    .locals 14
    .param p1, "eventType"    # I
    .param p2, "datasetId"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;
    .param p10, "detectedFieldIds"    # [Landroid/view/autofill/AutofillId;
    .param p11, "detectedFieldClassifications"    # [Landroid/service/autofill/FieldClassification;
    .param p12, "saveDialogNotShowReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            "I)V"
        }
    .end annotation

    .line 619
    .local p4, "selectedDatasetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "ignoredDatasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p7, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p9, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 623
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V
    .locals 16
    .param p1, "eventType"    # I
    .param p2, "datasetId"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;
    .param p10, "detectedFieldIds"    # [Landroid/view/autofill/AutofillId;
    .param p11, "detectedFieldClassifications"    # [Landroid/service/autofill/FieldClassification;
    .param p12, "saveDialogNotShowReason"    # I
    .param p13, "uiType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            "II)V"
        }
    .end annotation

    .line 661
    .local p4, "selectedDatasetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "ignoredDatasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p7, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p9, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 662
    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v7, "eventType"

    move/from16 v8, p1

    invoke-static {v8, v5, v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    .line 664
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    .line 665
    move-object/from16 v7, p3

    iput-object v7, v0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    .line 666
    move-object/from16 v9, p4

    iput-object v9, v0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    .line 667
    move-object/from16 v10, p5

    iput-object v10, v0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    .line 668
    const/4 v11, 0x1

    if-eqz v1, :cond_1

    .line 669
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v2, :cond_0

    .line 671
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v5

    .line 669
    :goto_0
    const-string v13, "changed ids must have same length and not be empty"

    invoke-static {v12, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 674
    :cond_1
    iput-object v1, v0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    .line 675
    iput-object v2, v0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    .line 676
    if-eqz v3, :cond_3

    .line 677
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v4, :cond_2

    .line 679
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_2

    goto :goto_1

    :cond_2
    move v11, v5

    .line 677
    :goto_1
    const-string/jumbo v12, "manually filled ids must have same length and not be empty"

    invoke-static {v11, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 682
    :cond_3
    iput-object v3, v0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    .line 683
    iput-object v4, v0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    .line 685
    move-object/from16 v11, p10

    iput-object v11, v0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    .line 686
    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    .line 688
    const/4 v13, 0x6

    const-string/jumbo v14, "saveDialogNotShowReason"

    move/from16 v15, p12

    invoke-static {v15, v5, v13, v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    .line 691
    move/from16 v5, p13

    iput v5, v0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    .line 692
    return-void
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    .line 713
    packed-switch p0, :pswitch_data_0

    .line 727
    const-string v0, "TYPE_UNKNOWN"

    return-object v0

    .line 725
    :pswitch_0
    const-string v0, "TYPE_DATASETS_SHOWN"

    return-object v0

    .line 723
    :pswitch_1
    const-string v0, "TYPE_CONTEXT_COMMITTED"

    return-object v0

    .line 721
    :pswitch_2
    const-string v0, "TYPE_SAVE_SHOWN"

    return-object v0

    .line 719
    :pswitch_3
    const-string v0, "TYPE_AUTHENTICATION_SELECTED"

    return-object v0

    .line 717
    :pswitch_4
    const-string v0, "TYPE_DATASET_AUTHENTICATION_SELECTED"

    return-object v0

    .line 715
    :pswitch_5
    const-string v0, "TYPE_DATASET_SELECTED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist uiTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "uiType"    # I

    .line 732
    packed-switch p0, :pswitch_data_0

    .line 740
    const-string v0, "UI_TYPE_UNKNOWN"

    return-object v0

    .line 738
    :pswitch_0
    const-string v0, "UI_TYPE_FILL_DIALOG"

    return-object v0

    .line 736
    :pswitch_1
    const-string v0, "UI_TYPE_INLINE"

    return-object v0

    .line 734
    :pswitch_2
    const-string v0, "UI_TYPE_MENU"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist getChangedFields()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 423
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 424
    .local v1, "changedFields":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 425
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 419
    .end local v0    # "size":I
    .end local v1    # "changedFields":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientState()Landroid/os/Bundle;
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDatasetId()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFieldsClassification()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/FieldClassification;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_0

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 442
    :cond_0
    array-length v0, v0

    .line 443
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 444
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/FieldClassification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 445
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    aget-object v3, v3, v2

    .line 446
    .local v3, "id":Landroid/view/autofill/AutofillId;
    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    aget-object v4, v4, v2

    .line 447
    .local v4, "fc":Landroid/service/autofill/FieldClassification;
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_1

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldsClassification["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FillEventHistory"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "fc":Landroid/service/autofill/FieldClassification;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public whitelist getIgnoredDatasetIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public whitelist getManuallyEnteredField()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 507
    .local v1, "manuallyFilledFields":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 508
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 509
    .local v3, "fieldId":Landroid/view/autofill/AutofillId;
    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 510
    .local v4, "datasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .end local v3    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v4    # "datasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 502
    .end local v0    # "size":I
    .end local v1    # "manuallyFilledFields":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNoSaveUiReason()I
    .locals 1

    .line 525
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    return v0
.end method

.method public whitelist getSelectedDatasetIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 365
    :goto_0
    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 335
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return v0
.end method

.method public whitelist getUiType()I
    .locals 1

    .line 540
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillEvent [datasetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    .line 697
    invoke-static {v1}, Landroid/service/autofill/FillEventHistory$Event;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    .line 698
    invoke-static {v1}, Landroid/service/autofill/FillEventHistory$Event;->uiTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedDatasets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignoredDatasetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changedFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changedDatasetsIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manuallyFilledFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manuallyFilledDatasetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    .line 705
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedFieldClassifications ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    .line 707
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveDialogNotShowReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    return-object v0
.end method
