.class public Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ResolverMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    }
.end annotation


# instance fields
.field private final blacklist mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

.field private blacklist mRMPPExt:Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

.field private final blacklist mShouldShowNoCrossProfileIntentsEmptyState:Z

.field private blacklist mUseLayoutWithDefault:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p4, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 293
    const-class v1, Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    iput-object v1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mRMPPExt:Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    .line 58
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 59
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "workAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p4, "defaultProfile"    # I
    .param p5, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p6, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p7, "shouldShowNoCrossProfileIntentsEmptyState"    # Z

    .line 71
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 293
    const-class v0, Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    iput-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mRMPPExt:Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 74
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 77
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    .line 78
    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .locals 3
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mRMPPExt:Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IResolverMultiProfilePagerAdapterExt;->getResolverProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 92
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v2
.end method

.method private blacklist getCantAccessPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantAccessWorkMessage()Ljava/lang/String;
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCrossProfileBlockedTitle()Ljava/lang/String;
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoPersonalAppsAvailableMessage()Ljava/lang/String;
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoWorkAppsAvailableMessage()Ljava/lang/String;
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkAppPausedTitle()Ljava/lang/String;
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist allowShowNoCrossProfileIntentsEmptyState()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return v0
.end method

.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getActiveAdapterView()Landroid/widget/ListView;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 118
    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist getItemCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getListViewForIndex(I)Landroid/widget/ListView;
    .locals 1
    .param p1, "index"    # I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "intent_resolver"

    return-object v0
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 123
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setupListAdapter(I)V

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method synthetic blacklist lambda$getCantAccessPersonalMessage$3$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104081c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessWorkMessage$2$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104081d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCrossProfileBlockedTitle$1$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040820

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoPersonalAppsAvailableMessage$5$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040821

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoWorkAppsAvailableMessage$4$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040822

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkAppPausedTitle$0$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040826

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist setUseLayoutWithDefault(Z)V
    .locals 0
    .param p1, "useLayoutWithDefault"    # Z

    .line 272
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    .line 273
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .locals 4
    .param p1, "container"    # Landroid/view/View;

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 278
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 278
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 280
    return-void
.end method

.method blacklist setupListAdapter(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    .line 112
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method protected blacklist showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 219
    nop

    .line 220
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getNoPersonalAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method protected blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 205
    nop

    .line 206
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCantAccessWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method protected blacklist showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 226
    nop

    .line 227
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getNoWorkAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    .line 226
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 212
    nop

    .line 213
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCantAccessPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method protected blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 197
    nop

    .line 198
    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkAppPausedTitle()Ljava/lang/String;

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method
