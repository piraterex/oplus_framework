.class public interface abstract Landroid/provider/ISettingsExt;
.super Ljava/lang/Object;
.source "ISettingsExt.java"


# static fields
.field public static final blacklist PACKAGE_TALKBACK_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field public static final blacklist SCREEN_AUTO_BRIGHTNESS_ADJ_TALKBACK:Ljava/lang/String; = "screen_auto_brightness_adj_talkback"

.field public static final blacklist SCREEN_BRIGHTNESS_TALKBACK_MAX:Ljava/lang/String; = "sys.internal.screen_brightness_talkback_max"

.field public static final blacklist SCREEN_BRIGHTNESS_TALKBACK_MIN:Ljava/lang/String; = "sys.internal.screen_brightness_talkback_min"

.field public static final blacklist T_SCREEN_BRIGHTNESS_TALKBACK_MAX:I = 0xff

.field public static final blacklist T_SCREEN_BRIGHTNESS_TALKBACK_MIN:I = 0x1


# virtual methods
.method public blacklist addKeyToPublicSettings(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "pulbicSettings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getAutoBrightnessValueForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 51
    const/high16 v0, -0x80000000

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0

    .line 52
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist getAutoBrightnessValueForUserWithDef(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 40
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0

    .line 41
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist putAutoBrightnessValueForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I

    .line 62
    return p4
.end method

.method public blacklist redirectUserIfNeeded(ILjava/lang/String;)I
    .locals 0
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 66
    return p1
.end method
