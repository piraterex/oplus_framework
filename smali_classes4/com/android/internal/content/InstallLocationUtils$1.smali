.class Lcom/android/internal/content/InstallLocationUtils$1;
.super Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
.source "InstallLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/InstallLocationUtils;->getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist getDataDirectory()Ljava/io/File;
    .locals 1

    .line 136
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 131
    :goto_0
    return-object v0
.end method

.method public blacklist getForceAllowOnExternalSetting(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_allow_on_external"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public blacklist getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method
