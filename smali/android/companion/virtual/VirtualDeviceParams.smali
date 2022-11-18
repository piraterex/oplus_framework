.class public final Landroid/companion/virtual/VirtualDeviceParams;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder;,
        Landroid/companion/virtual/VirtualDeviceParams$NavigationPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$ActivityPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$LockState;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_POLICY_DEFAULT_ALLOWED:I = 0x0

.field public static final whitelist ACTIVITY_POLICY_DEFAULT_BLOCKED:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LOCK_STATE_ALWAYS_UNLOCKED:I = 0x1

.field public static final whitelist LOCK_STATE_DEFAULT:I = 0x0

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_ALLOWED:I = 0x0

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_BLOCKED:I = 0x1


# instance fields
.field private final blacklist mAllowedActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedCrossTaskNavigations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBlockedActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBlockedCrossTaskNavigations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultActivityPolicy:I

.field private final blacklist mDefaultNavigationPolicy:I

.field private final blacklist mLockState:I

.field private final blacklist mUsersWithMatchingAccounts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 306
    new-instance v0, Landroid/companion/virtual/VirtualDeviceParams$1;

    invoke-direct {v0}, Landroid/companion/virtual/VirtualDeviceParams$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Ljava/util/Set;I)V
    .locals 1
    .param p1, "lockState"    # I
    .param p5, "defaultNavigationPolicy"    # I
    .param p8, "defaultActivityPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 124
    .local p2, "usersWithMatchingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/UserHandle;>;"
    .local p3, "allowedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p4, "blockedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p6, "allowedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p7, "blockedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 135
    iput p5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    .line 138
    iput p8, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Ljava/util/Set;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/VirtualDeviceParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 265
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 266
    return v0

    .line 268
    :cond_0
    instance-of v1, p1, Landroid/companion/virtual/VirtualDeviceParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 269
    return v2

    .line 271
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceParams;

    .line 272
    .local v1, "that":Landroid/companion/virtual/VirtualDeviceParams;
    iget v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    iget v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 273
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 274
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 275
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    iget v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    .line 277
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    .line 278
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    iget v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 272
    :goto_0
    return v0
.end method

.method public whitelist getAllowedActivities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllowedCrossTaskNavigations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBlockedActivities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBlockedCrossTaskNavigations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultActivityPolicy()I
    .locals 1

    .line 243
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    return v0
.end method

.method public whitelist getDefaultNavigationPolicy()I
    .locals 1

    .line 208
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    return v0
.end method

.method public whitelist getLockState()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    return v0
.end method

.method public whitelist getUsersWithMatchingAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 284
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 284
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDeviceParams( mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowedCrossTaskNavigations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBlockedCrossTaskNavigations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowedActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBlockedActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 253
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 255
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 256
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 257
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAllowedActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 259
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mBlockedActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 260
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return-void
.end method
