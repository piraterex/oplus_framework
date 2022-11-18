.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    }
.end annotation


# static fields
.field private static final blacklist SINGLE_CELL_SPAN_SIZE:I = 0x1


# instance fields
.field private blacklist mBottomOffset:I

.field private blacklist mCMPPExt:Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

.field private final blacklist mIsSendAction:Z

.field private final blacklist mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

.field private blacklist mMaxTargetsPerRow:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p4, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p5, "isSendAction"    # Z
    .param p6, "maxTargetsPerRow"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 330
    const-class v1, Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mCMPPExt:Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    .line 64
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 65
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 67
    iput-boolean p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 68
    iput p6, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 69
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "workAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p4, "defaultProfile"    # I
    .param p5, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p6, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p7, "isSendAction"    # Z
    .param p8, "maxTargetsPerRow"    # I

    .line 78
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 330
    const-class v0, Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mCMPPExt:Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 81
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 84
    iput-boolean p7, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 85
    iput p8, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 86
    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .locals 6
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mCMPPExt:Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;->getChooserProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 99
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    .line 101
    .local v2, "profileDescriptor":Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;

    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 103
    return-object v2
.end method

.method private blacklist getCantAccessPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantAccessWorkMessage()Ljava/lang/String;
    .locals 3

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithWorkMessage()Ljava/lang/String;
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCrossProfileBlockedTitle()Ljava/lang/String;
    .locals 3

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoPersonalAppsAvailableMessage()Ljava/lang/String;
    .locals 3

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoWorkAppsAvailableMessage()Ljava/lang/String;
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkAppPausedTitle()Ljava/lang/String;
    .locals 3

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 123
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist getItemCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method bridge synthetic blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .locals 1
    .param p1, "index"    # I

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    .line 203
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessPersonalMessage$5$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104081c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessWorkMessage$4$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104081d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithPersonalMessage$3$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104081e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithWorkMessage$2$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104081f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCrossProfileBlockedTitle$1$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040820

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoPersonalAppsAvailableMessage$7$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040821

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoWorkAppsAvailableMessage$6$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040822

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkAppPausedTitle$0$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040826

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist setEmptyStateBottomOffset(I)V
    .locals 0
    .param p1, "bottomOffset"    # I

    .line 308
    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    .line 309
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .locals 5
    .param p1, "container"    # Landroid/view/View;

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 315
    .local v0, "initialBottomPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    add-int/2addr v4, v0

    .line 315
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 317
    return-void
.end method

.method blacklist setupListAdapter(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 141
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    nop

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v1

    .line 143
    .local v1, "chooserGridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager;

    .line 144
    .local v2, "glm":Lcom/android/internal/widget/GridLayoutManager;
    iget v3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 145
    new-instance v3, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 154
    return-void
.end method

.method protected blacklist showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 243
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoPersonalAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 217
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_0

    .line 218
    nop

    .line 219
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    nop

    .line 223
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void
.end method

.method protected blacklist showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 249
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoWorkAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method protected blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_0

    .line 231
    nop

    .line 232
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    nop

    .line 236
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void
.end method

.method protected blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 209
    nop

    .line 210
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkAppPausedTitle()Ljava/lang/String;

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method
