.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final greylist-max-o PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final greylist-max-o PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final greylist-max-o PACKAGE_UNCHANGED:I = 0x0

.field public static final greylist-max-o PACKAGE_UPDATING:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "PackageMonitor"

.field static final greylist-max-o sExternalFilt:Landroid/content/IntentFilter;

.field static final greylist-max-o sNonDataFilt:Landroid/content/IntentFilter;

.field static final greylist-max-o sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field greylist-max-o mAppearingPackages:[Ljava/lang/String;

.field greylist-max-o mChangeType:I

.field greylist-max-o mChangeUserId:I

.field greylist-max-o mDisappearingPackages:[Ljava/lang/String;

.field greylist-max-o mModifiedComponents:[Ljava/lang/String;

.field greylist-max-o mModifiedPackages:[Ljava/lang/String;

.field greylist-max-o mRegisteredContext:Landroid/content/Context;

.field greylist-max-o mRegisteredHandler:Landroid/os/Handler;

.field greylist-max-o mSomePackagesChanged:Z

.field greylist-max-o mTempArray:[Ljava/lang/String;

.field final greylist-max-o mUpdatingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    .line 43
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    .line 44
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sput-object v2, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    .line 47
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 54
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    .line 70
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public greylist-max-o anyPackagesAppearing()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o anyPackagesDisappearing()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o didSomePackagesChange()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public greylist-max-o getChangingUserId()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method greylist-max-o getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 322
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 323
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 324
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public greylist-max-o getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public greylist-max-o isComponentModified(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 294
    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    return v2

    .line 293
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 291
    :cond_3
    :goto_1
    return v0
.end method

.method public greylist-max-o isPackageAppearing(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 244
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 244
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageDisappearing(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 260
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 260
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageModified(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 280
    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    return v1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o isPackageUpdating(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isReplacing()Z
    .locals 2

    .line 274
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o onBeginPackageChanges()V
    .locals 0

    .line 136
    return-void
.end method

.method public greylist-max-o onFinishPackageChanges()V
    .locals 0

    .line 305
    return-void
.end method

.method public greylist-max-o onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onHandleUserStop(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .line 198
    return-void
.end method

.method public greylist-max-o onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 142
    return-void
.end method

.method public greylist-max-o onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 230
    return-void
.end method

.method public greylist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 184
    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 185
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 184
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return v0
.end method

.method public greylist-max-o onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 308
    return-void
.end method

.method public greylist-max-o onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 224
    return-void
.end method

.method public greylist-max-o onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 236
    return-void
.end method

.method public greylist onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 149
    return-void
.end method

.method public greylist-max-o onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 156
    return-void
.end method

.method public blacklist onPackageStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 315
    return-void
.end method

.method public greylist-max-o onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 162
    return-void
.end method

.method public greylist-max-o onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 159
    return-void
.end method

.method public greylist-max-o onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 204
    return-void
.end method

.method public greylist-max-o onPackagesSuspended([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 210
    return-void
.end method

.method public greylist-max-o onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 207
    return-void
.end method

.method public greylist-max-o onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 213
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 329
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 331
    if-ne v0, v1, :cond_0

    .line 332
    const-string v0, "PackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent broadcast does not contain user handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 338
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 339
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "pkg":Ljava/lang/String;
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 348
    .local v6, "uid":I
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 349
    if-eqz v3, :cond_2

    .line 350
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 351
    aput-object v3, v7, v2

    .line 352
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 354
    iput v5, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 355
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 356
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_1
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 359
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 361
    :goto_0
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 362
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    if-ne v2, v5, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 365
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 368
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2
    :goto_1
    goto/16 :goto_8

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 369
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .restart local v3    # "pkg":Ljava/lang/String;
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 371
    .restart local v6    # "uid":I
    if-eqz v3, :cond_6

    .line 372
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 373
    aput-object v3, v7, v2

    .line 374
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 375
    iput v5, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 376
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v7

    .line 379
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    goto :goto_2

    .line 379
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 382
    :cond_4
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 386
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 387
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 388
    const-string v4, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 389
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    .line 392
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 394
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_6
    goto/16 :goto_8

    :cond_7
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 395
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .restart local v3    # "pkg":Ljava/lang/String;
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 397
    .restart local v6    # "uid":I
    const-string v7, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 399
    if-eqz v3, :cond_9

    .line 400
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 401
    aput-object v3, v8, v2

    .line 402
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 403
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 404
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 406
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 408
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_9
    goto/16 :goto_8

    :cond_a
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 409
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 410
    .restart local v3    # "pkg":Ljava/lang/String;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 411
    .local v2, "uid":I
    if-eqz v3, :cond_b

    .line 412
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 414
    .end local v2    # "uid":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_b
    goto/16 :goto_8

    :cond_c
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_e

    .line 415
    const-string v3, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 416
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 417
    const-string v4, "android.intent.extra.UID"

    .line 419
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 417
    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v2

    .line 420
    .local v2, "canRestart":Z
    if-eqz v2, :cond_d

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    .line 421
    .end local v2    # "canRestart":Z
    :cond_d
    goto/16 :goto_8

    :cond_e
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 422
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 423
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 424
    const-string v4, "android.intent.extra.UID"

    .line 425
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 424
    invoke-virtual {p0, p2, v3, v2, v5}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    goto/16 :goto_8

    .line 426
    :cond_f
    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 427
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_8

    .line 428
    :cond_10
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 429
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 430
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/content/PackageMonitor;->onHandleUserStop(Landroid/content/Intent;I)V

    goto/16 :goto_8

    .line 432
    :cond_11
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 433
    const-string v3, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "pkgList":[Ljava/lang/String;
    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 435
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 436
    move v4, v5

    goto :goto_3

    :cond_12
    nop

    :goto_3
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 437
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 438
    if-eqz v3, :cond_13

    .line 439
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_13

    .line 441
    aget-object v4, v3, v2

    iget v5, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 444
    .end local v2    # "i":I
    .end local v3    # "pkgList":[Ljava/lang/String;
    :cond_13
    goto :goto_8

    :cond_14
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 445
    const-string v3, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 446
    .restart local v3    # "pkgList":[Ljava/lang/String;
    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 447
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 448
    move v4, v5

    goto :goto_5

    :cond_15
    nop

    :goto_5
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 449
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 450
    if-eqz v3, :cond_16

    .line 451
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 452
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 453
    aget-object v4, v3, v2

    iget v5, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 456
    .end local v2    # "i":I
    .end local v3    # "pkgList":[Ljava/lang/String;
    :cond_16
    goto :goto_8

    :cond_17
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 457
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "pkgList":[Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    .end local v2    # "pkgList":[Ljava/lang/String;
    goto :goto_7

    .line 460
    :cond_18
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 461
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 462
    .restart local v2    # "pkgList":[Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 463
    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    goto :goto_8

    .line 460
    .end local v2    # "pkgList":[Ljava/lang/String;
    :cond_19
    :goto_7
    nop

    .line 466
    :cond_1a
    :goto_8
    iget-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v2, :cond_1b

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 470
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 471
    iput v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 472
    return-void
.end method

.method public greylist-max-o onSomePackagesChanged()V
    .locals 0

    .line 302
    return-void
.end method

.method public greylist-max-o onUidRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 201
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "externalStorage"    # Z

    .line 88
    nop

    .line 89
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    :goto_0
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 90
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 83
    return-void
.end method

.method public greylist-max-o register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "externalStorage"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 97
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 98
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Handler;

    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    .line 99
    if-eqz p2, :cond_0

    .line 100
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    if-eqz p3, :cond_1

    .line 103
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 107
    :cond_0
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    if-eqz p3, :cond_1

    .line 110
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist unregister()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 126
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
