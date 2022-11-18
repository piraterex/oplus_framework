.class public Landroid/content/pm/LauncherActivityInfo;
.super Ljava/lang/Object;
.source "LauncherActivityInfo.java"


# instance fields
.field private final blacklist mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

.field private blacklist mLauncherActivityInfoExt:Landroid/content/pm/ILauncherActivityInfoExt;

.field private final greylist-max-o mPm:Landroid/content/pm/PackageManager;

.field private greylist-max-o mUser:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "internal"    # Landroid/content/pm/LauncherActivityInfoInternal;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Landroid/content/pm/ILauncherActivityInfoExt;

    .line 48
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ILauncherActivityInfoExt;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mLauncherActivityInfoExt:Landroid/content/pm/ILauncherActivityInfoExt;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 59
    iput-object p3, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getApplicationFlags()I
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    return v0
.end method

.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 161
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public whitelist getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "density"    # I

    .line 196
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mLauncherActivityInfoExt:Landroid/content/pm/ILauncherActivityInfoExt;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/ILauncherActivityInfoExt;->getBadgedIcon(ILandroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFirstInstallTime()J
    .locals 3

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .line 113
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 114
    .local v0, "iconRes":I
    const/4 v1, 0x0

    .line 120
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mLauncherActivityInfoExt:Landroid/content/pm/ILauncherActivityInfoExt;

    invoke-interface {v2}, Landroid/content/pm/ILauncherActivityInfoExt;->isOplusIcons()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 124
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, v0, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 127
    .end local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 130
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 133
    :cond_1
    return-object v1
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLoadingProgress()F
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getIncrementalStatesInfo()Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
