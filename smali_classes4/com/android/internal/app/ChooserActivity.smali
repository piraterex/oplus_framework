.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.implements Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;,
        Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;,
        Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetRankingInfo;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;,
        Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;,
        Lcom/android/internal/app/ChooserActivity$FooterViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ItemViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ViewHolderBase;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserListController;,
        Lcom/android/internal/app/ChooserActivity$AzInfoComparator;,
        Lcom/android/internal/app/ChooserActivity$FileInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserHandler;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewType;,
        Lcom/android/internal/app/ChooserActivity$ShareTargetType;
    }
.end annotation


# static fields
.field public static final blacklist APP_PREDICTION_INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field private static final blacklist APP_PREDICTION_SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final blacklist APP_PREDICTION_SHARE_UI_SURFACE:Ljava/lang/String; = "share"

.field private static final blacklist CHIP_ICON_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_icon"

.field private static final blacklist CHIP_LABEL_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_label"

.field public static final blacklist CHOOSER_TARGET:Ljava/lang/String; = "chooser_target"

.field protected static final blacklist CONTENT_PREVIEW_FILE:I = 0x2

.field protected static final blacklist CONTENT_PREVIEW_IMAGE:I = 0x1

.field protected static final blacklist CONTENT_PREVIEW_TEXT:I = 0x3

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_IS_NEARBY_SHARE_FIRST_TARGET_IN_RANKED_APP:Z = false

.field private static final blacklist DEFAULT_LIST_VIEW_UPDATE_DELAY_MS:I = 0x7d

.field private static final blacklist DEFAULT_SALT_EXPIRATION_DAYS:I = 0x7

.field private static final blacklist DIRECT_SHARE_EXPANSION_RATE:F = 0.78f

.field public static final blacklist EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field public static final blacklist FIRST_IMAGE_PREVIEW_TRANSITION_NAME:Ljava/lang/String; = "screenshot_preview_image"

.field public static final blacklist LAUNCH_LOCATION_DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field private static final blacklist MAX_EXTRA_CHOOSER_TARGETS:I = 0x2

.field private static final blacklist MAX_EXTRA_INITIAL_INTENTS:I = 0x2

.field private static final blacklist MAX_LOG_RANK_POSITION:I = 0xc

.field private static final blacklist NO_DIRECT_SHARE_ANIM_IN_MILLIS:I = 0xc8

.field private static final blacklist PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final blacklist PLURALS_COUNT:Ljava/lang/String; = "count"

.field private static final blacklist PLURALS_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final blacklist PREF_NUM_SHEET_EXPANSIONS:Ljava/lang/String; = "pref_num_sheet_expansions"

.field private static final blacklist SCROLL_STATUS_IDLE:I = 0x0

.field private static final blacklist SCROLL_STATUS_SCROLLING_HORIZONTAL:I = 0x2

.field private static final blacklist SCROLL_STATUS_SCROLLING_VERTICAL:I = 0x1

.field public static final blacklist SELECTION_TYPE_APP:I = 0x2

.field public static final blacklist SELECTION_TYPE_COPY:I = 0x4

.field public static final blacklist SELECTION_TYPE_EDIT:I = 0x6

.field public static final blacklist SELECTION_TYPE_NEARBY:I = 0x5

.field public static final blacklist SELECTION_TYPE_SERVICE:I = 0x1

.field public static final blacklist SELECTION_TYPE_STANDARD:I = 0x3

.field private static final blacklist SHARED_TEXT_KEY:Ljava/lang/String; = "shared_text"

.field private static final blacklist SHORTCUT_TARGET:Ljava/lang/String; = "shortcut_target"

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final blacklist TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field public static final blacklist TARGET_TYPE_CHOOSER_TARGET:I = 0x1

.field public static final blacklist TARGET_TYPE_DEFAULT:I = 0x0

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_PREDICTION_SERVICE:I = 0x3

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_SHORTCUT_MANAGER:I = 0x2

.field private static final blacklist USE_PREDICTION_MANAGER_FOR_SHARE_ACTIVITIES:Z = true


# instance fields
.field private blacklist mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field protected blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

.field protected blacklist mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field private blacklist mChooserShownTime:J

.field private blacklist mChooserWrapper:Lcom/android/internal/app/IChooserActivityWrapper;

.field private blacklist mChosenComponentSender:Landroid/content/IntentSender;

.field private blacklist mCurrAvailableWidth:I

.field private blacklist mDirectShareAppTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDirectShareShortcutInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

.field private blacklist mFilteredComponentNames:[Landroid/content/ComponentName;

.field private blacklist mIsAppPredictorComponentAvailable:Z

.field private blacklist mIsNearbyShareFirstTargetInRankedApp:Z

.field protected blacklist mIsSuccessfullySelected:Z

.field private blacklist mLastNumberOfChildren:I

.field blacklist mListViewUpdateDelayMs:I

.field private blacklist mMaxHashSaltDays:I

.field private blacklist mMaxTargetsPerRow:I

.field protected blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private blacklist mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

.field private blacklist mQueriedSharingShortcutsTimeMs:J

.field private blacklist mReferrerFillInIntent:Landroid/content/Intent;

.field private blacklist mRefinementIntentSender:Landroid/content/IntentSender;

.field private blacklist mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private blacklist mRemoveSharedElements:Z

.field private blacklist mReplacementExtras:Landroid/os/Bundle;

.field private blacklist mScrollStatus:I

.field private blacklist mShouldDisplayLandscape:Z

.field private blacklist mWorkAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public static synthetic blacklist $r8$lambda$alyiQlMZybIV1gg_JQU0fvfokpM(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivity;->handleScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lrn_ax8ooRSdyZpVvR_tTx61eN8(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onCopyButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qB2O-VxEG21seZ5CylOfeG5zusE(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/app/ChooserActivity;->handleLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDirectShareShortcutInfoCache(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionAnimationDelegate(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddActionButton(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateContentPreviewView(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateCopyButton(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/Button;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->createCopyButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNearbyButton(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)Landroid/widget/Button;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackagesChanged(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->hideStickyContentPreview()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincrementNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->incrementNumSheetExpansions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/ChooserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logDirectShareTargetReceived(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->setHorizontalScrollingEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->shouldShowTargetDetails(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Lcom/android/internal/app/chooser/TargetInfo;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 4

    .line 167
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 246
    const-string/jumbo v0, "systemui"

    const-string v1, "hash_salt_max_days"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    .line 251
    nop

    .line 252
    const-string/jumbo v1, "is_nearby_share_first_target_in_ranked_app"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mIsNearbyShareFirstTargetInRankedApp:Z

    .line 258
    nop

    .line 259
    const-string/jumbo v1, "sharesheet_list_view_update_delay"

    const/16 v3, 0x7d

    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mListViewUpdateDelayMs:I

    .line 277
    iput v2, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 304
    iput v2, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 308
    new-instance v0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    .line 311
    iput-boolean v2, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    .line 466
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserHandler-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    .line 4196
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserWrapper:Lcom/android/internal/app/IChooserActivityWrapper;

    .line 168
    return-void
.end method

.method private blacklist addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "b"    # Landroid/widget/Button;

    .line 1282
    if-nez p2, :cond_0

    return-void

    .line 1283
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1287
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105025d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1288
    .local v1, "gap":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1289
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    return-void
.end method

.method private blacklist adjustPreviewWidth(ILandroid/view/View;)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "parent"    # Landroid/view/View;

    .line 1074
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    return-void

    .line 1078
    :cond_0
    const/4 v0, -0x1

    .line 1079
    .local v0, "width":I
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    if-eqz v1, :cond_1

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1083
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    move-object p2, v1

    .line 1085
    const v1, 0x1020271

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1086
    const v1, 0x1020274

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1087
    const v1, 0x1020267

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1088
    return-void
.end method

.method private blacklist calculateDrawerOffset(IILcom/android/internal/widget/RecyclerView;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)I
    .locals 16
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "gridAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 2697
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2698
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2699
    .local v2, "bottomInset":I
    :goto_0
    move v4, v2

    .line 2700
    .local v4, "offset":I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v5

    .line 2701
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 2702
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 2703
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 2707
    .local v5, "rowsToShow":I
    if-nez v5, :cond_1

    .line 2708
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowCount()I

    move-result v5

    .line 2713
    :cond_1
    if-nez v5, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2714
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x105009c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 2716
    return v4

    .line 2719
    :cond_2
    const v6, 0x1020264

    invoke-virtual {v0, v6}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2720
    .local v6, "stickyContentPreview":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2721
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 2724
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2725
    const v7, 0x1020013

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 2728
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/RecyclerView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c

    .line 2729
    const/4 v7, 0x0

    .line 2730
    .local v7, "directShareHeight":I
    const/4 v8, 0x4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2731
    invoke-direct {v0, v5}, Lcom/android/internal/app/ChooserActivity;->shouldShowExtraRow(I)Z

    move-result v8

    .line 2732
    .local v8, "shouldShowExtraRow":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v9

    iput v9, v0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 2733
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v10

    .line 2734
    .local v10, "childCount":I
    :goto_1
    const/4 v11, 0x1

    if-ge v9, v10, :cond_8

    if-lez v5, :cond_8

    .line 2735
    invoke-virtual {v1, v9}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2736
    .local v12, "child":Landroid/view/View;
    nop

    .line 2737
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v13}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v13

    if-eqz v13, :cond_5

    .line 2738
    move-object/from16 v15, p4

    goto :goto_2

    .line 2740
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 2741
    .local v13, "height":I
    add-int/2addr v4, v13

    .line 2742
    if-eqz v8, :cond_6

    .line 2743
    add-int/2addr v4, v13

    .line 2746
    :cond_6
    nop

    .line 2747
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    .line 2746
    move-object/from16 v15, p4

    invoke-virtual {v15, v14}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getTargetType(I)I

    move-result v14

    if-ne v14, v11, :cond_7

    .line 2749
    move v7, v13

    .line 2751
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 2734
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "height":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v15, p4

    .line 2754
    .end local v9    # "i":I
    .end local v10    # "childCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_9

    .line 2755
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    move v11, v3

    :goto_3
    move v9, v11

    .line 2756
    .local v9, "isExpandable":Z
    if-eqz v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v9, :cond_b

    .line 2759
    int-to-float v10, v7

    const v11, 0x3f47ae14    # 0.78f

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 2761
    .local v10, "requiredExpansionHeight":I
    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v11, :cond_a

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    .line 2762
    .local v3, "topInset":I
    :cond_a
    sub-int v11, p2, p1

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->getAlwaysShowHeight()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v10

    sub-int/2addr v11, v3

    sub-int/2addr v11, v2

    .line 2765
    .local v11, "minHeight":I
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2767
    .end local v3    # "topInset":I
    .end local v7    # "directShareHeight":I
    .end local v8    # "shouldShowExtraRow":Z
    .end local v9    # "isExpandable":Z
    .end local v10    # "requiredExpansionHeight":I
    .end local v11    # "minHeight":I
    :cond_b
    goto :goto_4

    .line 2768
    :cond_c
    move-object/from16 v15, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2769
    .local v3, "currentEmptyStateView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_d

    .line 2770
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 2774
    .end local v3    # "currentEmptyStateView":Landroid/view/ViewGroup;
    :cond_d
    :goto_4
    sub-int v3, p2, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method private blacklist createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "r"    # Landroid/view/View$OnClickListener;

    .line 1215
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1216
    .local v0, "b":Landroid/widget/Button;
    if-eqz p1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050093

    .line 1218
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1219
    .local v1, "size":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1220
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1222
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    return-object v0
.end method

.method private blacklist createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .locals 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2378
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsAppPredictorComponentAvailable:Z

    if-nez v0, :cond_0

    .line 2379
    const/4 v0, 0x0

    return-object v0

    .line 2382
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_2

    .line 2384
    return-object v0

    .line 2387
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_2

    .line 2388
    return-object v0

    .line 2394
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2395
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2396
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2397
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "intent_filter"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2398
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->populateTextContent(Landroid/os/Bundle;)V

    .line 2399
    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 2400
    const-string/jumbo v4, "share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    const/16 v4, 0x14

    .line 2401
    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2402
    invoke-virtual {v3, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2403
    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    .line 2404
    .local v3, "appPredictionContext":Landroid/app/prediction/AppPredictionContext;
    const-class v4, Landroid/app/prediction/AppPredictionManager;

    .line 2406
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppPredictionManager;

    .line 2407
    .local v4, "appPredictionManager":Landroid/app/prediction/AppPredictionManager;
    invoke-virtual {v4, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v5

    .line 2409
    .local v5, "appPredictionSession":Landroid/app/prediction/AppPredictor;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2410
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_0

    .line 2412
    :cond_3
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 2414
    :goto_0
    return-object v5
.end method

.method private blacklist createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Landroid/app/prediction/AppPredictor$Callback;
    .locals 1
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 778
    new-instance v0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v0
.end method

.method private blacklist createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .locals 9
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 852
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 858
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 852
    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v7

    .line 859
    .local v7, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    new-instance v8, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v5

    iget v6, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    const/4 v4, 0x0

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;ZI)V

    .line 859
    return-object v8
.end method

.method private blacklist createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .locals 14
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 871
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findSelectedProfile()I

    move-result v10

    .line 872
    .local v10, "selectedProfile":I
    iget-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 875
    const/4 v7, 0x0

    if-nez v10, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v7

    .line 878
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 872
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v11

    .line 879
    .local v11, "personalAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    iget-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 882
    const/4 v0, 0x1

    if-ne v10, v0, :cond_1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v7

    .line 885
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 879
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v12

    .line 886
    .local v12, "workAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    new-instance v13, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 891
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 893
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v7

    iget v8, v9, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    move-object v0, v13

    move-object v2, v11

    move-object v3, v12

    move v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;ZI)V

    .line 886
    return-object v13
.end method

.method private blacklist createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1115
    .local v0, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 1116
    .local v1, "previewType":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivity;->displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createCopyButton()Landroid/widget/Button;
    .locals 3

    .line 1228
    nop

    .line 1229
    const v0, 0x10804c4

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1230
    const v1, 0x1040001

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1228
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    .line 1231
    .local v0, "b":Landroid/widget/Button;
    const v1, 0x1020247

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1232
    return-object v0
.end method

.method private blacklist createEditButton(Landroid/content/Intent;)Landroid/widget/Button;
    .locals 4
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1260
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1262
    :cond_0
    nop

    .line 1263
    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1264
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1262
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    .line 1277
    .local v1, "b":Landroid/widget/Button;
    const v2, 0x1020248

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1278
    return-object v1
.end method

.method private blacklist createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .locals 4
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1236
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1237
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1239
    :cond_0
    nop

    .line 1240
    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1241
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1239
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    .line 1254
    .local v1, "b":Landroid/widget/Button;
    const v2, 0x102024a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1255
    return-object v1
.end method

.method private blacklist displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "previewType"    # I
    .param p2, "targetIntent"    # Landroid/content/Intent;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 1294
    const/4 v0, 0x0

    .line 1296
    .local v0, "layout":Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected content preview type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1298
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1299
    goto :goto_0

    .line 1314
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1315
    goto :goto_0

    .line 1306
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    .line 1309
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1312
    nop

    .line 1320
    :goto_0
    if-eqz v0, :cond_1

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1323
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    .line 1324
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markImagePreviewReady()V

    .line 1327
    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 25
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1550
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1551
    const v4, 0x109005e

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "contentPreviewLayout":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1553
    .end local v4    # "contentPreviewLayout":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/internal/app/IResolverActivityExt;->getDisplayFileContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 1556
    .restart local v4    # "contentPreviewLayout":Landroid/view/ViewGroup;
    :goto_0
    const v6, 0x1020246

    .line 1557
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1562
    .local v6, "actionRow":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1564
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1565
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    goto :goto_1

    .line 1570
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v7

    invoke-interface {v7, v4, v1}, Lcom/android/internal/app/IResolverActivityExt;->addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V

    .line 1574
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1575
    .local v7, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.intent.extra.STREAM"

    if-eqz v8, :cond_3

    .line 1576
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1577
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct {v0, v5, v4}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    .line 1578
    .end local v5    # "uri":Landroid/net/Uri;
    goto/16 :goto_2

    .line 1579
    :cond_3
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1580
    .local v8, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1582
    .local v9, "uriCount":I
    const/16 v10, 0x8

    if-nez v9, :cond_4

    .line 1583
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1584
    const-string v5, "ChooserActivity"

    const-string v10, "Appears to be no uris available in EXTRA_STREAM, removing preview area"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return-object v4

    .line 1588
    :cond_4
    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    .line 1589
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {v0, v5, v4}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_2

    .line 1591
    :cond_5
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v11

    .line 1592
    .local v11, "fileInfo":Lcom/android/internal/app/ChooserActivity$FileInfo;
    add-int/lit8 v12, v9, -0x1

    .line 1593
    .local v12, "remUriCount":I
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1594
    .local v13, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "count"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    iget-object v14, v11, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    const-string v15, "file_name"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    nop

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10403df

    .line 1596
    invoke-static {v14, v13, v15}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v14

    .line 1601
    .local v14, "fileName":Ljava/lang/String;
    const v15, 0x1020269

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1603
    .local v15, "fileNameView":Landroid/widget/TextView;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v5

    invoke-interface {v5, v15}, Lcom/android/internal/app/IResolverActivityExt;->adaptFontSize(Landroid/widget/TextView;)V

    .line 1608
    const v5, 0x1020268

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1610
    .local v5, "thumbnailView":Landroid/view/View;
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    const v10, 0x1020266

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1614
    .local v10, "fileIconView":Landroid/widget/ImageView;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v17

    const v18, 0x10803b6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v10

    invoke-interface/range {v17 .. v24}, Lcom/android/internal/app/IResolverActivityExt;->setChooserPreFileSingleIconView(ILandroid/widget/ImageView;ZLandroid/widget/TextView;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 1625
    .end local v5    # "thumbnailView":Landroid/view/View;
    .end local v8    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v9    # "uriCount":I
    .end local v10    # "fileIconView":Landroid/widget/ImageView;
    .end local v11    # "fileInfo":Lcom/android/internal/app/ChooserActivity$FileInfo;
    .end local v12    # "remUriCount":I
    .end local v13    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "fileNameView":Landroid/widget/TextView;
    :goto_2
    return-object v4
.end method

.method private blacklist displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 16
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1407
    const v4, 0x109005f

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "contentPreviewLayout":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1409
    .end local v4    # "contentPreviewLayout":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/internal/app/IResolverActivityExt;->getDisplayImageContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 1412
    .restart local v4    # "contentPreviewLayout":Landroid/view/ViewGroup;
    :goto_0
    const v6, 0x102026e

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1414
    .local v6, "imagePreview":Landroid/view/ViewGroup;
    const v7, 0x1020246

    .line 1415
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1419
    .local v7, "actionRow":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1421
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1422
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1424
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->createEditButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    goto :goto_1

    .line 1428
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v8

    invoke-interface {v8, v4, v1}, Lcom/android/internal/app/IResolverActivityExt;->addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V

    .line 1432
    :goto_1
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v8, v0, v4, v5}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v8, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1434
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1435
    .local v8, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "screenshot_preview_image"

    const-string v11, "android.intent.extra.STREAM"

    const v12, 0x102026a

    if-eqz v9, :cond_3

    .line 1436
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1437
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1438
    invoke-virtual {v11, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1439
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v10, v12, v9, v5}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1440
    .end local v9    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 1441
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1443
    .local v9, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1444
    .local v11, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v13, "imageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 1446
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v9, v15}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1447
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1451
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 1452
    const-string v5, "ChooserActivity"

    const-string v10, "Attempted to display image preview area with zero available images detected in EXTRA_STREAM list"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1455
    return-object v4

    .line 1458
    :cond_6
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1459
    invoke-virtual {v5, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1460
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const/4 v10, 0x0

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    invoke-static {v5, v12, v14, v10}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1462
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x1

    const/4 v12, 0x2

    if-ne v5, v12, :cond_7

    .line 1463
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const v12, 0x102026b

    .line 1464
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1463
    const/4 v14, 0x0

    invoke-static {v5, v12, v10, v14}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_3

    .line 1465
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v12, :cond_8

    .line 1466
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const v14, 0x102026c

    .line 1467
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1466
    const/4 v15, 0x0

    invoke-static {v5, v14, v10, v15}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1468
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const v10, 0x102026d

    .line 1469
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    .line 1468
    invoke-static {v5, v10, v12, v14}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1473
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v13    # "imageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_8
    :goto_3
    return-object v4
.end method

.method private blacklist displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 10
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1333
    const v0, 0x1090060

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1337
    .local v2, "contentPreviewLayout":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1339
    const v0, 0x1020246

    .line 1340
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1341
    .local v0, "actionRow":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->createCopyButton()Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1343
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1347
    .end local v0    # "actionRow":Landroid/view/ViewGroup;
    :cond_0
    goto :goto_0

    .line 1348
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1349
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 1352
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    new-instance v3, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-interface {v0, p1, p2, p3, v3}, Lcom/android/internal/app/IResolverActivityExt;->hookdisplayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1357
    :goto_0
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1358
    .local v0, "sharingText":Ljava/lang/CharSequence;
    const/16 v3, 0x8

    if-nez v0, :cond_3

    .line 1359
    const v4, 0x1020271

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1362
    :cond_3
    const v4, 0x102026f

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1363
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    .end local v4    # "textView":Landroid/widget/TextView;
    :goto_1
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1367
    .local v4, "previewTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1368
    const v1, 0x1020274

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1371
    :cond_4
    const v5, 0x1020273

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1373
    .local v5, "previewTitleView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 1376
    .local v6, "previewData":Landroid/content/ClipData;
    const/4 v7, 0x0

    .line 1377
    .local v7, "previewThumbnail":Landroid/net/Uri;
    if-eqz v6, :cond_5

    .line 1378
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 1379
    invoke-virtual {v6, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 1380
    .local v8, "previewDataItem":Landroid/content/ClipData$Item;
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1384
    .end local v8    # "previewDataItem":Landroid/content/ClipData$Item;
    :cond_5
    const v8, 0x1020272

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1386
    .local v9, "previewThumbnailView":Landroid/widget/ImageView;
    if-nez v7, :cond_6

    .line 1387
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1389
    :cond_6
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1390
    invoke-static {v3, v8, v7, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1394
    .end local v5    # "previewTitleView":Landroid/widget/TextView;
    .end local v6    # "previewData":Landroid/content/ClipData;
    .end local v7    # "previewThumbnail":Landroid/net/Uri;
    .end local v9    # "previewThumbnailView":Landroid/widget/ImageView;
    :goto_2
    return-object v2
.end method

.method private blacklist extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1496
    const/4 v0, 0x0

    .line 1497
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1499
    .local v1, "hasThumbnail":Z
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity;->queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1501
    const-string v4, "_display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1502
    .local v4, "nameIndex":I
    const-string/jumbo v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1503
    .local v5, "titleIndex":I
    const-string v6, "flags"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1505
    .local v6, "flagsIndex":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1506
    if-eq v4, v2, :cond_0

    .line 1507
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 1508
    :cond_0
    if-eq v5, v2, :cond_1

    .line 1509
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1512
    :cond_1
    :goto_0
    if-eq v6, v2, :cond_4

    .line 1513
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move v1, v8

    goto :goto_3

    .line 1499
    .end local v4    # "nameIndex":I
    .end local v5    # "titleIndex":I
    .end local v6    # "flagsIndex":I
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "hasThumbnail":Z
    .end local p0    # "this":Lcom/android/internal/app/ChooserActivity;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    :goto_2
    throw v4

    .line 1517
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "hasThumbnail":Z
    .restart local p0    # "this":Lcom/android/internal/app/ChooserActivity;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1519
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_5
    goto :goto_4

    .line 1517
    :catch_0
    move-exception v3

    .line 1518
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 1521
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1522
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1523
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1524
    .local v3, "index":I
    if-eq v3, v2, :cond_6

    .line 1525
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .end local v3    # "index":I
    :cond_6
    new-instance v2, Lcom/android/internal/app/ChooserActivity$FileInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ChooserActivity$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private blacklist filterShortcutsByTargetComponentName(Ljava/util/List;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p2, "requiredTarget"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2190
    .local p1, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2191
    .local v0, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 2192
    .local v2, "shortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2193
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    .end local v2    # "shortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    :cond_0
    goto :goto_0

    .line 2196
    :cond_1
    return-object v0
.end method

.method private blacklist findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .locals 6
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1686
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_0

    .line 1688
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1689
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v2

    return v2

    .line 1690
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    .line 1691
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1692
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1696
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1699
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, v3, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1700
    return v5

    .line 1702
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    goto :goto_0

    .line 1704
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 1693
    :cond_4
    :goto_1
    return v3

    .line 1707
    .end local v1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_5
    return v3
.end method

.method private blacklist findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1670
    if-nez p1, :cond_0

    .line 1671
    const/4 v0, 0x3

    return v0

    .line 1674
    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method private blacklist findSelectedProfile()I
    .locals 2

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSelectedProfileExtra()I

    move-result v0

    .line 898
    .local v0, "selectedProfile":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v0

    .line 901
    :cond_0
    return v0
.end method

.method private blacklist getActiveEmptyStateView()Landroid/view/ViewGroup;
    .locals 2

    .line 2804
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    .line 2805
    .local v0, "currentPage":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2431
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2430
    :goto_0
    return-object v0
.end method

.method private blacklist getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2440
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNumSheetExpansions()I
    .locals 3

    .line 1711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_num_sheet_expansions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static blacklist getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 821
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 823
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 822
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 826
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getProfileForUser(Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 2794
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2795
    const/4 v0, 0x0

    return v0

    .line 2796
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2797
    const/4 v0, 0x1

    return v0

    .line 2799
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not belong to a personal or work profile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I
    .locals 5
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 2023
    nop

    .line 2024
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2025
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2026
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 2027
    .local v1, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    iget-object v2, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2030
    .local v2, "maxRankedResults":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2031
    iget-object v4, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2032
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2033
    return v3

    .line 2030
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2036
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getTargetIntentFilter()Landroid/content/IntentFilter;
    .locals 10

    .line 2056
    const-string v0, "ChooserActivity"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2057
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 2058
    .local v3, "dataString":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2059
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2060
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 2062
    :cond_0
    const-string v4, "Failed to get target intent filter: intent data and type are null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    return-object v1

    .line 2065
    :cond_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    .local v5, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v6, :cond_3

    .line 2068
    :try_start_1
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 2069
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 2070
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    goto :goto_0

    .line 2073
    :cond_3
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2074
    .local v6, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v6, :cond_4

    .line 2075
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2078
    .end local v6    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 2079
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2082
    .end local v7    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 2083
    :cond_5
    return-object v4

    .line 2084
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "dataString":Ljava/lang/String;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_0
    move-exception v2

    .line 2085
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to get target intent filter"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2086
    return-object v1
.end method

.method private blacklist handleLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 2641
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    if-nez v0, :cond_0

    .line 2642
    return-void

    .line 2644
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v7

    .line 2645
    .local v7, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    iget-object v0, v6, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v8

    .line 2648
    .local v8, "gridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    .line 2649
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2653
    :cond_1
    sub-int v0, p4, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 2654
    .local v9, "availableWidth":I
    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->consumeLayoutRequest()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2655
    invoke-virtual {v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->calculateChooserTargetWidth(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2656
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v6, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    if-eq v9, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v10, v0

    .line 2658
    .local v10, "isLayoutUpdated":Z
    if-nez v10, :cond_4

    iget v0, v6, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 2659
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 2660
    :cond_4
    iput v9, v6, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    .line 2661
    if-eqz v10, :cond_5

    .line 2665
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2666
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GridLayoutManager;

    iget v1, v6, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2669
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->updateTabPadding()V

    .line 2672
    :cond_5
    iget-object v0, v6, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    .line 2673
    .local v11, "currentUserHandle":Landroid/os/UserHandle;
    invoke-direct {v6, v11}, Lcom/android/internal/app/ChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v12

    .line 2674
    .local v12, "currentProfile":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->findSelectedProfile()I

    move-result v13

    .line 2675
    .local v13, "initialProfile":I
    if-eq v12, v13, :cond_6

    .line 2676
    return-void

    .line 2679
    :cond_6
    iget v0, v6, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 2680
    return-void

    .line 2683
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, p3

    move/from16 v4, p5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2692
    .end local v11    # "currentUserHandle":Landroid/os/UserHandle;
    .end local v12    # "currentProfile":I
    .end local v13    # "initialProfile":I
    :cond_8
    return-void

    .line 2650
    .end local v9    # "availableWidth":I
    .end local v10    # "isLayoutUpdated":Z
    :cond_9
    :goto_2
    return-void
.end method

.method private blacklist handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 962
    invoke-static {p0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 963
    if-nez p1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    .line 965
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 966
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    goto :goto_0

    .line 969
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 971
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    .line 972
    return-void
.end method

.method private blacklist handleScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .line 2629
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->handleScroll(Landroid/view/View;II)V

    .line 2632
    :cond_0
    return-void
.end method

.method private blacklist hideStickyContentPreview()V
    .locals 2

    .line 3051
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3052
    return-void

    .line 3054
    :cond_0
    const v0, 0x1020264

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3055
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3056
    return-void
.end method

.method private blacklist incrementNumSheetExpansions()V
    .locals 3

    .line 1715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1716
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1715
    const-string/jumbo v2, "pref_num_sheet_expansions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1717
    return-void
.end method

.method private blacklist isAppPredictionServiceAvailable()Z
    .locals 1

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2210
    return v1

    .line 2214
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2219
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 2221
    const/4 v1, 0x1

    return v1

    .line 2223
    :cond_1
    return v1

    .line 2215
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private blacklist isStickyContentPreviewShowing()Z
    .locals 2

    .line 3046
    const v0, 0x1020264

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3047
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic blacklist lambda$convertToChooserTarget$4(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .locals 2
    .param p0, "a"    # Landroid/service/chooser/ChooserTarget;
    .param p1, "b"    # Landroid/service/chooser/ChooserTarget;

    .line 2290
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private blacklist loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "parent"    # Landroid/view/View;

    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v0

    .line 1631
    .local v0, "fileInfo":Lcom/android/internal/app/ChooserActivity$FileInfo;
    const v1, 0x1020269

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1632
    .local v1, "fileNameView":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    iget-boolean v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    const v3, 0x1020268

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1635
    new-instance v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v2, p0, p2, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1636
    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_0

    .line 1638
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1639
    .local v10, "thumbnailView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    const v2, 0x1020266

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/ImageView;

    .line 1642
    .local v11, "fileIconView":Landroid/widget/ImageView;
    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1646
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 1647
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v3, p0, p2, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1648
    invoke-static {v3, v2, p1, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1649
    return-void

    .line 1658
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v2

    const v3, 0x1080261

    const/4 v5, 0x1

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    move-object v4, v11

    move-object v6, v1

    move-object v9, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/app/IResolverActivityExt;->setChooserPreFileSingleIconView(ILandroid/widget/ImageView;ZLandroid/widget/TextView;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 1661
    .end local v10    # "thumbnailView":Landroid/view/View;
    .end local v11    # "fileIconView":Landroid/widget/ImageView;
    :goto_0
    return-void
.end method

.method private blacklist logActionShareWithPreview()V
    .locals 5

    .line 3059
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3060
    .local v0, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 3061
    .local v1, "previewType":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x674

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3062
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 3061
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3063
    return-void
.end method

.method private blacklist logContentPreviewWarning(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") thumbnail/name for preview. If desired, consider using Intent#createChooser to launch the ChooserActivity, and set your Intent\'s clipData and flags in accordance with that method\'s documentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    return-void
.end method

.method private blacklist logDirectShareTargetReceived(I)V
    .locals 4
    .param p1, "logCategory"    # I

    .line 2296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 2297
    .local v0, "apiLatency":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2298
    return-void
.end method

.method private blacklist maybeQueryAdditionalPostProcessingTargets(Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 2
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2882
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2883
    return-void

    .line 2887
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2888
    return-void

    .line 2893
    :cond_1
    const-string v0, "ChooserActivity"

    const-string/jumbo v1, "querying direct share targets from ShortcutManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 2898
    return-void
.end method

.method private blacklist maybeSetupGlobalLayoutListener()V
    .locals 3

    .line 2962
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2963
    return-void

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 2966
    .local v0, "recyclerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ChooserActivity$5;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    .line 2967
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2981
    return-void
.end method

.method private blacklist modifyTargetIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "in"    # Landroid/content/Intent;

    .line 1858
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1862
    :cond_0
    return-void
.end method

.method private blacklist onCopyButtonClicked(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 975
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 976
    .local v0, "targetIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto/16 :goto_4

    .line 979
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 982
    .local v2, "clipData":Landroid/content/ClipData;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ChooserActivity"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    .line 983
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "extraText":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 986
    .local v6, "extraStream":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 987
    invoke-static {v7, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_0

    .line 988
    :cond_1
    if-eqz v6, :cond_2

    .line 989
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 994
    .end local v3    # "extraText":Ljava/lang/String;
    .end local v6    # "extraStream":Landroid/net/Uri;
    :goto_0
    goto :goto_3

    .line 991
    .restart local v3    # "extraText":Ljava/lang/String;
    .restart local v6    # "extraStream":Landroid/net/Uri;
    :cond_2
    const-string v4, "No data available to copy to clipboard"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void

    .line 994
    .end local v3    # "extraText":Ljava/lang/String;
    .end local v6    # "extraStream":Landroid/net/Uri;
    :cond_3
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 995
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 999
    .local v3, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/app/IResolverActivityExt;->hookonCopyButtonClicked(Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1001
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1002
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 1002
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_4
    goto :goto_2

    .line 1008
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/android/internal/app/IResolverActivityExt;->getclipData(Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v5

    move-object v2, v5

    if-nez v5, :cond_6

    return-void

    .line 1011
    .end local v3    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    :goto_2
    nop

    .line 1018
    :goto_3
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 1020
    .local v3, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ClipboardManager;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1023
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x6d5

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1024
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1025
    .local v5, "targetLogMaker":Landroid/metrics/LogMaker;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, ""

    const/4 v9, -0x1

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1032
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ChooserActivity;->setResult(I)V

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1035
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "clipData":Landroid/content/ClipData;
    .end local v3    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v5    # "targetLogMaker":Landroid/metrics/LogMaker;
    :goto_4
    return-void

    .line 1014
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "clipData":Landroid/content/ClipData;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not supported for copying to clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method private blacklist populateTextContent(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2418
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2419
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2420
    .local v1, "sharedText":Ljava/lang/String;
    const-string/jumbo v2, "shared_text"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    return-void
.end method

.method private blacklist sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 5
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 2354
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2355
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2354
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2356
    .local v0, "directShareAppPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_0

    .line 2357
    return-void

    .line 2359
    :cond_0
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-nez v1, :cond_1

    .line 2360
    return-void

    .line 2362
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 2363
    .local v1, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    const/4 v2, 0x0

    .line 2364
    .local v2, "appTarget":Landroid/app/prediction/AppTarget;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 2365
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 2368
    :cond_2
    if-eqz v2, :cond_3

    .line 2369
    new-instance v3, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    .line 2371
    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v3

    .line 2372
    invoke-virtual {v3}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v3

    .line 2369
    invoke-virtual {v0, v3}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 2374
    :cond_3
    return-void
.end method

.method private blacklist sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 12
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2329
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2330
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2329
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2331
    .local v0, "directShareAppPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_0

    .line 2332
    return-void

    .line 2335
    :cond_0
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v1, :cond_1

    .line 2336
    return-void

    .line 2338
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object v1

    .line 2339
    .local v1, "surfacedTargetInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/ChooserTargetInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2340
    .local v2, "targetIds":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTargetId;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 2341
    .local v4, "chooserTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    invoke-interface {v4}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v5

    .line 2342
    .local v5, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 2343
    .local v6, "componentName":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2344
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 2345
    .local v7, "shortcutId":Ljava/lang/String;
    new-instance v8, Landroid/app/prediction/AppTargetId;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    .line 2346
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "shortcut_target"

    aput-object v11, v9, v10

    const-string v10, "%s/%s/%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 2345
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2349
    .end local v4    # "chooserTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    .end local v5    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "shortcutId":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 2350
    :cond_3
    const-string v3, "direct_share"

    invoke-virtual {v0, v3, v2}, Landroid/app/prediction/AppPredictor;->notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    .line 2351
    return-void
.end method

.method private blacklist sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 9
    .param p2, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Lcom/android/internal/app/ChooserListAdapter;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 2144
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p3, "appTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2145
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appTargets.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2147
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2149
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 2150
    .local v1, "selectedProfileContext":Landroid/content/Context;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 2151
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2152
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/ChooserActivity;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2153
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2154
    if-eqz p3, :cond_2

    .line 2155
    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2150
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2161
    .end local v2    # "i":I
    :cond_3
    if-nez p3, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    .line 2162
    :cond_4
    const/4 v2, 0x3

    :goto_2
    nop

    .line 2167
    .local v2, "shortcutType":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    .local v3, "resultRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 2169
    invoke-virtual {p2, v4}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    .line 2170
    .local v5, "displayResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    nop

    .line 2172
    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 2171
    invoke-direct {p0, p1, v6}, Lcom/android/internal/app/ChooserActivity;->filterShortcutsByTargetComponentName(Ljava/util/List;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v6

    .line 2173
    .local v6, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2174
    goto :goto_4

    .line 2176
    :cond_5
    invoke-virtual {p0, v6, p1, p3, v2}, Lcom/android/internal/app/ChooserActivity;->convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 2179
    .local v7, "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    invoke-direct {v8, v5, v7, p4}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2181
    .local v8, "resultRecord":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2168
    .end local v5    # "displayResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v7    # "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .end local v8    # "resultRecord":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2184
    .end local v4    # "i":I
    :cond_6
    new-array v0, v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2185
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2184
    invoke-direct {p0, v2, v0}, Lcom/android/internal/app/ChooserActivity;->sendShortcutManagerShareTargetResults(I[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;)V

    .line 2186
    return-void
.end method

.method private blacklist sendShortcutManagerShareTargetResults(I[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;)V
    .locals 2
    .param p1, "shortcutType"    # I
    .param p2, "results"    # [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2201
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2202
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2203
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2204
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2205
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2206
    return-void
.end method

.method private blacklist setHorizontalScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3173
    const v0, 0x1020446

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverViewPager;

    .line 3174
    .local v0, "viewPager":Lcom/android/internal/app/ResolverViewPager;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverViewPager;->setSwipingEnabled(Z)V

    .line 3175
    return-void
.end method

.method private blacklist setVerticalScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3178
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3179
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 3180
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserGridLayoutManager;

    .line 3181
    .local v0, "layoutManager":Lcom/android/internal/app/ChooserGridLayoutManager;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->setVerticalScrollEnabled(Z)V

    .line 3182
    return-void
.end method

.method private blacklist setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "appPredictorCallback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 767
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 768
    .local v0, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_0

    .line 769
    const/4 v1, 0x0

    return-object v1

    .line 771
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 773
    return-object v0
.end method

.method private blacklist setupScrollListener()V
    .locals 6

    .line 2919
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v0, :cond_0

    .line 2920
    return-void

    .line 2922
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1020013

    goto :goto_0

    :cond_1
    const v0, 0x1020249

    .line 2923
    .local v0, "elevatedViewResId":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2926
    .local v1, "elevatedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/app/IResolverActivityExt;->setChooserHeadBackground(Landroid/view/View;)V

    .line 2928
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v2

    .line 2929
    .local v2, "defaultElevation":F
    nop

    .line 2930
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 2931
    .local v3, "chooserHeaderScrollElevation":F
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/ChooserActivity$4;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/android/internal/app/ChooserActivity$4;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 2959
    return-void
.end method

.method private blacklist shouldDisplayLandscape(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .line 1068
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shouldNearbyShareBeFirstInRankedRow()Z
    .locals 1

    .line 4188
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsNearbyShareFirstTargetInRankedApp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shouldNearbyShareBeIncludedAsActionButton()Z
    .locals 1

    .line 4192
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist shouldQueryShortcutManager(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2122
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2123
    return v1

    .line 2125
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2126
    return v1

    .line 2128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2129
    return v2

    .line 2131
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2132
    return v2

    .line 2134
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2135
    return v2

    .line 2137
    :cond_4
    return v1
.end method

.method private blacklist shouldShowExtraRow(I)Z
    .locals 3
    .param p1, "rowsToShow"    # I

    .line 2783
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2786
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 2785
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2783
    :goto_0
    return v1
.end method

.method private blacklist shouldShowStickyContentPreview()Z
    .locals 2

    .line 3007
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3008
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3007
    :goto_0
    return v0
.end method

.method private blacklist shouldShowStickyContentPreviewNoOrientationCheck()Z
    .locals 2

    .line 3012
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 3014
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3013
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 3014
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3012
    :goto_0
    return v0
.end method

.method private blacklist shouldShowTargetDetails(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .locals 5
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 3111
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3113
    .local v0, "nearbyShare":Landroid/content/ComponentName;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3114
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 3113
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3114
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3115
    .local v3, "isNearbyShare":Z
    :goto_0
    instance-of v4, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-nez v4, :cond_2

    instance-of v4, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private blacklist showStickyContentPreview()V
    .locals 2

    .line 3038
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3039
    return-void

    .line 3041
    :cond_0
    const v0, 0x1020264

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3042
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3043
    return-void
.end method

.method private blacklist showTargetDetails(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 6
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1814
    if-nez p1, :cond_0

    return-void

    .line 1817
    :cond_0
    new-instance v0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;-><init>()V

    .line 1818
    .local v0, "fragment":Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1820
    .local v1, "bundle":Landroid/os/Bundle;
    instance-of v2, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v2, :cond_4

    .line 1821
    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1822
    .local v2, "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1823
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1827
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    nop

    .line 1830
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.shortcut.ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1829
    const-string/jumbo v5, "shortcut_id"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    nop

    .line 1833
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isPinned()Z

    move-result v4

    .line 1832
    const-string/jumbo v5, "is_shortcut_pinned"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1834
    nop

    .line 1835
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 1834
    const-string v5, "intent_filter"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1836
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1837
    nop

    .line 1838
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1837
    const-string/jumbo v5, "shortcut_title"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    .end local v2    # "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    :cond_2
    goto :goto_1

    .line 1824
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .restart local v2    # "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    :cond_3
    :goto_0
    const-string v3, "ChooserActivity"

    const-string v4, "displayResolveInfo or chooserTarget in selectableTargetInfo are null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return-void

    .line 1840
    .end local v2    # "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    :cond_4
    instance-of v2, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v2, :cond_5

    .line 1842
    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 1843
    .local v2, "mti":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getTargets()Ljava/util/ArrayList;

    move-result-object v3

    .line 1844
    .end local v2    # "mti":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    goto :goto_1

    .line 1845
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    .line 1846
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1849
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1848
    const-string/jumbo v4, "user_handle"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1850
    const-string/jumbo v2, "target_infos"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1852
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v4, "targetDetailsFragment"

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1855
    return-void
.end method

.method private blacklist updateLayoutWidth(IILandroid/view/View;)V
    .locals 2
    .param p1, "layoutResourceId"    # I
    .param p2, "width"    # I
    .param p3, "parent"    # Landroid/view/View;

    .line 1105
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1106
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1108
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1109
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private blacklist updateStickyContentPreview()V
    .locals 2

    .line 3019
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    const v0, 0x1020264

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3025
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3026
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 3027
    .local v1, "contentPreviewView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3030
    .end local v0    # "contentPreviewContainer":Landroid/view/ViewGroup;
    .end local v1    # "contentPreviewView":Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3031
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->showStickyContentPreview()V

    goto :goto_0

    .line 3033
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->hideStickyContentPreview()V

    .line 3035
    :goto_0
    return-void
.end method

.method private blacklist updateTabPadding()V
    .locals 6

    .line 1091
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1093
    .local v0, "tabs":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1096
    .local v1, "iconSize":F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    int-to-float v4, v3

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1099
    .local v2, "padding":F
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050264

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 1100
    float-to-int v3, v2

    float-to-int v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1102
    .end local v0    # "tabs":Landroid/view/View;
    .end local v1    # "iconSize":F
    .end local v2    # "padding":F
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1782
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    .line 1785
    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 1783
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 1789
    :cond_0
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .locals 1

    .line 762
    const v0, 0x10303ed

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .locals 3
    .param p1, "height"    # I

    .line 2047
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 2049
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2050
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setFooterHeight(I)V

    .line 2049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method blacklist checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .line 2473
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    .line 2474
    .local v0, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2476
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2477
    const/4 v4, 0x1

    return v4

    .line 2474
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2480
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 19
    .param p4, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 2245
    .local p1, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p2, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p3, "allAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    .local v4, "scoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 2247
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2248
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    .line 2249
    .local v6, "shortcutRank":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2250
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    .end local v6    # "shortcutRank":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2253
    .end local v5    # "i":I
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2256
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2257
    .local v5, "chooserTargetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 2258
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 2259
    .local v7, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 2262
    .local v8, "indexInAllShortcuts":I
    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x3c23d70a    # 0.01f

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v3, v10, :cond_3

    .line 2264
    int-to-float v10, v8

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .local v10, "score":F
    goto :goto_2

    .line 2267
    .end local v10    # "score":F
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 2268
    .local v10, "rankIndex":I
    int-to-float v14, v10

    mul-float/2addr v14, v12

    sub-float/2addr v13, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v10, v11

    .line 2271
    .local v10, "score":F
    :goto_2
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2272
    .local v11, "extras":Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.extra.shortcut.ID"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    new-instance v18, Landroid/service/chooser/ChooserTarget;

    .line 2275
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    .line 2277
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v12, v18

    move v15, v10

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2279
    .local v12, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2280
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v13, :cond_4

    if-eqz v2, :cond_4

    .line 2281
    nop

    .line 2282
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/prediction/AppTarget;

    .line 2281
    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    :cond_4
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    if-eqz v13, :cond_5

    .line 2285
    invoke-interface {v13, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    .end local v7    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "indexInAllShortcuts":I
    .end local v10    # "score":F
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v12    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v9, p2

    .line 2289
    .end local v6    # "i":I
    new-instance v6, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 2291
    .local v6, "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2292
    return-object v5
.end method

.method public blacklist createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;
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
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;"
        }
    .end annotation

    .line 2554
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 2556
    invoke-virtual {p0, p6}, Lcom/android/internal/app/ChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v6

    .line 2554
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 2557
    .local v0, "chooserListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Landroid/app/prediction/AppPredictor$Callback;

    move-result-object v1

    .line 2558
    .local v1, "appPredictorCallback":Landroid/app/prediction/AppPredictor$Callback;
    invoke-direct {p0, p6, v1}, Lcom/android/internal/app/ChooserActivity;->setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;

    move-result-object v2

    .line 2559
    .local v2, "appPredictor":Landroid/app/prediction/AppPredictor;
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 2560
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 2561
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v3
.end method

.method public blacklist createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;)Lcom/android/internal/app/ChooserListAdapter;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
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
            ")",
            "Lcom/android/internal/app/ChooserListAdapter;"
        }
    .end annotation

    .line 2568
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Lcom/android/internal/app/ChooserListAdapter;

    .line 2570
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2571
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v10

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/app/ChooserListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 2568
    return-object v11
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .locals 12
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2576
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v9

    .line 2578
    .local v9, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-eqz v9, :cond_0

    .line 2579
    new-instance v7, Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2580
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v10, v0

    .local v0, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    goto :goto_0

    .line 2582
    .end local v0    # "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    :cond_0
    new-instance v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 2583
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2584
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v10, v0

    .line 2587
    .local v10, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    :goto_0
    new-instance v11, Lcom/android/internal/app/ChooserActivity$ChooserListController;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 2590
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2591
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/ChooserActivity;->mLaunchedFromUid:I

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object v7, p1

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ChooserActivity$ChooserListController;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 2587
    return-object v11
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 1
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 834
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    goto :goto_0

    .line 838
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 843
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    return-object v0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .locals 1
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 940
    new-instance v0, Lcom/android/internal/app/ChooserActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$3;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .locals 1

    .line 2507
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    if-nez v0, :cond_0

    .line 2508
    new-instance v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 2510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method public blacklist getChooserWrapper()Lcom/android/internal/app/IChooserActivityWrapper;
    .locals 1

    .line 4199
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserWrapper:Lcom/android/internal/app/IChooserActivityWrapper;

    return-object v0
.end method

.method protected blacklist getEditSharingComponent()Landroid/content/ComponentName;
    .locals 2

    .line 1141
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "editorPackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 1143
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 11
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1150
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getEditSharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1152
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1153
    .local v1, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1154
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1157
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_1

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1163
    :cond_0
    new-instance v10, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const v2, 0x104085b

    .line 1164
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v6, ""

    move-object v2, v10

    move-object v3, p1

    move-object v4, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1165
    .local v2, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const v3, 0x1080538

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1166
    return-object v2

    .line 1158
    .end local v2    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device-specified image edit component ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooserActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist getLayoutResource()I
    .locals 1

    .line 1793
    const v0, 0x109005d

    return v0
.end method

.method public blacklist getMaxRankedTargets()I
    .locals 1

    .line 2834
    iget v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    .line 3144
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 2500
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 2501
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2503
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method protected blacklist getNearbySharingComponent()Landroid/content/ComponentName;
    .locals 3

    .line 1123
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->hookgetNearbySharingComponent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1124
    return-object v1

    .line 1127
    :cond_0
    nop

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1127
    const-string/jumbo v2, "nearby_sharing_component"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "nearbyComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    const v2, 0x104024b

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    return-object v1

    .line 1136
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 14
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1173
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1175
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1176
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1179
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_5

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    goto :goto_2

    .line 1187
    :cond_1
    const/4 v1, 0x0

    .line 1188
    .local v1, "name":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1189
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1190
    .local v11, "metaData":Landroid/os/Bundle;
    if-eqz v11, :cond_2

    .line 1192
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1193
    .local v4, "pkgRes":Landroid/content/res/Resources;
    const-string v5, "android.service.chooser.chip_label"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1194
    .local v5, "nameResId":I
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1195
    const-string v6, "android.service.chooser.chip_icon"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1196
    .local v6, "resId":I
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    .end local v4    # "pkgRes":Landroid/content/res/Resources;
    .end local v5    # "nameResId":I
    .end local v6    # "resId":I
    goto :goto_0

    .line 1198
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1197
    :catch_1
    move-exception v4

    .line 1201
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1204
    :cond_3
    if-nez v3, :cond_4

    .line 1205
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 1204
    :cond_4
    move-object v12, v3

    .line 1208
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v13, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v9, 0x0

    const-string v7, ""

    move-object v3, v13

    move-object v4, p1

    move-object v5, v10

    move-object v6, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1210
    .local v3, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v3, v12}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1211
    return-object v3

    .line 1180
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v3    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v11    # "metaData":Landroid/os/Bundle;
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device-specified nearby sharing component ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooserActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-object v1
.end method

.method public blacklist getReferrerFillInIntent()Landroid/content/Intent;
    .locals 1

    .line 2829
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1743
    move-object v0, p2

    .line 1744
    .local v0, "result":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1745
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1746
    .local v1, "replExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1747
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    .line 1748
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1751
    .end local v1    # "replExtras":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 1752
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1753
    :cond_1
    nop

    .line 1754
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1753
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1759
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1761
    :cond_2
    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .locals 1

    .line 952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 953
    return-void
.end method

.method protected blacklist isImageType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1665
    if-eqz p1, :cond_0

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2914
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2915
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public blacklist isSendAction(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 2985
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2986
    return v0

    .line 2989
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2990
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2991
    return v0

    .line 2994
    :cond_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2998
    :cond_2
    return v0

    .line 2995
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist isUserRunning(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2902
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2903
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method protected blacklist isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2908
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2909
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method protected blacklist isWorkProfile()Z
    .locals 2

    .line 934
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 935
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 934
    return v0
.end method

.method synthetic blacklist lambda$createAppPredictorCallback$0$com-android-internal-app-ChooserActivity(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .locals 9
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "resultList"    # Ljava/util/List;

    .line 779
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 782
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 783
    return-void

    .line 785
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 789
    return-void

    .line 791
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "shareShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v1, "shortcutResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    .line 796
    .local v3, "appTarget":Landroid/app/prediction/AppTarget;
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 797
    goto :goto_0

    .line 799
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    .end local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_0

    .line 801
    :cond_4
    move-object p2, v1

    .line 802
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    .line 803
    .restart local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    new-instance v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 804
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    .line 806
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 803
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_1

    .line 808
    :cond_5
    nop

    .line 809
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 808
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 810
    return-void

    .line 780
    .end local v0    # "shareShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v1    # "shortcutResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method synthetic blacklist lambda$createEditButton$2$com-android-internal-app-ChooserActivity(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .locals 5
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "unused"    # Landroid/view/View;

    .line 1267
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, ""

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1273
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1275
    return-void
.end method

.method synthetic blacklist lambda$createNearbyButton$1$com-android-internal-app-ChooserActivity(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .locals 5
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "unused"    # Landroid/view/View;

    .line 1244
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, ""

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1252
    return-void
.end method

.method synthetic blacklist lambda$handleLayoutChange$5$com-android-internal-app-ChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "gridAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 2684
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2687
    :cond_0
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/internal/app/ChooserActivity;->calculateDrawerOffset(IILcom/android/internal/widget/RecyclerView;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)I

    move-result v0

    .line 2688
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    .line 2689
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markOffsetCalculated()V

    .line 2690
    return-void

    .line 2685
    .end local v0    # "offset":I
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$queryDirectShareTargets$3$com-android-internal-app-ChooserActivity(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2110
    .local v0, "selectedProfileContext":Landroid/content/Context;
    nop

    .line 2111
    const-string/jumbo v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 2112
    .local v1, "sm":Landroid/content/pm/ShortcutManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v2

    .line 2113
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v2, p3, v3, p1}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2114
    return-void
.end method

.method protected blacklist loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;

    .line 2599
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2604
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2605
    :catch_0
    move-exception v1

    .line 2606
    .local v1, "ex":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 2608
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0

    .line 2600
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 2824
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist maybeLogProfileChange()V
    .locals 1

    .line 4184
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logShareheetProfileChanged()V

    .line 4185
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 9
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1766
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 1767
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1768
    .local v0, "target":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1769
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 1771
    .local v1, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    goto :goto_0

    .line 1772
    :catch_0
    move-exception v2

    .line 1773
    .local v2, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooserActivity"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    .end local v0    # "target":Landroid/content/ComponentName;
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 3163
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3165
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setEmptyStateBottomOffset(I)V

    .line 3166
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3167
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x1020469

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3166
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    .line 3169
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 3133
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1045
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    return-void

    .line 1052
    :cond_0
    const v0, 0x1020446

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1053
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1057
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    .line 1058
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 1059
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1060
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateStickyContentPreview()V

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateTabPadding()V

    .line 1062
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 35
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 528
    move-object/from16 v9, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 529
    .local v10, "intentReceivedTime":J
    iget-object v0, v9, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetTriggered()V

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->isAppPredictionServiceAvailable()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/internal/app/ChooserActivity;->mIsAppPredictorComponentAvailable:Z

    .line 535
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 537
    .local v13, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 540
    .local v1, "targetParcelable":Landroid/os/Parcelable;
    const-string v0, "android.app.extra.OPTIONS"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    .line 541
    .local v14, "bundle":Landroid/os/Parcelable;
    if-eqz v14, :cond_0

    instance-of v0, v14, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 542
    move-object v0, v14

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, v9, Lcom/android/internal/app/ChooserActivity;->mBundle:Landroid/os/Bundle;

    .line 545
    :cond_0
    instance-of v0, v1, Landroid/net/Uri;

    const/4 v15, 0x1

    if-eqz v0, :cond_1

    .line 547
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 551
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 554
    :cond_1
    move-object v0, v1

    .end local v1    # "targetParcelable":Landroid/os/Parcelable;
    .local v0, "targetParcelable":Landroid/os/Parcelable;
    :goto_0
    instance-of v1, v0, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v8, "ChooserActivity"

    if-nez v1, :cond_2

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target is not an intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 557
    invoke-super {v9, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 558
    return-void

    .line 560
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 561
    .local v1, "target":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 562
    invoke-direct {v9, v1}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 564
    :cond_3
    nop

    .line 565
    const-string v3, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 566
    .local v7, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v7, :cond_a

    .line 567
    if-nez v1, :cond_4

    move v3, v15

    goto :goto_1

    :cond_4
    move v3, v12

    .line 569
    .local v3, "offset":Z
    :goto_1
    array-length v4, v7

    if-eqz v3, :cond_5

    sub-int/2addr v4, v15

    :cond_5
    new-array v4, v4, [Landroid/content/Intent;

    .line 570
    .local v4, "additionalTargets":[Landroid/content/Intent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v7

    if-ge v5, v6, :cond_9

    .line 571
    aget-object v6, v7, v5

    instance-of v6, v6, Landroid/content/Intent;

    if-nez v6, :cond_6

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " is not an Intent: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v12, v7, v5

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 575
    invoke-super {v9, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 576
    return-void

    .line 578
    :cond_6
    aget-object v6, v7, v5

    check-cast v6, Landroid/content/Intent;

    .line 579
    .local v6, "additionalTarget":Landroid/content/Intent;
    if-nez v5, :cond_7

    if-nez v1, :cond_7

    .line 580
    move-object v1, v6

    .line 581
    invoke-direct {v9, v1}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_4

    .line 583
    :cond_7
    if-eqz v3, :cond_8

    add-int/lit8 v16, v5, -0x1

    goto :goto_3

    :cond_8
    move/from16 v16, v5

    :goto_3
    aput-object v6, v4, v16

    .line 584
    invoke-direct {v9, v6}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 570
    .end local v6    # "additionalTarget":Landroid/content/Intent;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 587
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {v9, v4}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    move-object v6, v1

    goto :goto_5

    .line 566
    .end local v3    # "offset":Z
    .end local v4    # "additionalTargets":[Landroid/content/Intent;
    :cond_a
    move-object v6, v1

    .line 590
    .end local v1    # "target":Landroid/content/Intent;
    .local v6, "target":Landroid/content/Intent;
    :goto_5
    const-string v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "title":Ljava/lang/CharSequence;
    if-eqz v6, :cond_c

    .line 595
    invoke-virtual {v9, v6}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 596
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_6

    .line 598
    :cond_b
    const-string v3, "Ignoring intent\'s EXTRA_TITLE, deprecated in P. You may wish to set a preview title by using EXTRA_TITLE property of the wrapped EXTRA_INTENT."

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_c
    move-object/from16 v16, v1

    .end local v1    # "title":Ljava/lang/CharSequence;
    .local v16, "title":Ljava/lang/CharSequence;
    :goto_6
    const/4 v1, 0x0

    .line 605
    .local v1, "defaultTitleRes":I
    if-nez v16, :cond_d

    .line 606
    const v1, 0x1040203

    move/from16 v17, v1

    goto :goto_7

    .line 605
    :cond_d
    move/from16 v17, v1

    .line 609
    .end local v1    # "defaultTitleRes":I
    .local v17, "defaultTitleRes":I
    :goto_7
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 610
    .local v1, "pa":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 611
    .local v3, "initialIntents":[Landroid/content/Intent;
    const/4 v5, 0x2

    if-eqz v1, :cond_10

    .line 612
    array-length v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 613
    .local v4, "count":I
    new-array v3, v4, [Landroid/content/Intent;

    .line 614
    const/16 v18, 0x0

    move/from16 v5, v18

    .restart local v5    # "i":I
    :goto_8
    if-ge v5, v4, :cond_f

    .line 615
    aget-object v12, v1, v5

    instance-of v12, v12, Landroid/content/Intent;

    if-nez v12, :cond_e

    .line 616
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Initial intent #"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " not an Intent: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v15, v1, v5

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 618
    invoke-super {v9, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 619
    return-void

    .line 621
    :cond_e
    aget-object v12, v1, v5

    check-cast v12, Landroid/content/Intent;

    .line 622
    .local v12, "in":Landroid/content/Intent;
    invoke-direct {v9, v12}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 623
    aput-object v12, v3, v5

    .line 614
    .end local v12    # "in":Landroid/content/Intent;
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x0

    goto :goto_8

    :cond_f
    move-object v12, v3

    goto :goto_9

    .line 611
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_10
    move-object v12, v3

    .line 627
    .end local v3    # "initialIntents":[Landroid/content/Intent;
    .local v12, "initialIntents":[Landroid/content/Intent;
    :goto_9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.extra.REFERRER"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    .line 629
    const-string v2, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 631
    const-string v2, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 633
    invoke-virtual {v9, v15}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 635
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 637
    const-string v2, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 642
    .local v20, "nearbySharingComponent":Landroid/content/ComponentName;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v20, :cond_11

    move v2, v15

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    move/from16 v21, v2

    .line 645
    .local v21, "shouldFilterNearby":Z
    if-eqz v1, :cond_16

    .line 646
    array-length v2, v1

    if-eqz v21, :cond_12

    move v3, v15

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v2, v3

    new-array v2, v2, [Landroid/content/ComponentName;

    .line 647
    .local v2, "names":[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_14

    .line 648
    aget-object v4, v1, v3

    instance-of v4, v4, Landroid/content/ComponentName;

    if-nez v4, :cond_13

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered component #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a ComponentName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, 0x0

    .line 651
    goto :goto_d

    .line 653
    :cond_13
    aget-object v4, v1, v3

    check-cast v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 655
    .end local v3    # "i":I
    :cond_14
    :goto_d
    if-eqz v21, :cond_15

    .line 656
    array-length v3, v2

    sub-int/2addr v3, v15

    aput-object v20, v2, v3

    .line 659
    :cond_15
    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .end local v2    # "names":[Landroid/content/ComponentName;
    goto :goto_e

    .line 660
    :cond_16
    if-eqz v21, :cond_17

    .line 661
    new-array v2, v15, [Landroid/content/ComponentName;

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .line 662
    const/4 v3, 0x0

    aput-object v20, v2, v3

    goto :goto_f

    .line 660
    :cond_17
    :goto_e
    nop

    .line 665
    :goto_f
    const-string v2, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 666
    .end local v1    # "pa":[Landroid/os/Parcelable;
    .local v5, "pa":[Landroid/os/Parcelable;
    if-eqz v5, :cond_1a

    .line 667
    array-length v1, v5

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 668
    .local v1, "count":I
    new-array v2, v1, [Landroid/service/chooser/ChooserTarget;

    .line 669
    .local v2, "targets":[Landroid/service/chooser/ChooserTarget;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_10
    if-ge v3, v1, :cond_19

    .line 670
    aget-object v4, v5, v3

    instance-of v4, v4, Landroid/service/chooser/ChooserTarget;

    if-nez v4, :cond_18

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Chooser target #"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " not a ChooserTarget: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v15, v5, v3

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v2, 0x0

    .line 673
    goto :goto_11

    .line 675
    :cond_18
    aget-object v4, v5, v3

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    aput-object v4, v2, v3

    .line 669
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v15, 0x1

    goto :goto_10

    .line 677
    .end local v3    # "i":I
    :cond_19
    :goto_11
    iput-object v2, v9, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    .line 680
    .end local v1    # "count":I
    .end local v2    # "targets":[Landroid/service/chooser/ChooserTarget;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v9, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 681
    nop

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v9, v1}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v1

    iput-boolean v1, v9, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    .line 683
    const-string v1, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    const/4 v15, 0x0

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/internal/app/ChooserActivity;->setRetainInOnStop(Z)V

    .line 684
    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    const/16 v19, 0x2

    move-object/from16 v4, v16

    move/from16 v23, v19

    move-object/from16 v19, v5

    .end local v5    # "pa":[Landroid/os/Parcelable;
    .local v19, "pa":[Landroid/os/Parcelable;
    move/from16 v5, v17

    move-object/from16 v24, v6

    .end local v6    # "target":Landroid/content/Intent;
    .local v24, "target":Landroid/content/Intent;
    move-object v6, v12

    move-object/from16 v25, v7

    .end local v7    # "targetsParcelable":[Landroid/os/Parcelable;
    .local v25, "targetsParcelable":[Landroid/os/Parcelable;
    move-object/from16 v7, v18

    move-object v15, v8

    move/from16 v8, v22

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityExt;->getFileSharedDisabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 690
    const-string v1, "ResolverActivity stop self due to customize file shared disabled!"

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 695
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    .line 696
    sub-long/2addr v1, v10

    .line 698
    .local v1, "systemCost":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0xd6

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v5

    if-eqz v5, :cond_1c

    move/from16 v5, v23

    goto :goto_12

    .line 700
    :cond_1c
    const/4 v5, 0x1

    .line 699
    :goto_12
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x671

    .line 701
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x675

    .line 702
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 698
    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 704
    iget-object v3, v9, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v3, :cond_1e

    .line 705
    iget-object v3, v9, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v4, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v9}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 708
    move-object/from16 v3, v24

    .end local v24    # "target":Landroid/content/Intent;
    .local v3, "target":Landroid/content/Intent;
    invoke-virtual {v9, v3}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 709
    iget-object v4, v9, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v5, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v9}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 712
    :cond_1d
    iget-object v4, v9, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v5, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v5, v9}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V

    goto :goto_13

    .line 704
    .end local v3    # "target":Landroid/content/Intent;
    .restart local v24    # "target":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v3, v24

    .line 731
    .end local v24    # "target":Landroid/content/Intent;
    .restart local v3    # "target":Landroid/content/Intent;
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System Time Cost is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v26

    const/16 v27, 0x103

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v28

    .line 737
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v29

    .line 738
    iget-object v4, v9, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-nez v4, :cond_1f

    const/16 v30, 0x0

    goto :goto_14

    :cond_1f
    array-length v4, v4

    move/from16 v30, v4

    .line 739
    :goto_14
    if-nez v12, :cond_20

    const/16 v31, 0x0

    goto :goto_15

    :cond_20
    array-length v4, v12

    move/from16 v31, v4

    .line 740
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v32

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v9, v4, v5}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v33

    .line 742
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v34

    .line 734
    invoke-interface/range {v26 .. v34}, Lcom/android/internal/app/ChooserActivityLogger;->logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V

    .line 744
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v9, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    .line 746
    new-instance v4, Lcom/android/internal/app/ChooserActivity$2;

    invoke-direct {v4, v9}, Lcom/android/internal/app/ChooserActivity$2;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v9, v4}, Lcom/android/internal/app/ChooserActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 757
    iget-object v4, v9, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->postponeTransition()V

    .line 758
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 2

    .line 1721
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 1723
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_1

    .line 1728
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 1731
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->-$$Nest$mremoveAllMessages(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V

    .line 1733
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mcancelLoads(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    .line 1736
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1737
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    .line 1739
    :cond_3
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 1
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2818
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 2819
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2820
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 3186
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3187
    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    if-nez v2, :cond_1

    .line 3188
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 3189
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    goto :goto_0

    .line 3191
    :cond_0
    if-nez p1, :cond_1

    .line 3192
    iget v3, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    if-ne v3, v1, :cond_1

    .line 3193
    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 3194
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3197
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "rebuildComplete"    # Z

    .line 2849
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2850
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V

    .line 2851
    return-void

    .line 2854
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->setupScrollListener()V

    .line 2855
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->maybeSetupGlobalLayoutListener()V

    .line 2857
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter;

    .line 2858
    .local v0, "chooserListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2859
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2860
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2861
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2862
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2863
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V

    .line 2866
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    .line 2867
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2870
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V

    goto :goto_1

    .line 2868
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 2873
    :goto_1
    if-eqz p2, :cond_4

    .line 2874
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    .line 2875
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->maybeQueryAdditionalPostProcessingTargets(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 2876
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 2878
    :cond_4
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .locals 2

    .line 3149
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3150
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    .line 3151
    .local v0, "currentRootAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->updateDirectShareExpansion()V

    .line 3155
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3156
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_0

    .line 3157
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 3159
    :cond_0
    return-void
.end method

.method blacklist onRefinementCanceled()V
    .locals 1

    .line 2465
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 2466
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 2469
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 2470
    return-void
.end method

.method blacklist onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "selectedTarget"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .line 2444
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 2445
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 2448
    :cond_0
    const-string v0, "ChooserActivity"

    if-nez p1, :cond_1

    .line 2449
    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2450
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2454
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 2455
    .local v1, "clonedTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-super {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2456
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2457
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 2458
    return-void

    .line 2461
    .end local v1    # "clonedTarget":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 2462
    return-void
.end method

.method protected whitelist onResume()V
    .locals 2

    .line 1039
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onResume()V

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .locals 9
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .line 1866
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_3

    .line 1867
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1868
    .local v0, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v7

    .line 1869
    .local v7, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1870
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1871
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1872
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    .line 1873
    .local v1, "alts":[Landroid/content/Intent;
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "N":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1874
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    aput-object v5, v1, v4

    .line 1873
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1876
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_0
    const-string v2, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1878
    .end local v1    # "alts":[Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v1, :cond_2

    .line 1879
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1881
    :cond_2
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 1882
    const-string v2, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1885
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    return v8

    .line 1887
    :catch_0
    move-exception v1

    .line 1888
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v2, "ChooserActivity"

    const-string v3, "Refinement IntentSender failed to send"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1892
    .end local v0    # "fillIn":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v7    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1893
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .locals 1
    .param p1, "rebuildCompleted"    # Z

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->postRebuildList(Z)Z

    move-result v0

    return v0

    .line 912
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateStickyContentPreview()V

    .line 913
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 915
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->logActionShareWithPreview()V

    .line 918
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "skipAppPredictionService"    # Z

    .line 2093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    .line 2094
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2095
    .local v0, "userHandle":Landroid/os/UserHandle;
    if-nez p2, :cond_0

    .line 2096
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v1

    .line 2097
    .local v1, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-eqz v1, :cond_0

    .line 2098
    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 2099
    return-void

    .line 2103
    .end local v1    # "appPredictor":Landroid/app/prediction/AppPredictor;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2104
    .local v1, "filter":Landroid/content/IntentFilter;
    if-nez v1, :cond_1

    .line 2105
    return-void

    .line 2108
    :cond_1
    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2115
    return-void
.end method

.method public blacklist queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1492
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist resetButtonBar()V
    .locals 0

    .line 3140
    return-void
.end method

.method public blacklist sendListViewUpdateMessage(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2839
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2840
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2841
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2842
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mListViewUpdateDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2843
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .locals 1

    .line 2042
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .locals 3
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1806
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    const/4 v0, 0x0

    return v0

    .line 1810
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .locals 1

    .line 1798
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startSelected(IZZ)V
    .locals 17
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .line 1900
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1901
    invoke-super/range {p0 .. p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1902
    return-void

    .line 1905
    :cond_0
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1906
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 1907
    .local v2, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    nop

    .line 1908
    move/from16 v3, p3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    .line 1909
    .local v4, "targetInfo":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;

    if-eqz v5, :cond_1

    .line 1910
    return-void

    .line 1913
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v5, v7

    .line 1915
    .local v5, "selectionCost":J
    instance-of v7, v4, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v7, :cond_2

    .line 1916
    move-object v7, v4

    check-cast v7, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 1917
    .local v7, "mti":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1918
    new-instance v8, Lcom/android/internal/app/ChooserStackedAppDialogFragment;

    invoke-direct {v8}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;-><init>()V

    .line 1919
    .local v8, "f":Lcom/android/internal/app/ChooserStackedAppDialogFragment;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1920
    .local v9, "b":Landroid/os/Bundle;
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1921
    invoke-virtual {v10}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 1920
    const-string/jumbo v11, "user_handle"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1922
    const-string/jumbo v10, "multi_dri_key"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1924
    const-string/jumbo v10, "which_key"

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1925
    invoke-virtual {v8, v9}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string/jumbo v11, "targetDetailsFragment"

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1928
    return-void

    .line 1932
    .end local v7    # "mti":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    .end local v8    # "f":Lcom/android/internal/app/ChooserStackedAppDialogFragment;
    .end local v9    # "b":Landroid/os/Bundle;
    :cond_2
    invoke-super/range {p0 .. p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1934
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_6

    .line 1937
    const/4 v7, 0x0

    .line 1938
    .local v7, "cat":I
    move/from16 v8, p1

    .line 1939
    .local v8, "value":I
    const/4 v9, -0x1

    .line 1940
    .local v9, "directTargetAlsoRanked":I
    const/4 v10, 0x0

    .line 1941
    .local v10, "numCallerProvided":I
    const/4 v11, 0x0

    .line 1942
    .local v11, "directTargetHashed":Landroid/util/HashedStringCache$HashResult;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v12

    const-string v13, "ChooserActivity"

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 1982
    :pswitch_0
    const/4 v8, -0x1

    .line 1983
    const/16 v7, 0xd9

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v12

    const/4 v14, 0x3

    .line 1986
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1984
    invoke-interface {v12, v14, v15, v8, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 1944
    :pswitch_1
    const/16 v7, 0xd8

    .line 1947
    invoke-virtual {v2, v8}, Lcom/android/internal/app/ChooserListAdapter;->getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 1948
    .local v1, "target":Landroid/service/chooser/ChooserTarget;
    invoke-static {}, Landroid/util/HashedStringCache;->getInstance()Landroid/util/HashedStringCache;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1951
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1952
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    .line 1948
    invoke-virtual {v12, v0, v13, v14, v15}, Landroid/util/HashedStringCache;->hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;

    move-result-object v11

    .line 1954
    move-object v12, v4

    check-cast v12, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1955
    .local v12, "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-direct {v0, v12}, Lcom/android/internal/app/ChooserActivity;->getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I

    move-result v9

    .line 1957
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v14, :cond_3

    .line 1958
    array-length v10, v14

    .line 1960
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v14

    .line 1962
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1964
    move-object/from16 v16, v1

    .end local v1    # "target":Landroid/service/chooser/ChooserTarget;
    .local v16, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v12}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isPinned()Z

    move-result v1

    .line 1960
    const/4 v3, 0x1

    invoke-interface {v14, v3, v15, v8, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1966
    goto :goto_0

    .line 1969
    .end local v12    # "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v16    # "target":Landroid/service/chooser/ChooserTarget;
    :pswitch_2
    const/16 v7, 0xd7

    .line 1970
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v8, v1

    .line 1971
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v10

    .line 1972
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    const/4 v3, 0x2

    .line 1974
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1976
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v14

    .line 1972
    invoke-interface {v1, v3, v12, v8, v14}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1978
    nop

    .line 1993
    :goto_0
    if-eqz v7, :cond_5

    .line 1994
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1995
    .local v1, "targetLogMaker":Landroid/metrics/LogMaker;
    if-eqz v11, :cond_4

    .line 1996
    const/16 v3, 0x6a8

    iget-object v12, v11, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    invoke-virtual {v1, v3, v12}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1998
    const/16 v3, 0x6a9

    iget v12, v11, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    .line 2000
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1998
    invoke-virtual {v1, v3, v12}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2001
    const/16 v3, 0x43f

    .line 2002
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2001
    invoke-virtual {v1, v3, v12}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2004
    :cond_4
    const/16 v3, 0x43e

    .line 2005
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2004
    invoke-virtual {v1, v3, v12}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2009
    .end local v1    # "targetLogMaker":Landroid/metrics/LogMaker;
    :cond_5
    iget-boolean v1, v0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    if-eqz v1, :cond_6

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Selection Time Cost is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position of selected app/service/caller is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2013
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2012
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    long-to-int v1, v5

    const/4 v3, 0x0

    const-string/jumbo v12, "user_selection_cost_for_smart_sharing"

    invoke-static {v3, v12, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2017
    const-string v1, "app_position_for_smart_sharing"

    invoke-static {v3, v1, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2020
    .end local v7    # "cat":I
    .end local v8    # "value":I
    .end local v9    # "directTargetAlsoRanked":I
    .end local v10    # "numCallerProvided":I
    .end local v11    # "directTargetHashed":Landroid/util/HashedStringCache$HashResult;
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method blacklist updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 2301
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 2302
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    .line 2304
    :cond_0
    if-eqz p1, :cond_3

    .line 2305
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2306
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2307
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2308
    .local v1, "targetIntent":Landroid/content/Intent;
    const-string v2, "ChooserActivity"

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 2309
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2310
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v3

    .line 2311
    .local v3, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    if-eqz v3, :cond_1

    .line 2312
    invoke-direct {p0, p1, v3}, Lcom/android/internal/app/ChooserActivity;->sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 2313
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserListAdapter;->updateModel(Landroid/content/ComponentName;)V

    .line 2314
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2315
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2314
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ChooserListAdapter;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResolveInfo Package is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action to be updated is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    .end local v3    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    goto :goto_0

    .line 2322
    :cond_2
    const-string v3, "Can not log Chooser Counts of null ResovleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "targetIntent":Landroid/content/Intent;
    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    .line 2326
    return-void
.end method
