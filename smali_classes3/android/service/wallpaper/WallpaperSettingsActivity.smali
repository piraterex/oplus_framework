.class public Landroid/service/wallpaper/WallpaperSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "WallpaperSettingsActivity.java"


# static fields
.field public static final greylist-max-o EXTRA_PREVIEW_MODE:Ljava/lang/String; = "android.service.wallpaper.PREVIEW_MODE"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
