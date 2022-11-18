.class public Lcom/android/internal/app/ResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;,
        Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;,
        Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;,
        Lcom/android/internal/app/ResolverListAdapter$ViewHolder;,
        Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListAdapter"

.field private static blacklist sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final blacklist mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mContext:Landroid/content/Context;

.field blacklist mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFilterLastUsed:Z

.field private final blacklist mIconDpi:I

.field protected final blacklist mInflater:Landroid/view/LayoutInflater;

.field private final blacklist mInitialIntents:[Landroid/content/Intent;

.field private final blacklist mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsAudioCaptureDevice:Z

.field private blacklist mIsTabLoaded:Z

.field protected blacklist mLastChosen:Landroid/content/pm/ResolveInfo;

.field private blacklist mLastChosenPosition:I

.field private blacklist mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mPlaceholderCount:I

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mPostListReadyRunnable:Ljava/lang/Runnable;

.field private blacklist mResolverListAdapterExt:Lcom/android/internal/app/IResolverListAdapterExt;

.field private blacklist mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

.field final blacklist mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

.field blacklist mResolverListController:Lcom/android/internal/app/ResolverListController;

.field private blacklist mUnfilteredResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsAudioCaptureDevice(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverListAdapterExt(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/IResolverListAdapterExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterExt:Lcom/android/internal/app/IResolverListAdapterExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverListAdapterWrapper(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/IResolverListAdapterWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostListReadyRunnable(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    invoke-static {}, Lcom/android/internal/app/ResolverListAdapter;->getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p7, "resolverListCommunicator"    # Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .param p8, "isAudioCaptureDevice"    # Z
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
            "Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;",
            "Z)V"
        }
    .end annotation

    .line 103
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 1240
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;-><init>(Lcom/android/internal/app/ResolverListAdapter;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    .line 1242
    const-class v0, Lcom/android/internal/app/IResolverListAdapterExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IResolverListAdapterExt;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterExt:Lcom/android/internal/app/IResolverListAdapterExt;

    .line 104
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 106
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 107
    iput-object p4, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 111
    iput-boolean p5, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    .line 112
    iput-object p6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 113
    iput-object p7, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 114
    iput-boolean p8, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    .line 115
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 116
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    .line 117
    return-void
.end method

.method private blacklist addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add DisplayResolveInfo component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v1, "ResolverListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    return-void
.end method

.method private blacklist addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .locals 9
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v0

    .line 536
    .local v0, "count":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 537
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 538
    .local v1, "add":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 539
    invoke-interface {v3, v4, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 540
    .local v3, "replaceIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 541
    invoke-interface {v6}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v6

    .line 540
    invoke-interface {v4, v5, v6}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 543
    .local v4, "defaultIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 544
    if-eqz v3, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v7

    invoke-direct {v5, v2, v1, v6, v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 545
    .local v5, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setPinned(Z)V

    .line 546
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pinned item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverListAdapter"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 550
    if-ne v3, v2, :cond_2

    .line 553
    const/4 v6, 0x1

    .local v6, "i":I
    move v7, v0

    .local v7, "n":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 554
    invoke-virtual {p1, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 555
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v5, v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 553
    .end local v8    # "altIntent":Landroid/content/Intent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 558
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 559
    return-void
.end method

.method private static blacklist getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;"
        }
    .end annotation

    .line 818
    .local p0, "resolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 819
    return-object v0

    .line 822
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 823
    .local v2, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 824
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 825
    return-object v2

    .line 827
    .end local v2    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 828
    :cond_2
    return-object v0
.end method

.method private static blacklist getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 6

    .line 731
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_0

    .line 733
    const/16 v0, 0x7f

    .line 734
    .local v0, "grayValue":I
    const/high16 v1, 0x3f000000    # 0.5f

    .line 736
    .local v1, "scale":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 737
    .local v2, "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 738
    .local v3, "mat":[F
    const/4 v4, 0x0

    aput v1, v3, v4

    .line 739
    const/4 v4, 0x6

    aput v1, v3, v4

    .line 740
    const/16 v4, 0xc

    aput v1, v3, v4

    .line 741
    const/4 v4, 0x4

    int-to-float v5, v0

    aput v5, v3, v4

    .line 742
    const/16 v4, 0x9

    int-to-float v5, v0

    aput v5, v3, v4

    .line 743
    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v3, v4

    .line 745
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 746
    .local v4, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 747
    invoke-virtual {v4, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 748
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v5, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 750
    .end local v0    # "grayValue":I
    .end local v1    # "scale":F
    .end local v2    # "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    .end local v3    # "mat":[F
    .end local v4    # "matrix":Landroid/graphics/ColorMatrix;
    :cond_0
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method private static blacklist makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolvedComponentInfo"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "resolverListCommunicator"    # Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .param p4, "iconDpi"    # I

    .line 842
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 844
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 846
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 844
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    .line 847
    .local v12, "pOrigIntent":Landroid/content/Intent;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 849
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    .line 847
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 851
    .local v13, "replacementIntent":Landroid/content/Intent;
    new-instance v10, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-object/from16 v14, p0

    move/from16 v15, p4

    invoke-direct {v10, v14, v15, v11}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    .line 854
    .local v10, "presentationGetter":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    new-instance v16, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 855
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 857
    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 858
    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 859
    if-eqz v12, :cond_0

    move-object v9, v12

    goto :goto_0

    :cond_0
    move-object v9, v13

    :goto_0
    move-object/from16 v4, v16

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 854
    return-object v16
.end method

.method private blacklist updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 563
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 565
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 572
    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist alwaysShowSubLabel()Z
    .locals 1

    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 691
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

    .line 398
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;-><init>(Lcom/android/internal/app/ResolverListAdapter;Z)V

    return-object v0
.end method

.method public final blacklist createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 674
    .local v1, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 675
    return-object v0
.end method

.method blacklist finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z
    .locals 4
    .param p2, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 372
    .local p1, "filteredResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 380
    .local v2, "placeholderCount":I
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    add-int/lit8 v2, v2, -0x1

    .line 383
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getWrapper()Lcom/android/internal/app/IResolverListAdapterWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IResolverListAdapterExt;->setPlaceholderResolveList(Ljava/util/List;)V

    .line 390
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 391
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;

    move-result-object v3

    new-array v0, v0, [Ljava/util/List;

    aput-object p1, v0, v1

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    return v1

    .line 374
    .end local v2    # "placeholderCount":I
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 376
    return v0
.end method

.method public whitelist getCount()I
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 620
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    .line 621
    :goto_1
    nop

    .line 622
    .local v0, "totalSize":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_2

    .line 623
    add-int/lit8 v0, v0, -0x1

    .line 625
    :cond_2
    return v0
.end method

.method public blacklist getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 654
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfoCount()I
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFilteredPosition()I
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 146
    return v0

    .line 148
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getInitialRebuiltResolveList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 268
    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 267
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 270
    return-object v0

    .line 272
    .end local v0    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 274
    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 272
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .line 634
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    .line 635
    add-int/lit8 p1, p1, 0x1

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 640
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 645
    int-to-long v0, p1

    return-wide v0
.end method

.method protected blacklist getLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 717
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    return-object v0
.end method

.method public blacklist getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getPlaceholderCount()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method protected blacklist getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 790
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 789
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScore(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 156
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getUnfilteredCount()I
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getUnfilteredResolveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 658
    move-object v0, p2

    .line 663
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 665
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 667
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 668
    return-object v0
.end method

.method public blacklist getWrapper()Lcom/android/internal/app/IResolverListAdapterWrapper;
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 121
    return-void
.end method

.method public blacklist hasFilteredItem()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isTabLoaded()Z
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    return v0
.end method

.method blacklist loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .line 767
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 768
    .local v0, "iconInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 769
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/ResolverListAdapter$3;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 779
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListAdapter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 781
    :cond_0
    return-void
.end method

.method blacklist loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .locals 3
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 754
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .locals 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 758
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method protected blacklist markTabLoaded()V
    .locals 1

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 804
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 695
    .local v0, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 696
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x10807a2

    .line 697
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 696
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 698
    return-void

    .line 701
    :cond_0
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 702
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayLabel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter;->getLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 705
    :cond_1
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->alwaysShowSubLabel()Z

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 708
    :goto_0
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 709
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_2

    .line 710
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 712
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 714
    :goto_1
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 685
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900fb

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/app/IResolverListAdapterExt;->hookonCreateView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDestroy()V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    .line 728
    :cond_1
    return-void
.end method

.method blacklist performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 298
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    .local v0, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 299
    .end local v0    # "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_2
    :goto_1
    return-object p1
.end method

.method blacklist performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 322
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverListController;->filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 323
    :cond_1
    :goto_0
    return-object p1
.end method

.method blacklist postListReadyRunnable(ZZ)V
    .locals 2
    .param p1, "doPostProcessing"    # Z
    .param p2, "rebuildCompleted"    # Z

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter$2;-><init>(Lcom/android/internal/app/ResolverListAdapter;ZZ)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 530
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    :cond_0
    return-void
.end method

.method protected blacklist processSortedList(Ljava/util/List;Z)V
    .locals 20
    .param p2, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 420
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    move v9, v0

    .line 421
    .local v9, "n":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolverListAdapter#processSortedList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 429
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v7, v10}, Lcom/android/internal/app/IResolverListAdapterExt;->sortComponentsNull(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 432
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 433
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v0

    if-ge v11, v1, :cond_6

    .line 434
    aget-object v15, v0, v11

    .line 435
    .local v15, "ii":Landroid/content/Intent;
    if-nez v15, :cond_1

    .line 436
    goto/16 :goto_2

    .line 451
    :cond_1
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    iget-object v1, v6, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-interface {v0, v15, v1}, Lcom/android/internal/app/IResolverListAdapterExt;->getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 452
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_2

    .line 453
    goto/16 :goto_2

    .line 456
    :cond_2
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 457
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/UserManager;

    .line 458
    .local v19, "userManager":Landroid/os/UserManager;
    instance-of v0, v15, Landroid/content/pm/LabeledIntent;

    if-eqz v0, :cond_3

    .line 459
    move-object v0, v15

    check-cast v0, Landroid/content/pm/LabeledIntent;

    .line 460
    .local v0, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 461
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v14, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 462
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 463
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v14, Landroid/content/pm/ResolveInfo;->icon:I

    .line 464
    iget v1, v14, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, v14, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 466
    .end local v0    # "li":Landroid/content/pm/LabeledIntent;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    iput-boolean v10, v14, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 468
    iput v8, v14, Landroid/content/pm/ResolveInfo;->icon:I

    .line 473
    :cond_4
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    iget-object v1, v6, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v14

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IResolverListAdapterExt;->hookAddResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 475
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v1, v6, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 476
    invoke-virtual {v14, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v16, 0x0

    invoke-virtual {v6, v14}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v18

    move-object v12, v0

    move-object v13, v15

    move-object v2, v14

    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    move-object v3, v15

    .end local v15    # "ii":Landroid/content/Intent;
    .local v3, "ii":Landroid/content/Intent;
    move-object v15, v1

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 475
    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_2

    .line 473
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ii":Landroid/content/Intent;
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "ii":Landroid/content/Intent;
    :cond_5
    move-object v2, v14

    move-object v3, v15

    .line 433
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v15    # "ii":Landroid/content/Intent;
    .end local v19    # "userManager":Landroid/os/UserManager;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 487
    .end local v11    # "i":I
    :cond_6
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/android/internal/app/IResolverListAdapterExt;->sortComponentsNull(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 489
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 490
    .local v1, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v1, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 491
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_7

    .line 492
    invoke-direct {v6, v1}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    .line 494
    .end local v1    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    goto :goto_3

    .line 503
    :cond_8
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListAdapterWrapper:Lcom/android/internal/app/IResolverListAdapterWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    iget-object v2, v6, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    iget-object v3, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v4, v6, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IResolverListAdapterExt;->addMultiAppResolveInfoIfNeed(Ljava/util/List;Ljava/util/List;Lcom/android/internal/app/ResolverListController;Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 506
    iget-object v0, v6, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->sendVoiceChoicesIfNeeded()V

    .line 507
    move/from16 v0, p2

    invoke-virtual {v6, v0, v10}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 508
    iput-boolean v10, v6, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 509
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 510
    return-void
.end method

.method protected blacklist rebuildList(Z)Z
    .locals 5
    .param p1, "doPostProcessing"    # Z

    .line 199
    const-string v0, "ResolverListAdapter#rebuildList"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 202
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getInitialRebuiltResolveList()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 220
    nop

    .line 221
    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-result-object v2

    .line 222
    .local v2, "otherProfileInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter;->updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    .line 223
    if-eqz v2, :cond_0

    .line 224
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-ne v3, v1, :cond_1

    const/4 v0, 0x1

    .line 245
    .local v0, "needsCopyOfUnfiltered":Z
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter;->performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 247
    .local v3, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v3, :cond_2

    .line 250
    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 253
    :cond_2
    nop

    .line 254
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z

    move-result v4

    .line 255
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 256
    return v4
.end method

.method public blacklist resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 602
    .local v0, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    .line 605
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist setPlaceholderCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 124
    iput p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    .line 125
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 591
    .local v1, "existingInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 592
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    const/4 v0, 0x0

    return v0

    .line 595
    .end local v1    # "existingInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_0
    goto :goto_0

    .line 596
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 610
    if-eqz p2, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 616
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 171
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/app/ResolverListController;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    return-void
.end method

.method public blacklist updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->updateModel(Landroid/content/ComponentName;)V

    .line 168
    return-void
.end method

.method blacklist updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .locals 4
    .param p1, "otherProfileInfo"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    .line 341
    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_0

    .line 345
    :cond_0
    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling getLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
