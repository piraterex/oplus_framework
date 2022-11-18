.class public interface abstract Landroid/content/pm/ILauncherActivityInfoExt;
.super Ljava/lang/Object;
.source "ILauncherActivityInfoExt.java"


# virtual methods
.method public blacklist getBadgedIcon(ILandroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isOplusIcons()Z
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method
