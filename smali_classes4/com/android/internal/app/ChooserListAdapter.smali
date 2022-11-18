.class public Lcom/android/internal/app/ChooserListAdapter;
.super Lcom/android/internal/app/ResolverListAdapter;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    }
.end annotation


# static fields
.field public static final blacklist CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_CHOOSER_TARGETS_PER_APP:I = 0x2

.field private static final blacklist MAX_SUGGESTED_APP_TARGETS:I = 0x4

.field public static final blacklist NO_POSITION:I = -0x1

.field private static final blacklist PINNED_SHORTCUT_TARGET_SCORE_BOOST:F = 1000.0f

.field public static final blacklist SHORTCUT_TARGET_SCORE_BOOST:F = 90.0f

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserListAdapter"

.field public static final blacklist TARGET_BAD:I = -0x1

.field public static final blacklist TARGET_CALLER:I = 0x0

.field public static final blacklist TARGET_SERVICE:I = 0x1

.field public static final blacklist TARGET_STANDARD:I = 0x2

.field public static final blacklist TARGET_STANDARD_AZ:I = 0x3


# instance fields
.field private blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

.field private blacklist mApplySharingAppLimits:Z

.field private final blacklist mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final blacklist mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

.field private blacklist mEnableStackedApps:Z

.field private blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListViewDataChanged:Z

.field private final blacklist mMaxShortcutTargetsPerApp:I

.field private blacklist mNumShortcutResults:I

.field private final blacklist mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

.field private blacklist mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private final blacklist mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSortedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerTargets(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStackedApps(Lcom/android/internal/app/ChooserListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortedList(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p7, "chooserListCommunicator"    # Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .param p8, "selectableTargetInfoCommunicator"    # Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    .param p9, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p10, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Lcom/android/internal/app/ResolverListController;",
            "Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            ")V"
        }
    .end annotation

    .line 153
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p9

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getWrapper()Lcom/android/internal/app/IResolverListAdapterWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterExt;->isOpShareUi()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    .line 94
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 106
    iput-boolean v2, v10, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$1;

    invoke-direct {v0, v10}, Lcom/android/internal/app/ChooserListAdapter$1;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    .line 156
    nop

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    .line 158
    move-object/from16 v3, p7

    iput-object v3, v10, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 160
    move-object/from16 v4, p8

    iput-object v4, v10, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 161
    move-object/from16 v5, p10

    iput-object v5, v10, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 163
    if-eqz v11, :cond_a

    .line 164
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    array-length v0, v11

    if-ge v6, v0, :cond_9

    .line 165
    aget-object v7, v11, v6

    .line 166
    .local v7, "ii":Landroid/content/Intent;
    if-nez v7, :cond_0

    .line 167
    move-object/from16 v14, p1

    goto/16 :goto_5

    .line 174
    :cond_0
    const/4 v8, 0x0

    .line 175
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 176
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 177
    .local v13, "cn":Landroid/content/ComponentName;
    if-eqz v13, :cond_1

    .line 179
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v12, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v9, v0

    .line 180
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v8, v0

    .line 181
    iput-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 186
    :cond_1
    :goto_1
    if-nez v9, :cond_4

    .line 188
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v14, Landroid/content/Intent;

    if-ne v0, v14, :cond_2

    move-object v0, v7

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 189
    .local v0, "rii":Landroid/content/Intent;
    :goto_2
    const/high16 v14, 0x10000

    invoke-virtual {v12, v0, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 190
    if-eqz v8, :cond_3

    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    move-object v9, v14

    .line 192
    .end local v0    # "rii":Landroid/content/Intent;
    :cond_4
    if-nez v9, :cond_5

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No activity found for "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ChooserListAdapter"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v14, p1

    goto :goto_5

    .line 196
    :cond_5
    nop

    .line 197
    const-string/jumbo v0, "user"

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 198
    .local v0, "userManager":Landroid/os/UserManager;
    instance-of v15, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v15, :cond_6

    .line 199
    move-object v15, v7

    check-cast v15, Landroid/content/pm/LabeledIntent;

    .line 200
    .local v15, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v15}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v15}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v8, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 202
    invoke-virtual {v15}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {v15}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v8, Landroid/content/pm/ResolveInfo;->icon:I

    .line 204
    iget v2, v8, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v8, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 206
    .end local v15    # "li":Landroid/content/pm/LabeledIntent;
    :cond_6
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 207
    iput-boolean v1, v8, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 208
    const/4 v2, 0x0

    iput v2, v8, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_4

    .line 206
    :cond_7
    const/4 v2, 0x0

    .line 210
    :goto_4
    iget-object v15, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v10, v8}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v1

    invoke-direct {v2, v7, v8, v7, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    goto :goto_6

    .line 164
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v7    # "ii":Landroid/content/Intent;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v13    # "cn":Landroid/content/ComponentName;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v14, p1

    goto :goto_6

    .line 163
    .end local v6    # "i":I
    :cond_a
    move-object/from16 v14, p1

    .line 214
    :goto_6
    const-string/jumbo v0, "systemui"

    const-string v1, "apply_sharing_app_limits_in_sysui"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    .line 218
    return-void
.end method

.method private blacklist createPlaceHolders()V
    .locals 3

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 252
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 7
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 658
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_0

    .line 659
    return v1

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 664
    .local v3, "otherTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    invoke-interface {p1, v3}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    return v1

    .line 667
    .end local v3    # "otherTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_1
    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 670
    .local v0, "currentSize":I
    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v3

    .line 671
    .local v3, "newScore":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v5}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 673
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 674
    .local v5, "serviceTarget":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    if-nez v5, :cond_3

    .line 675
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 676
    return v2

    .line 677
    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    .line 678
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 679
    return v2

    .line 672
    .end local v5    # "serviceTarget":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 683
    .end local v4    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 684
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    return v2

    .line 688
    :cond_6
    return v1
.end method

.method static synthetic blacklist lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 1
    .param p0, "o"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 647
    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method


# virtual methods
.method public blacklist addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V
    .locals 26
    .param p1, "origTarget"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "targetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;I",
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 551
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .local p4, "directShareToShortcutInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 552
    return-void

    .line 554
    :cond_0
    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/app/ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F

    move-result v11

    .line 555
    .local v11, "baseScore":F
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 556
    const/4 v12, 0x0

    const/4 v4, 0x2

    const/4 v13, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v13

    :goto_1
    move v14, v5

    .line 559
    .local v14, "isShortcutResult":Z
    if-eqz v14, :cond_3

    iget v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    goto :goto_2

    .line 560
    :cond_3
    nop

    :goto_2
    move v15, v4

    .line 561
    .local v15, "maxTargets":I
    iget-boolean v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v4, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    .line 562
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    move/from16 v16, v4

    .line 563
    .local v16, "targetsLimit":I
    const/4 v4, 0x0

    .line 564
    .local v4, "lastScore":F
    const/4 v5, 0x0

    .line 565
    .local v5, "shouldNotify":Z
    const/4 v6, 0x0

    .local v6, "i":I
    move/from16 v10, v16

    move/from16 v17, v4

    move/from16 v18, v5

    move v9, v6

    .end local v4    # "lastScore":F
    .end local v5    # "shouldNotify":Z
    .end local v6    # "i":I
    .local v9, "i":I
    .local v10, "count":I
    .local v17, "lastScore":F
    .local v18, "shouldNotify":Z
    :goto_4
    if-ge v9, v10, :cond_9

    .line 566
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/service/chooser/ChooserTarget;

    .line 567
    .local v8, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v8}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v4

    .line 568
    .local v4, "targetScore":F
    iget-boolean v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v5, :cond_5

    .line 569
    mul-float/2addr v4, v11

    .line 570
    if-lez v9, :cond_5

    cmpl-float v5, v4, v17

    if-ltz v5, :cond_5

    .line 573
    const v5, 0x3f733333    # 0.95f

    mul-float v4, v17, v5

    .line 576
    :cond_5
    if-eqz v14, :cond_6

    move-object/from16 v7, p4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    goto :goto_5

    .line 577
    :cond_6
    move-object/from16 v7, p4

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v19, v5

    .line 578
    .local v19, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 579
    const/high16 v5, 0x447a0000    # 1000.0f

    add-float/2addr v4, v5

    move/from16 v20, v4

    goto :goto_6

    .line 581
    :cond_7
    move/from16 v20, v4

    .end local v4    # "targetScore":F
    .local v20, "targetScore":F
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 582
    .local v6, "userHandle":Landroid/os/UserHandle;
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v21

    .line 583
    .local v21, "contextAsUser":Landroid/content/Context;
    new-instance v5, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    move-object/from16 v22, v4

    move-object v4, v5

    move-object v12, v5

    move-object/from16 v5, v21

    move-object/from16 v23, v6

    .end local v6    # "userHandle":Landroid/os/UserHandle;
    .local v23, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v6, p1

    move-object v7, v8

    move-object/from16 v24, v8

    .end local v8    # "target":Landroid/service/chooser/ChooserTarget;
    .local v24, "target":Landroid/service/chooser/ChooserTarget;
    move/from16 v8, v20

    move/from16 v25, v9

    .end local v9    # "i":I
    .local v25, "i":I
    move-object/from16 v9, v22

    move/from16 v22, v10

    .end local v10    # "count":I
    .local v22, "count":I
    move-object/from16 v10, v19

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {v0, v12}, Lcom/android/internal/app/ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    .line 587
    .local v4, "isInserted":Z
    if-eqz v4, :cond_8

    if-eqz v14, :cond_8

    .line 588
    iget v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 591
    :cond_8
    or-int v18, v18, v4

    .line 601
    move/from16 v17, v20

    .line 565
    .end local v4    # "isInserted":Z
    .end local v19    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v20    # "targetScore":F
    .end local v21    # "contextAsUser":Landroid/content/Context;
    .end local v23    # "userHandle":Landroid/os/UserHandle;
    .end local v24    # "target":Landroid/service/chooser/ChooserTarget;
    add-int/lit8 v9, v25, 0x1

    move/from16 v10, v22

    const/4 v12, 0x0

    .end local v25    # "i":I
    .restart local v9    # "i":I
    goto :goto_4

    .end local v22    # "count":I
    .restart local v10    # "count":I
    :cond_9
    move/from16 v25, v9

    move/from16 v22, v10

    .line 604
    .end local v9    # "i":I
    .end local v10    # "count":I
    if-eqz v18, :cond_a

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 607
    :cond_a
    return-void
.end method

.method protected blacklist alwaysShowSubLabel()Z
    .locals 1

    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist completeServiceTargetLoading()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 648
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetEmptyDirectShareRow()V

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 653
    return-void
.end method

.method blacklist createSortingTask(Z)Landroid/os/AsyncTask;
    .locals 1
    .param p1, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/os/AsyncTask<",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;>;"
        }
    .end annotation

    .line 709
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;-><init>(Lcom/android/internal/app/ChooserListAdapter;Z)V

    return-object v0
.end method

.method public blacklist destroyAppPredictor()V
    .locals 2

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 746
    :cond_0
    return-void
.end method

.method blacklist getAlphaTargetCount()I
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 424
    .local v0, "groupedCount":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 425
    .local v1, "ungroupedCount":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v2

    if-le v1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method blacklist getAppPredictor()Landroid/app/prediction/AppPredictor;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0
.end method

.method public blacklist getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "targetType"    # I

    .line 631
    if-nez p1, :cond_0

    .line 632
    const/high16 v0, 0x44610000    # 900.0f

    return v0

    .line 634
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    .line 635
    .local v0, "score":F
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    return v0

    .line 637
    :cond_2
    :goto_0
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public blacklist getCallerTargetCount()I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;
    .locals 1
    .param p1, "value"    # I

    .line 692
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method blacklist getNumServiceTargetsForExpand()I
    .locals 1

    .line 616
    iget v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    return v0
.end method

.method public blacklist getPositionTargetType(I)I
    .locals 6
    .param p1, "position"    # I

    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    .line 441
    .local v1, "serviceTargetCount":I
    if-ge p1, v1, :cond_0

    .line 442
    const/4 v2, 0x1

    return v2

    .line 444
    :cond_0
    add-int/2addr v0, v1

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 447
    .local v2, "callerTargetCount":I
    sub-int v3, p1, v0

    if-ge v3, v2, :cond_1

    .line 448
    const/4 v3, 0x0

    return v3

    .line 450
    :cond_1
    add-int/2addr v0, v2

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    .line 453
    .local v3, "rankedTargetCount":I
    sub-int v4, p1, v0

    if-ge v4, v3, :cond_2

    .line 454
    const/4 v4, 0x2

    return v4

    .line 456
    :cond_2
    add-int/2addr v0, v3

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v4

    .line 459
    .local v4, "standardTargetCount":I
    sub-int v5, p1, v0

    if-ge v5, v4, :cond_3

    .line 460
    const/4 v5, 0x3

    return v5

    .line 463
    :cond_3
    const/4 v5, -0x1

    return v5
.end method

.method public blacklist getRankedTargetCount()I
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 433
    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 434
    .local v0, "spacesAvailable":I
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public blacklist getSelectableServiceTargetCount()I
    .locals 4

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 406
    .local v2, "info":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    instance-of v3, v2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v3, :cond_0

    .line 407
    add-int/lit8 v0, v0, 0x1

    .line 409
    .end local v2    # "info":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_0
    goto :goto_0

    .line 410
    :cond_1
    return v0
.end method

.method public blacklist getServiceTargetCount()I
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 419
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSurfacedTargetInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    .line 534
    .local v0, "maxSurfacedTargets":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 534
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUnfilteredCount()I
    .locals 3

    .line 388
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 389
    .local v0, "appTargets":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist handlePackagesChanged()V
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 232
    return-void
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 2

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->sendListViewUpdateMessage(Landroid/os/UserHandle;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 240
    :cond_0
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 268
    .local v0, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 269
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x10807a2

    .line 270
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    return-void

    .line 274
    :cond_0
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 275
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 276
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 278
    instance-of v1, p2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v1, :cond_5

    .line 280
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    .line 281
    .local v1, "rInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const-string v5, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 282
    .local v6, "appName":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v7

    .line 283
    .local v7, "extendedInfo":Ljava/lang/CharSequence;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v4

    .line 284
    if-eqz v7, :cond_2

    move-object v5, v7

    :cond_2
    aput-object v5, v8, v3

    aput-object v6, v8, v2

    .line 283
    const-string v5, " "

    invoke-static {v5, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "contentDescription":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->updateContentDescription(Ljava/lang/String;)V

    .line 286
    .end local v1    # "rInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v5    # "contentDescription":Ljava/lang/String;
    .end local v6    # "appName":Ljava/lang/CharSequence;
    .end local v7    # "extendedInfo":Ljava/lang/CharSequence;
    goto :goto_1

    .line 288
    :cond_3
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 289
    .local v1, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 290
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    .line 291
    .local v5, "task":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    if-nez v5, :cond_4

    .line 292
    new-instance v6, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    move-object v5, v6

    .line 293
    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-array v6, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {v5, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->setViewHolder(Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    .line 303
    .end local v1    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v5    # "task":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    :cond_5
    :goto_1
    instance-of v1, p2, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 304
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1050096

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 306
    .local v1, "maxWidth":I
    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 307
    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080260

    iget-object v9, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 307
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    .end local v1    # "maxWidth":I
    goto :goto_2

    .line 312
    :cond_6
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v6, 0x7fffffff

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 313
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :goto_2
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 320
    instance-of v1, p2, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v1, :cond_7

    .line 322
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1080262

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 323
    .local v1, "bkg":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 324
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .end local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    :cond_7
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 326
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 329
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1080263

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 330
    .restart local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 331
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 333
    .end local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 334
    :cond_9
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 337
    :goto_3
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 260
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist refreshListView()V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 247
    return-void
.end method

.method public blacklist setAppPredictor(Landroid/app/prediction/AppPredictor;)V
    .locals 0
    .param p1, "appPredictor"    # Landroid/app/prediction/AppPredictor;

    .line 733
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 734
    return-void
.end method

.method public blacklist setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;)V
    .locals 0
    .param p1, "appPredictorCallback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 737
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    .line 738
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 520
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    .line 521
    .local v1, "existingInfo":Lcom/android/internal/app/chooser/TargetInfo;
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const/4 v0, 0x0

    return v0

    .line 525
    .end local v1    # "existingInfo":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_0
    goto :goto_0

    .line 526
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 7
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 479
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 480
    return-object v0

    .line 483
    :cond_0
    const/4 v1, 0x0

    .line 486
    .local v1, "offset":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    :goto_0
    nop

    .line 488
    .local v2, "serviceTargetCount":I
    if-ge p1, v2, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 491
    :cond_2
    add-int/2addr v1, v2

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v3

    .line 495
    .local v3, "callerTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v3, :cond_3

    .line 496
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 498
    :cond_3
    add-int/2addr v1, v3

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v4

    .line 502
    .local v4, "rankedTargetCount":I
    sub-int v5, p1, v1

    if-ge v5, v4, :cond_5

    .line 503
    if-eqz p2, :cond_4

    sub-int v0, p1, v1

    invoke-super {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    goto :goto_1

    .line 504
    :cond_4
    sub-int v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 503
    :goto_1
    return-object v0

    .line 506
    :cond_5
    add-int/2addr v1, v4

    .line 509
    sub-int v5, p1, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 510
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    sub-int v5, p1, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 513
    :cond_6
    return-object v0
.end method

.method blacklist updateAlphabeticalList()V
    .locals 2

    .line 340
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$2;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 377
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method
