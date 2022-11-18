.class public Landroid/content/pm/CrossProfileApps;
.super Ljava/lang/Object;
.source "CrossProfileApps.java"


# static fields
.field public static final whitelist ACTION_CAN_INTERACT_ACROSS_PROFILES_CHANGED:Ljava/lang/String; = "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mService:Landroid/content/pm/ICrossProfileApps;

.field private final greylist-max-o mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ICrossProfileApps;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ICrossProfileApps;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    .line 83
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    .line 85
    return-void
.end method

.method private blacklist getDefaultProfileSwitchingLabel(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isManagedProfile"    # Z

    .line 339
    if-eqz p1, :cond_0

    .line 340
    const v0, 0x1040533

    goto :goto_0

    :cond_0
    const v0, 0x104094a

    .line 341
    .local v0, "stringRes":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getUpdatableProfileSwitchingLabelId(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isManagedProfile"    # Z

    .line 335
    if-eqz p1, :cond_0

    const-string v0, "Core.SWITCH_TO_WORK_LABEL"

    goto :goto_0

    :cond_0
    const-string v0, "Core.SWITCH_TO_PERSONAL_LABEL"

    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$resetInteractAcrossProfilesAppOps$1(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 1
    .param p0, "newCrossProfilePackages"    # Ljava/util/Set;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 581
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o verifyCanAccessUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 622
    invoke-virtual {p0}, Landroid/content/pm/CrossProfileApps;->getTargetUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    return-void

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 524
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ICrossProfileApps;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canInteractAcrossProfiles()Z
    .locals 2

    .line 432
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->canInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canRequestInteractAcrossProfiles()Z
    .locals 2

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->canRequestInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ICrossProfileApps;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearInteractAcrossProfilesAppOps()V
    .locals 2

    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    invoke-interface {v0}, Landroid/content/pm/ICrossProfileApps;->clearInteractAcrossProfilesAppOps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    nop

    .line 619
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createRequestInteractAcrossProfilesIntent()Landroid/content/Intent;
    .locals 3

    .line 456
    invoke-virtual {p0}, Landroid/content/pm/CrossProfileApps;->canRequestInteractAcrossProfiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v0, "settingsIntent":Landroid/content/Intent;
    const-string v1, "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 463
    .local v1, "packageUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 464
    return-object v0

    .line 457
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    .end local v1    # "packageUri":Landroid/net/Uri;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The calling package can not request to interact across profiles."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProfileSwitchingIconDrawable(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 359
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 361
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    .line 362
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 363
    .local v0, "isManagedProfile":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 367
    :cond_0
    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProfileSwitchingLabel(Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 325
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 327
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 328
    .local v0, "isManagedProfile":Z
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 329
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    .line 330
    invoke-direct {p0, v0}, Landroid/content/pm/CrossProfileApps;->getUpdatableProfileSwitchingLabelId(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/CrossProfileApps;Z)V

    .line 329
    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getTargetUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method synthetic blacklist lambda$getProfileSwitchingLabel$0$android-content-pm-CrossProfileApps(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isManagedProfile"    # Z

    .line 331
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->getDefaultProfileSwitchingLabel(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resetInteractAcrossProfilesAppOps(Ljava/util/Collection;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 576
    .local p1, "previousCrossProfilePackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "newCrossProfilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    return-void

    .line 579
    :cond_0
    nop

    .line 580
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 581
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 582
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 583
    .local v0, "unsetCrossProfilePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    return-void

    .line 587
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    invoke-interface {v1, v0}, Landroid/content/pm/ICrossProfileApps;->resetInteractAcrossProfilesAppOps(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I

    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/ICrossProfileApps;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    nop

    .line 510
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 281
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 281
    move-object v4, p1

    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    .line 254
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v7, v4

    .line 247
    move-object v4, p1

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 259
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Activity;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/pm/CrossProfileApps;->startActivity(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 212
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v6, v4

    .line 206
    move-object v4, p1

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    nop

    .line 217
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 101
    move-object v4, p1

    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x1

    .line 143
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v7, v4

    .line 136
    move-object v4, p1

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
