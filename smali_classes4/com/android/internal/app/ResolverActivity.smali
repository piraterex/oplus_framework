.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static blacklist ENABLE_TABBED_VIEW:Z = false

.field static final blacklist EXTRA_CALLING_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

.field private static final blacklist EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final blacklist EXTRA_IS_AUDIO_CAPTURE_DEVICE:Ljava/lang/String; = "is_audio_capture_device"

.field static final blacklist EXTRA_SELECTED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

.field private static final blacklist EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final blacklist LAST_SHOWN_TAB_KEY:Ljava/lang/String; = "last_shown_tab_key"

.field protected static final blacklist METRICS_CATEGORY_CHOOSER:Ljava/lang/String; = "intent_chooser"

.field protected static final blacklist METRICS_CATEGORY_RESOLVER:Ljava/lang/String; = "intent_resolver"

.field private static final blacklist OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field static final blacklist PROFILE_PERSONAL:I = 0x0

.field static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist TAB_TAG_PERSONAL:Ljava/lang/String; = "personal"

.field private static final blacklist TAB_TAG_WORK:Ljava/lang/String; = "work"

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private blacklist mAlwaysButton:Landroid/widget/Button;

.field protected blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mDefaultTitleResId:I

.field private blacklist mFooterSpacer:Landroid/widget/Space;

.field private blacklist mHeaderCreatorUser:Landroid/os/UserHandle;

.field protected final blacklist mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsIntentPicker:Z

.field private blacklist mLastSelected:I

.field protected final blacklist mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field protected blacklist mLaunchedFromUid:I

.field private blacklist mLayoutId:I

.field protected blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field private blacklist mOnceButton:Landroid/widget/Button;

.field private blacklist mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected greylist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mProfileSwitchMessage:Ljava/lang/String;

.field protected blacklist mProfileView:Landroid/view/View;

.field private blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mRegistered:Z

.field private blacklist mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

.field protected blacklist mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private blacklist mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

.field private blacklist mResolvingHome:Z

.field private blacklist mRetainInOnStop:Z

.field private blacklist mSafeForwardingMode:Z

.field protected blacklist mSupportsAlwaysUseOption:Z

.field protected blacklist mSystemWindowInsets:Landroid/graphics/Insets;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mWorkProfileHasBeenEnabled:Z

.field private blacklist mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastSelected(Lcom/android/internal/app/ResolverActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/IResolverActivityExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastSelected(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPersonalTabLabel(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWorkTabLabel(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetCheckedItem(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetCheckedItem()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetAlwaysButtonEnabled(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 165
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 182
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 226
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 2471
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    .line 2473
    const-class v0, Lcom/android/internal/app/IResolverActivityExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IResolverActivityExt;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    .line 127
    return-void
.end method

.method protected constructor blacklist <init>(Z)V
    .locals 2
    .param p1, "isIntentPicker"    # Z

    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 165
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 182
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 226
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 2471
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    .line 2473
    const-class v0, Lcom/android/internal/app/IResolverActivityExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IResolverActivityExt;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

    .line 130
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    .line 131
    return-void
.end method

.method private blacklist canAppInteractCrossProfiles(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1841
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 1846
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-nez v2, :cond_0

    .line 1847
    return v0

    .line 1850
    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1852
    .local v2, "packageUid":I
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1854
    return v4

    .line 1856
    :cond_1
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 1858
    return v4

    .line 1860
    :cond_2
    const/4 v3, -0x1

    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {p0, v5, v3, v2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1862
    return v4

    .line 1864
    :cond_3
    return v0

    .line 1842
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageUid":I
    :catch_0
    move-exception v1

    .line 1843
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist on current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return v0
.end method

.method private blacklist configureContentView()Z
    .locals 6

    .line 1532
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1536
    const-string v0, "configureContentView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1540
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1541
    .local v0, "rebuildCompleted":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1542
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildInactiveTab(Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1543
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    .line 1544
    .local v3, "rebuildInactiveCompleted":Z
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    move v0, v1

    .line 1547
    .end local v3    # "rebuildInactiveCompleted":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1548
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->configureMiniResolverContent()V

    .line 1549
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1550
    return v2

    .line 1553
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1554
    const v1, 0x1090100

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_5

    .line 1556
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 1561
    :goto_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1563
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1564
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const v2, 0x1020446

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1570
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->postRebuildList(Z)Z

    move-result v1

    .line 1571
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1573
    if-nez v1, :cond_9

    .line 1574
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v2}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/app/IResolverActivityExt;->hookconfigureContentView(ZZI)V

    .line 1577
    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1578
    return v1

    .line 1533
    .end local v0    # "rebuildCompleted":Z
    .end local v1    # "result":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mMultiProfilePagerAdapter.getCurrentListAdapter() cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist configureMiniResolverContent()V
    .locals 12

    .line 1588
    const v0, 0x10900a9

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 1589
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1591
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1592
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1593
    .local v0, "sameProfileResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1595
    .local v2, "inWorkProfile":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1596
    .local v4, "inactiveAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v5, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1599
    .local v5, "otherProfileResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const v6, 0x1020006

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1600
    .local v6, "icon":Landroid/widget/ImageView;
    new-instance v7, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v8, v6}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {v7, v4, v5, v8}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    .line 1602
    .local v7, "iconTask":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    new-array v8, v1, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1604
    const v8, 0x1020403

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1605
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1606
    if-eqz v2, :cond_1

    const v10, 0x10405c4

    goto :goto_1

    .line 1607
    :cond_1
    const v10, 0x10405c5

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 1608
    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v3, v1

    .line 1605
    invoke-virtual {v9, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    const v1, 0x1020575

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1610
    if-eqz v2, :cond_2

    const v8, 0x10405c7

    goto :goto_2

    .line 1611
    :cond_2
    const v8, 0x10405c6

    .line 1609
    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(I)V

    .line 1613
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    const v1, 0x102022d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v5, v4}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1628
    return-void
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .locals 7
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 508
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 514
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 508
    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 515
    .local v0, "adapter":Lcom/android/internal/app/ResolverListAdapter;
    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 515
    return-object v1
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .locals 15
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 529
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v8, p0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v0

    .line 530
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 533
    .local v9, "intentUser":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    const/4 v0, 0x0

    move v10, v0

    goto :goto_1

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 537
    const/4 v0, 0x1

    move v10, v0

    goto :goto_1

    .line 540
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getSelectedProfileExtra()I

    move-result v1

    .line 541
    .local v1, "selectedProfileExtra":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 542
    move v0, v1

    move v10, v0

    goto :goto_1

    .line 548
    .end local v1    # "selectedProfileExtra":I
    :cond_3
    move v10, v0

    .end local v0    # "selectedProfile":I
    .local v10, "selectedProfile":I
    :goto_1
    iget-object v2, v8, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 551
    const/4 v7, 0x0

    if-nez v10, :cond_4

    move-object/from16 v3, p1

    goto :goto_2

    :cond_4
    move-object v3, v7

    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_5

    .line 553
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_5

    move v5, v12

    goto :goto_3

    :cond_5
    move v5, v11

    .line 555
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 548
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v13

    .line 556
    .local v13, "personalAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    .line 557
    .local v14, "workProfileUserHandle":Landroid/os/UserHandle;
    iget-object v2, v8, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 560
    if-ne v10, v12, :cond_6

    move-object/from16 v3, p1

    goto :goto_4

    :cond_6
    move-object v3, v7

    :goto_4
    if-eqz p3, :cond_7

    .line 562
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 563
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_7

    move v5, v12

    goto :goto_5

    :cond_7
    move v5, v11

    .line 557
    :goto_5
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v11

    .line 565
    .local v11, "workAdapter":Lcom/android/internal/app/ResolverListAdapter;
    new-instance v12, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, v12

    move-object v2, v13

    move-object v3, v11

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 565
    return-object v12
.end method

.method private blacklist createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 2244
    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v0
.end method

.method private static blacklist getAttrColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 1997
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1998
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1999
    .local v1, "colorAccent":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2000
    return v1
.end method

.method private blacklist getForwardToPersonalMsg()Ljava/lang/String;
    .locals 3

    .line 813
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMsg()Ljava/lang/String;
    .locals 3

    .line 819
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLabelRes(Ljava/lang/String;)I
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 241
    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private blacklist getLatencyTracker()Lcom/android/internal/util/LatencyTracker;
    .locals 1

    .line 229
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabAccessibilityLabel()Ljava/lang/String;
    .locals 3

    .line 1985
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabLabel()Ljava/lang/String;
    .locals 3

    .line 1945
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "launcherName"    # Ljava/lang/String;

    .line 1135
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Core.RESOLVER_WORK_PROFILE_NOT_SUPPORTED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabAccessibilityLabel()Ljava/lang/String;
    .locals 3

    .line 1991
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabLabel()Ljava/lang/String;
    .locals 3

    .line 1950
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasManagedProfile()Z
    .locals 6

    .line 1008
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1009
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1010
    return v1

    .line 1014
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1015
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1016
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 1017
    const/4 v1, 0x1

    return v1

    .line 1019
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 1022
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    nop

    .line 1023
    return v1

    .line 1020
    :catch_0
    move-exception v2

    .line 1021
    .local v2, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method private blacklist hasWorkProfile()Z
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist inactiveListAdapterHasItems()Z
    .locals 2

    .line 2237
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2238
    return v1

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist isAutolaunching()Z
    .locals 1

    .line 1868
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isLaunchingTargetInOtherProfile()Z
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1387
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1386
    :goto_0
    return v0
.end method

.method private blacklist isPermissionGranted(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1714
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method static final blacklist isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .line 2402
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2403
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isWorkProfileEnabled()Z
    .locals 3

    .line 912
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 913
    .local v0, "workUserHandle":Landroid/os/UserHandle;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 915
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 916
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 915
    :goto_0
    return v2
.end method

.method static synthetic blacklist lambda$setupProfileTabs$6(Landroid/widget/TabHost;)V
    .locals 2
    .param p0, "tabHost"    # Landroid/widget/TabHost;

    .line 1937
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1938
    .local v0, "workTab":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1939
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1940
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1941
    return-void
.end method

.method private blacklist makeMyIntent()Landroid/content/Intent;
    .locals 3

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    return-object v0
.end method

.method private blacklist maybeAutolaunchActivity()Z
    .locals 4

    .line 1724
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->addExtraOneAppFinish()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1725
    return v1

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 1729
    .local v0, "numberOfProfiles":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfSingleTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1730
    return v2

    .line 1731
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1732
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1733
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1734
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfNoAppsOnInactiveTab()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1735
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfCrossProfileSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1736
    :cond_2
    return v2

    .line 1738
    :cond_3
    return v1
.end method

.method private blacklist maybeAutolaunchIfCrossProfileSupported()Z
    .locals 11

    .line 1787
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1788
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v1

    .line 1789
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1790
    return v3

    .line 1792
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1793
    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1794
    .local v4, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 1795
    return v3

    .line 1797
    :cond_1
    nop

    .line 1798
    invoke-virtual {v0, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    .line 1799
    .local v5, "activeProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {v4, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v6

    .line 1800
    .local v6, "inactiveProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 1801
    invoke-interface {v6}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 1800
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1802
    return v3

    .line 1804
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1805
    return v3

    .line 1807
    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1808
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->canAppInteractCrossProfiles(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1809
    return v3

    .line 1812
    :cond_4
    const/16 v8, 0xa1

    .line 1813
    invoke-static {v8}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    .line 1814
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    .line 1815
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1814
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    .line 1817
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1818
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1819
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1820
    return v2
.end method

.method private blacklist maybeAutolaunchIfNoAppsOnInactiveTab()Z
    .locals 5

    .line 1763
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1764
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1765
    return v2

    .line 1767
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1768
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1769
    .local v3, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1770
    return v2

    .line 1772
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1773
    invoke-virtual {v4, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    .line 1774
    .local v2, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1775
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1776
    return v1
.end method

.method private blacklist maybeAutolaunchIfSingleTarget()Z
    .locals 5

    .line 1742
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1743
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1744
    return v2

    .line 1747
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1748
    return v2

    .line 1752
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1753
    invoke-virtual {v3, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    .line 1754
    .local v3, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1755
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1756
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1757
    return v1

    .line 1759
    :cond_2
    return v2
.end method

.method private blacklist maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2051
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2052
    return-void

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    .line 2056
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2057
    return-void

    .line 2059
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const v1, 0x1020016

    if-nez v0, :cond_2

    .line 2060
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2061
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2062
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 2063
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2067
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 2068
    goto :goto_0

    .line 2069
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    nop

    .line 2071
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2072
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2073
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_4

    .line 2074
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2079
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_5
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2080
    .local v1, "iconView":Landroid/widget/ImageView;
    if-eqz v1, :cond_6

    .line 2081
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V

    .line 2083
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    .line 2084
    return-void
.end method

.method private blacklist maybeHideDivider()V
    .locals 2

    .line 1957
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_0

    .line 1958
    return-void

    .line 1960
    :cond_0
    const v0, 0x10202a8

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1961
    .local v0, "divider":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1962
    return-void

    .line 1964
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    return-void
.end method

.method private blacklist maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 1468
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1471
    :cond_0
    const/16 v0, 0x9b

    .line 1472
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1474
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1475
    instance-of v3, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v3, :cond_1

    const-string v3, "direct_share"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "other_target"

    :goto_0
    aput-object v3, v1, v2

    .line 1474
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1477
    return-void

    .line 1469
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1382
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 1383
    return-void
.end method

.method private blacklist registerWorkProfileStateReceiver()V
    .locals 7

    .line 920
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 921
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 925
    return-void
.end method

.method private blacklist resetAlwaysOrOnceButtonBar()V
    .locals 5

    .line 2149
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2150
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2152
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 2153
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v2

    .line 2154
    .local v2, "filteredPosition":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 2155
    invoke-direct {p0, v4, v2, v0}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2156
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2158
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 2159
    return-void

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2164
    .local v0, "currentAdapterView":Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 2165
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 2166
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2167
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2169
    :cond_1
    return-void
.end method

.method private blacklist resetCheckedItem()V
    .locals 3

    .line 1974
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_0

    .line 1975
    return-void

    .line 1977
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 1978
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1979
    .local v0, "inactiveListView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1980
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1982
    :cond_1
    return-void
.end method

.method private blacklist safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1424
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_1

    .line 1429
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1431
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1435
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1436
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1438
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v0, :cond_5

    .line 1443
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1, p0, v0, p2}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1445
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1446
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1448
    :cond_4
    return-void

    .line 1455
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1458
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :cond_6
    goto :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch as uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1462
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while running in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1463
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1461
    const-string v2, "ResolverActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1465
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private blacklist setAlwaysButtonEnabled(ZIZ)V
    .locals 7
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .line 1038
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1041
    return-void

    .line 1043
    :cond_0
    const/4 v0, 0x0

    .line 1044
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 1045
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_3

    .line 1046
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1047
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1048
    const-string v3, "ResolverActivity"

    if-nez v2, :cond_1

    .line 1049
    const-string v1, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void

    .line 1051
    :cond_1
    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    .line 1052
    const-string v1, "Attempted to set selection to resolve info for another user"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void

    .line 1055
    :cond_2
    const/4 v0, 0x1

    .line 1058
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040111

    .line 1059
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1058
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    :cond_3
    if-eqz v2, :cond_5

    .line 1063
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1065
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1066
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v1

    .line 1070
    .local v4, "hasRecordPermission":Z
    :goto_0
    if-nez v4, :cond_5

    .line 1072
    nop

    .line 1073
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "is_audio_capture_device"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1075
    .local v1, "hasAudioCapture":Z
    xor-int/lit8 v5, v1, 0x1

    move v0, v5

    .line 1078
    .end local v1    # "hasAudioCapture":Z
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "hasRecordPermission":Z
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1079
    return-void
.end method

.method private blacklist setButtonBarIgnoreOffset(Z)V
    .locals 2
    .param p1, "ignoreOffset"    # Z

    .line 2138
    const v0, 0x102022b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2139
    .local v0, "buttonBarContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2140
    nop

    .line 2141
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 2142
    .local v1, "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iput-boolean p1, v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    .line 2143
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2145
    .end local v1    # "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private blacklist setProfileSwitchMessage(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .line 797
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    .line 798
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 799
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 800
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 801
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_0

    .line 802
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 803
    .local v2, "originIsManaged":Z
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    .line 804
    .local v3, "targetIsManaged":Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToPersonalMsg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    goto :goto_1

    .line 806
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 807
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToWorkMsg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    .line 810
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "originIsManaged":Z
    .end local v3    # "targetIsManaged":Z
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listener"    # Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    .line 2037
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2038
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2040
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 2041
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2043
    :cond_0
    return-void
.end method

.method private blacklist setupProfileTabs()V
    .locals 9

    .line 1872
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeHideDivider()V

    .line 1873
    const v0, 0x1020447

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 1874
    .local v0, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 1875
    const v1, 0x1020446

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    .line 1876
    .local v2, "viewPager":Lcom/android/internal/widget/ViewPager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setSaveEnabled(Z)V

    .line 1878
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1879
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 1878
    const v6, 0x1090101

    invoke-virtual {v4, v6, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1880
    .local v4, "personalButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1883
    const-string/jumbo v5, "personal"

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 1884
    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 1885
    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 1886
    .local v5, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1889
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    .line 1888
    invoke-virtual {v7, v6, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1890
    .local v6, "workButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1893
    const-string/jumbo v7, "work"

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 1894
    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 1895
    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 1896
    .end local v5    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1898
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 1899
    .local v5, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v5, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1900
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 1902
    new-instance v7, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1919
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setVisibility(I)V

    .line 1920
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1921
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V

    .line 1935
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnSwitchOnWorkSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;)V

    .line 1942
    return-void
.end method

.method private blacklist setupViewVisibilities()V
    .locals 2

    .line 2012
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2013
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2014
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2016
    :cond_0
    return-void
.end method

.method private blacklist shouldUseMiniResolver()Z
    .locals 8

    .line 1637
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1638
    return v1

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1641
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1645
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 1646
    .local v0, "sameProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1647
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 1649
    .local v2, "otherProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "ResolverActivity"

    if-eqz v3, :cond_2

    .line 1650
    const-string v3, "No targets in the current profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return v1

    .line 1654
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    .line 1655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " resolvers in the other profile"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return v1

    .line 1659
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_4

    .line 1660
    const-string v3, "Other profile is a web browser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return v1

    .line 1664
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1665
    .local v6, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v7, :cond_5

    .line 1666
    const-string v3, "Non-browser found in this profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    return v1

    .line 1669
    .end local v6    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_5
    goto :goto_0

    .line 1671
    :cond_6
    return v5

    .line 1642
    .end local v0    # "sameProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v2    # "otherProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_7
    :goto_1
    return v1
.end method

.method private blacklist supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1028
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1030
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1031
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private blacklist updateActiveTabStyle(Landroid/widget/TabHost;)V
    .locals 4
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .line 2004
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2005
    .local v0, "currentTab":I
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2006
    .local v1, "selected":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2007
    .local v2, "unselected":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2008
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2009
    return-void
.end method

.method private blacklist updateIntentPickerPaddings()V
    .locals 7

    .line 709
    const v0, 0x1020538

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 710
    .local v0, "titleCont":Landroid/view/View;
    nop

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 712
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 713
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050267

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 710
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 715
    const v1, 0x102022a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 716
    .local v1, "buttonBar":Landroid/view/View;
    nop

    .line 717
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050256

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 719
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 716
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 721
    return-void
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2023
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 2024
    .local v0, "useHeader":Z
    if-eqz v0, :cond_1

    .line 2025
    const v1, 0x10204f2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2026
    .local v1, "stub":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2027
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900fc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2029
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2030
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2032
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2034
    .end local v1    # "stub":Landroid/widget/FrameLayout;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .locals 1

    .line 576
    const v0, 0x10303fd

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .locals 4
    .param p1, "height"    # I

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 661
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 666
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 667
    return-void
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1518
    new-instance v7, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 1521
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1522
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1518
    return-object v7
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 2
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

    .line 493
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 494
    .local v0, "resolverMultiProfilePagerAdapter":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    nop

    .line 496
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    .line 502
    :goto_0
    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .locals 1
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 311
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 14
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
            "Lcom/android/internal/app/ResolverListAdapter;"
        }
    .end annotation

    .line 1508
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1509
    .local v0, "startIntent":Landroid/content/Intent;
    nop

    .line 1510
    const-string/jumbo v1, "is_audio_capture_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1511
    .local v1, "isAudioCaptureDevice":Z
    new-instance v2, Lcom/android/internal/app/ResolverListAdapter;

    .line 1512
    move-object v12, p0

    move-object/from16 v13, p6

    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v9

    move-object v3, v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v10, p0

    move v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V

    .line 1511
    return-object v2
.end method

.method blacklist dismiss()V
    .locals 1

    .line 860
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 863
    :cond_0
    return-void
.end method

.method protected blacklist fetchWorkProfileUserProfile()Landroid/os/UserHandle;
    .locals 4

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 611
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 612
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 613
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 616
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method public whitelist finish()V
    .locals 1

    .line 2460
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2461
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->hookFinish()V

    .line 2462
    return-void
.end method

.method protected blacklist getCurrentProfile()I
    .locals 1

    .line 599
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public blacklist getLayoutResource()I
    .locals 1

    .line 773
    const v0, 0x10900fe

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    .line 2207
    const-string v0, "intent_resolver"

    return-object v0
.end method

.method protected blacklist getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 603
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .line 765
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 766
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 769
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1148
    return-object p2
.end method

.method public blacklist getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;
    .locals 1

    .line 2476
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    return-object v0
.end method

.method blacklist getSelectedProfileExtra()I
    .locals 4

    .line 586
    const/4 v0, -0x1

    .line 587
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 589
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE has invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Must be either ResolverActivity.PROFILE_PERSONAL or ResolverActivity.PROFILE_WORK."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected blacklist getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "defaultTitleRes"    # I

    .line 841
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_0

    .line 842
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    :goto_0
    nop

    .line 847
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 848
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 849
    .local v1, "named":Z
    :goto_1
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v4, :cond_2

    if-eqz p2, :cond_2

    .line 850
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 852
    :cond_2
    if-eqz v1, :cond_3

    .line 853
    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 854
    invoke-virtual {v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v3

    .line 853
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 855
    :cond_3
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 852
    :goto_2
    return-object v2
.end method

.method protected blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method synthetic blacklist lambda$configureMiniResolverContent$3$com-android-internal-app-ResolverActivity(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "sameProfileResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 1615
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1616
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1617
    return-void
.end method

.method synthetic blacklist lambda$configureMiniResolverContent$4$com-android-internal-app-ResolverActivity(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "otherProfileResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "inactiveAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "v"    # Landroid/view/View;

    .line 1620
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1621
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1622
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V

    .line 1624
    :cond_0
    iget-object v1, p2, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1625
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 1624
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1626
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1627
    return-void
.end method

.method synthetic blacklist lambda$getForwardToPersonalMsg$0$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 815
    const v0, 0x104041c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getForwardToWorkMsg$1$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 821
    const v0, 0x104041d

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getPersonalTabAccessibilityLabel$9$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 1987
    const v0, 0x1040824

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getPersonalTabLabel$7$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 1946
    const v0, 0x1040823

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkProfileNotSupportedMsg$2$com-android-internal-app-ResolverActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "launcherName"    # Ljava/lang/String;

    .line 1137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const v1, 0x1040113

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkTabAccessibilityLabel$10$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 1993
    const v0, 0x1040828

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkTabLabel$8$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 1951
    const v0, 0x1040827

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$setupProfileTabs$5$com-android-internal-app-ResolverActivity(Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .locals 4
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "viewPager"    # Lcom/android/internal/widget/ViewPager;
    .param p3, "tabId"    # Ljava/lang/String;

    .line 1903
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 1904
    const-string/jumbo v0, "personal"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1905
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1907
    :cond_0
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 1909
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    .line 1910
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->maybeLogProfileChange()V

    .line 1911
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onProfileTabSelected()V

    .line 1912
    const/16 v0, 0x9c

    .line 1913
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1914
    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1915
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1916
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1917
    return-void
.end method

.method protected blacklist maybeLogProfileChange()V
    .locals 0

    .line 2444
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1482
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 670
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 672
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 677
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const v0, 0x102022b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 679
    .local v0, "buttonContainer":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 679
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 684
    .end local v0    # "buttonContainer":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->applyFooterView(I)V

    .line 688
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 1082
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1083
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1084
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 1085
    .local v2, "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1086
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    :goto_0
    nop

    .line 1088
    .local v3, "which":I
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 1089
    .local v4, "hasIndexBeenFiltered":Z
    const v6, 0x1020229

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1090
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 693
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 695
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->updateIntentPickerPaddings()V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IResolverActivityExt;->hookonConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 706
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 351
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    .line 352
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 353
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 355
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 356
    const-string v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 361
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 363
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 364
    return-void
.end method

.method protected blacklist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 383
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->appliedThemeResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IResolverActivityExt;->hookonCreate(Landroid/os/Bundle;)V

    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessage(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    .line 398
    if-ltz v0, :cond_b

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 410
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 411
    iput p4, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    .line 413
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->fetchWorkProfileUserProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 423
    .local v0, "filterLastUsed":Z
    :goto_0
    invoke-virtual {p0, p5, p6, v0}, Lcom/android/internal/app/ResolverActivity;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 426
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-interface {v3, v4}, Lcom/android/internal/app/IResolverActivityExt;->setMultiProfilePagerAdapter(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V

    .line 428
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->configureContentView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 429
    return-void

    .line 432
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 433
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 432
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 434
    nop

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 434
    invoke-virtual {v3, p0, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 437
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 438
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 437
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 442
    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 446
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityExt;->initPreferenceAndPinList()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    const v1, 0x1020263

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 449
    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v1, :cond_7

    .line 450
    new-instance v3, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 458
    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 460
    .local v3, "hasTouchScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_6

    .line 461
    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 464
    :cond_6
    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setSystemUiVisibility(I)V

    .line 466
    new-instance v2, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 468
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 475
    .end local v1    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v3    # "hasTouchScreen":Z
    :cond_7
    const v1, 0x1020445

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 476
    if-eqz v1, :cond_8

    .line 477
    new-instance v2, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 481
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 482
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 483
    const/16 v2, 0x1c3

    goto :goto_1

    .line 484
    :cond_9
    const/16 v2, 0x1c5

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 486
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_a
    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-static {p0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 487
    return-void

    .line 400
    .end local v0    # "filterLastUsed":Z
    .end local v1    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 401
    return-void
.end method

.method protected greylist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 374
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 376
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    .line 965
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->hookonDestroy()V

    .line 977
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2212
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 2213
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2214
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    return-void

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    .line 2222
    .local v0, "listRebuilt":Z
    if-eqz v0, :cond_1

    .line 2223
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2224
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2225
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 2226
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->inactiveListAdapterHasItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2228
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2231
    .end local v0    # "listRebuilt":Z
    .end local v1    # "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    :cond_1
    goto :goto_0

    .line 2232
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2234
    :goto_0
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1954
    return-void
.end method

.method protected blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "rebuildCompleted"    # Z

    .line 1181
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->hookonListRebuilt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1184
    .local v0, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V

    .line 1190
    .end local v0    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_2

    .line 1191
    const v0, 0x1020263

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 1192
    .local v0, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1194
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1195
    const v2, 0x1050261

    goto :goto_0

    .line 1196
    :cond_1
    const v2, 0x1050262

    .line 1194
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1193
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    .line 1199
    .end local v0    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_2
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2465
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2466
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IResolverActivityExt;->hookonMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2467
    return-void
.end method

.method protected whitelist onPause()V
    .locals 1

    .line 2455
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2456
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->hookonPause()V

    .line 2457
    return-void
.end method

.method public final blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZ)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "doPostProcessing"    # Z
    .param p3, "rebuildCompleted"    # Z

    .line 1154
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isAutolaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    return-void

    .line 1157
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 1159
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setUseLayoutWithDefault(Z)V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_0

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showListView(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1168
    :goto_0
    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1169
    return-void

    .line 1171
    :cond_3
    if-eqz p2, :cond_4

    .line 1172
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1173
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 1174
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/ResolverActivity;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V

    .line 1176
    :cond_4
    return-void
.end method

.method protected blacklist onProfileClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 629
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 630
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 631
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v0, :cond_0

    .line 632
    return-void

    .line 636
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    .line 638
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 640
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .locals 0

    .line 1971
    return-void
.end method

.method protected whitelist onRestart()V
    .locals 4

    .line 867
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 868
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 870
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 869
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 871
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 874
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 873
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 876
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 879
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 882
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOpShareUi()Z

    move-result v0

    if-nez v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 895
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 896
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 994
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 998
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    const-string/jumbo v1, "last_shown_tab_key"

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IResolverActivityExt;->hookonRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1000
    :cond_0
    const v0, 0x1020446

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1001
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    if-eqz v0, :cond_1

    .line 1002
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 1004
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 1005
    return-void
.end method

.method protected whitelist onResume()V
    .locals 1

    .line 2450
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2451
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->hookonResume()V

    .line 2452
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 981
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    const-string/jumbo v1, "last_shown_tab_key"

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IResolverActivityExt;->hookonSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 986
    :cond_0
    const v0, 0x1020446

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 987
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 990
    :cond_1
    return-void
.end method

.method protected whitelist onStart()V
    .locals 2

    .line 900
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 903
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 905
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerWorkProfileStateReceiver()V

    .line 907
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 909
    :cond_0
    return-void
.end method

.method protected whitelist onStop()V
    .locals 5

    .line 929
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 932
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 933
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 934
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 936
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 938
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v2, :cond_0

    .line 939
    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 941
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 943
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 944
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    if-nez v3, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_2

    .line 954
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 957
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v3, :cond_3

    .line 958
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 959
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 961
    :cond_3
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .locals 19
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "always"    # Z

    .line 1202
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1203
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 1205
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_17

    iget-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1206
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_1
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1207
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 1212
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1213
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    .local v0, "filterIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1215
    .end local v0    # "filterIntent":Landroid/content/Intent;
    :cond_2
    move-object v0, v4

    move-object v8, v0

    .line 1218
    .local v8, "filterIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1219
    .local v9, "action":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 1220
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    :cond_3
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .line 1223
    .local v10, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    .line 1224
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1225
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1226
    .end local v11    # "cat":Ljava/lang/String;
    goto :goto_2

    .line 1228
    :cond_4
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1230
    iget v0, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v11, 0xfff0000

    and-int/2addr v11, v0

    .line 1231
    .local v11, "cat":I
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 1232
    .local v12, "data":Landroid/net/Uri;
    const-string v13, "ResolverActivity"

    const/high16 v14, 0x600000

    if-ne v11, v14, :cond_5

    .line 1233
    invoke-virtual {v8, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1234
    .local v15, "mimeType":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 1236
    :try_start_0
    invoke-virtual {v7, v15}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    goto :goto_3

    .line 1237
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 1238
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    const/4 v7, 0x0

    .line 1243
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v15    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1247
    if-ne v11, v14, :cond_6

    .line 1248
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v14, "file"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1249
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v14, "content"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1250
    :cond_6
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1254
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1255
    .local v0, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v0, :cond_8

    .line 1256
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 1257
    .local v14, "ssp":Ljava/lang/String;
    :goto_4
    if-eqz v14, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 1259
    .local v15, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v15, v14}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1260
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v6

    invoke-virtual {v7, v3, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1261
    goto :goto_5

    .line 1263
    .end local v15    # "p":Landroid/os/PatternMatcher;
    :cond_7
    goto :goto_4

    .line 1265
    .end local v14    # "ssp":Ljava/lang/String;
    :cond_8
    :goto_5
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1266
    .local v3, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v3, :cond_b

    .line 1267
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1269
    .local v6, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v14

    if-ltz v14, :cond_a

    .line 1270
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v14

    .line 1271
    .local v14, "port":I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 1272
    if-ltz v14, :cond_9

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    .line 1271
    :goto_7
    invoke-virtual {v7, v15, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    goto :goto_8

    .line 1275
    .end local v6    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v14    # "port":I
    :cond_a
    goto :goto_6

    .line 1277
    :cond_b
    :goto_8
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_d

    .line 1279
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1280
    .local v5, "path":Ljava/lang/String;
    :goto_9
    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PatternMatcher;

    .line 1282
    .local v6, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v6, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1283
    invoke-virtual {v6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1284
    goto :goto_a

    .line 1286
    .end local v6    # "p":Landroid/os/PatternMatcher;
    :cond_c
    goto :goto_9

    .line 1291
    .end local v0    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v3    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v5    # "path":Ljava/lang/String;
    :cond_d
    :goto_a
    if-eqz v7, :cond_16

    .line 1292
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1298
    .local v3, "N":I
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1299
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    move v5, v0

    .line 1300
    .local v5, "needToAddBackProfileForwardingComponent":Z
    if-nez v5, :cond_f

    .line 1301
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object v6, v0

    .local v0, "set":[Landroid/content/ComponentName;
    goto :goto_c

    .line 1303
    .end local v0    # "set":[Landroid/content/ComponentName;
    :cond_f
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object v6, v0

    .line 1306
    .local v6, "set":[Landroid/content/ComponentName;
    :goto_c
    const/4 v0, 0x0

    .line 1307
    .local v0, "bestMatch":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_d
    if-ge v14, v3, :cond_11

    .line 1308
    iget-object v15, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v15}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v15

    .line 1309
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-object/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "filterIntent":Landroid/content/Intent;
    .local v16, "filterIntent":Landroid/content/Intent;
    invoke-virtual {v15, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 1310
    .local v15, "r":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v17, v9

    .end local v9    # "action":Ljava/lang/String;
    .local v17, "action":Ljava/lang/String;
    iget-object v9, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v10

    .end local v10    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v14

    .line 1312
    iget v8, v15, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v0, :cond_10

    iget v0, v15, Landroid/content/pm/ResolveInfo;->match:I

    .line 1307
    .end local v15    # "r":Landroid/content/pm/ResolveInfo;
    :cond_10
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto :goto_d

    .end local v16    # "filterIntent":Landroid/content/Intent;
    .end local v17    # "action":Ljava/lang/String;
    .end local v18    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "filterIntent":Landroid/content/Intent;
    .restart local v9    # "action":Ljava/lang/String;
    .restart local v10    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 1315
    .end local v8    # "filterIntent":Landroid/content/Intent;
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .restart local v16    # "filterIntent":Landroid/content/Intent;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v18    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_12

    .line 1316
    iget-object v8, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v8

    .line 1317
    invoke-virtual {v8}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    aput-object v8, v6, v3

    .line 1318
    iget-object v8, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v8

    .line 1319
    invoke-virtual {v8}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ResolveInfo;->match:I

    .line 1320
    .local v8, "otherProfileMatch":I
    if-le v8, v0, :cond_12

    move v0, v8

    goto :goto_e

    .line 1323
    .end local v8    # "otherProfileMatch":I
    :cond_12
    move v8, v0

    .end local v0    # "bestMatch":I
    .local v8, "bestMatch":I
    :goto_e
    if-eqz p2, :cond_14

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v0

    .line 1325
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1328
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v6, v10}, Landroid/content/pm/PackageManager;->addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1330
    iget-boolean v10, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v10, :cond_13

    .line 1332
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v10

    .line 1333
    .local v10, "packageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1334
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v13, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 1337
    .end local v0    # "userId":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_13
    goto :goto_f

    .line 1341
    :cond_14
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    iget-object v9, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-interface {v0, v9, v4, v7, v8}, Lcom/android/internal/app/IResolverActivityExt;->hooksetLastChosen(Lcom/android/internal/app/ResolverListController;Landroid/content/Intent;Landroid/content/IntentFilter;I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1343
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1344
    invoke-virtual {v0, v4, v7, v8}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1351
    :cond_15
    goto :goto_f

    .line 1349
    :catch_1
    move-exception v0

    .line 1350
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error calling setLastChosenActivity\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1291
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v3    # "N":I
    .end local v5    # "needToAddBackProfileForwardingComponent":Z
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v16    # "filterIntent":Landroid/content/Intent;
    .end local v17    # "action":Ljava/lang/String;
    .end local v18    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v8, "filterIntent":Landroid/content/Intent;
    .local v9, "action":Ljava/lang/String;
    .local v10, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 1356
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "filterIntent":Landroid/content/Intent;
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "cat":I
    .end local v12    # "data":Landroid/net/Uri;
    :cond_17
    :goto_f
    if-eqz p1, :cond_19

    .line 1357
    if-eqz v4, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchingTargetInOtherProfile()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1362
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/internal/app/IResolverActivityExt;->hookprepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V

    .line 1365
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1369
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->performAnimation()V

    .line 1373
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1374
    const/4 v3, 0x0

    return v3

    .line 1378
    :cond_19
    const/4 v3, 0x1

    return v3
.end method

.method blacklist optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "index"    # I

    .line 748
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .locals 1
    .param p1, "rebuildCompleted"    # Z

    .line 1681
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method final blacklist postRebuildListInternal(Z)Z
    .locals 3
    .param p1, "rebuildCompleted"    # Z

    .line 1690
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1694
    .local v0, "count":I
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1695
    const/4 v1, 0x1

    return v1

    .line 1700
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1701
    return v2

    .line 1704
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    .line 1706
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1707
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupProfileTabs()V

    .line 1710
    :cond_2
    return v2
.end method

.method protected blacklist resetButtonBar()V
    .locals 10

    .line 2089
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    return-void

    .line 2093
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_1

    .line 2094
    return-void

    .line 2096
    :cond_1
    const v0, 0x102022a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2097
    .local v0, "buttonLayout":Landroid/view/ViewGroup;
    if-nez v0, :cond_2

    .line 2098
    const-string v1, "ResolverActivity"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    return-void

    .line 2101
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2102
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2103
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    const v2, 0x1020466

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2104
    .local v2, "buttonBarDivider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 2105
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_3
    move v3, v4

    .line 2106
    .local v3, "inset":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 2107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050256

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 2106
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2110
    .end local v3    # "inset":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2111
    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2112
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2113
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2114
    if-eqz v2, :cond_5

    .line 2115
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2117
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2118
    return-void

    .line 2120
    :cond_6
    if-eqz v2, :cond_7

    .line 2121
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2123
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2124
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2126
    const v3, 0x102022c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 2127
    const v3, 0x1020229

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 2129
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    .line 2130
    return-void
.end method

.method public blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 2200
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2201
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2203
    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2202
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2203
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2200
    :goto_0
    return v0
.end method

.method public blacklist safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1394
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 1396
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1397
    .local v0, "currentUserHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    .end local v0    # "currentUserHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1399
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1400
    throw v0
.end method

.method public blacklist safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1412
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 1414
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1417
    nop

    .line 1418
    return-void

    .line 1416
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1417
    throw v0
.end method

.method public blacklist sendVoiceChoicesIfNeeded()V
    .locals 6

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    .line 731
    .local v0, "count":I
    new-array v1, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 732
    .local v1, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 733
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    .line 734
    .local v4, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v4, :cond_1

    .line 737
    return-void

    .line 739
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v5

    aput-object v5, v1, v2

    .line 732
    .end local v4    # "target":Lcom/android/internal/app/chooser/TargetInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_2
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v3, Landroid/app/VoiceInteractor$Prompt;

    .line 743
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 744
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 745
    return-void
.end method

.method protected final blacklist setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 752
    if-eqz p1, :cond_0

    .line 753
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 754
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_0
    return-void
.end method

.method protected blacklist setRetainInOnStop(Z)V
    .locals 0
    .param p1, "retainInOnStop"    # Z

    .line 2192
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    .line 2193
    return-void
.end method

.method public blacklist setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .line 837
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 838
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .locals 4

    .line 648
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 650
    :cond_0
    const v0, 0x102022a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 651
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 653
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 651
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1490
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .locals 1

    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist shouldShowTabs()Z
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 1494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1495
    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1496
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1497
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1500
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityExt;->performAnimation()V

    .line 1502
    return-void
.end method

.method public blacklist startSelected(IZZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1097
    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1098
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1099
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1101
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1100
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1099
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1102
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1103
    return-void

    .line 1106
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 1107
    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 1108
    .local v1, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v1, :cond_2

    .line 1109
    return-void

    .line 1113
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolverWrapper:Lcom/android/internal/app/IResolverActivityWrapper;

    invoke-interface {v2}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/android/internal/app/IResolverActivityExt;->statisticsData(Landroid/content/pm/ResolveInfo;I)V

    .line 1115
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1116
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_3

    .line 1117
    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 1119
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_4

    .line 1120
    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 1123
    :cond_4
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1126
    :goto_0
    nop

    .line 1127
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1128
    const/16 v2, 0x1c4

    goto :goto_1

    .line 1129
    :cond_5
    const/16 v2, 0x1c6

    .line 1126
    :goto_1
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1132
    :cond_6
    return-void
.end method

.method protected blacklist super_onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    return-void
.end method

.method public blacklist updateProfileViewButton()V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 779
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 783
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 784
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 785
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v2, 0x1020445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 787
    .local v1, "text":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 788
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 790
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    .end local v1    # "text":Landroid/view/View;
    goto :goto_0

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :goto_0
    return-void
.end method

.method public blacklist useLayoutWithDefault()Z
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2179
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    .local v0, "currentUserAdapterHasFilteredItem":Z
    goto :goto_0

    .line 2181
    .end local v0    # "currentUserAdapterHasFilteredItem":Z
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2182
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 2184
    .restart local v0    # "currentUserAdapterHasFilteredItem":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
