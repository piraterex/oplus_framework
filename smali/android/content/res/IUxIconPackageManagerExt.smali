.class public interface abstract Landroid/content/res/IUxIconPackageManagerExt;
.super Ljava/lang/Object;
.source "IUxIconPackageManagerExt.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/content/res/IUxIconPackageManagerExt$1;

    invoke-direct {v0}, Landroid/content/res/IUxIconPackageManagerExt$1;-><init>()V

    sput-object v0, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    return-void
.end method


# virtual methods
.method public whitelist clearCachedIconForActivity(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public whitelist getCachedIconForThemeHelper(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 15
    invoke-interface {p0}, Landroid/content/res/IUxIconPackageManagerExt;->getDefault()Landroid/content/res/IUxIconPackageManagerExt;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/content/res/IUxIconPackageManagerExt;
    .locals 1

    .line 26
    sget-object v0, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    return-object v0
.end method

.method public blacklist getOplusBaseResourcesForThemeHelper(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/IResourcesExt;
    .locals 1
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUxIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isForegroundDrawable"    # Z

    .line 57
    return-object p1
.end method

.method public blacklist getUxIconDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isForegroundDrawable"    # Z

    .line 64
    return-object p2
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 21
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IUxIconPackageManagerExt:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "isConvertEnable"    # Z

    .line 35
    invoke-interface {p0}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p0}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist loadResolveIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resid"    # I
    .param p5, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "convert"    # Z

    .line 45
    invoke-virtual {p2, p3, p4, p5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist putCachedIconForThemeHelper(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method
