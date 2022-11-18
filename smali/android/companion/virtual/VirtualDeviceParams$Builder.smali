.class public final Landroid/companion/virtual/VirtualDeviceParams$Builder;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedCrossTaskNavigations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBlockedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBlockedCrossTaskNavigations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultActivityPolicy:I

.field private blacklist mDefaultActivityPolicyConfigured:Z

.field private blacklist mDefaultNavigationPolicy:I

.field private blacklist mDefaultNavigationPolicyConfigured:Z

.field private blacklist mLockState:I

.field private blacklist mUsersWithMatchingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedCrossTaskNavigations:Ljava/util/Set;

    .line 325
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedCrossTaskNavigations:Ljava/util/Set;

    .line 326
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 328
    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedActivities:Ljava/util/Set;

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedActivities:Ljava/util/Set;

    .line 331
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 333
    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/VirtualDeviceParams;
    .locals 11

    .line 501
    new-instance v10, Landroid/companion/virtual/VirtualDeviceParams;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedCrossTaskNavigations:Ljava/util/Set;

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedCrossTaskNavigations:Ljava/util/Set;

    iget v5, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iget-object v6, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedActivities:Ljava/util/Set;

    iget-object v7, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedActivities:Ljava/util/Set;

    iget v8, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceParams-IA;)V

    return-object v10
.end method

.method public whitelist setAllowedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 457
    .local p1, "allowedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    :goto_0
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 464
    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 465
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedActivities:Ljava/util/Set;

    .line 466
    return-object p0
.end method

.method public whitelist setAllowedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 397
    .local p1, "allowedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigation and blocked task navigation cannot  both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    :goto_0
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 405
    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 406
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedCrossTaskNavigations:Ljava/util/Set;

    .line 407
    return-object p0
.end method

.method public whitelist setBlockedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 484
    .local p1, "blockedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 492
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedActivities:Ljava/util/Set;

    .line 493
    return-object p0
.end method

.method public whitelist setBlockedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 429
    .local p1, "blockedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigation and blocked task navigation cannot  be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 438
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedCrossTaskNavigations:Ljava/util/Set;

    .line 439
    return-object p0
.end method

.method public whitelist setLockState(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0
    .param p1, "lockState"    # I

    .line 346
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    .line 347
    return-object p0
.end method

.method public whitelist setUsersWithMatchingAccounts(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 373
    .local p1, "usersWithMatchingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/UserHandle;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    .line 375
    return-object p0
.end method
