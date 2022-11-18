.class public interface abstract Landroid/media/IRingtoneManagerExt;
.super Ljava/lang/Object;
.source "IRingtoneManagerExt.java"


# static fields
.field public static final blacklist CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_sound"

.field public static final blacklist NOTIFICATION_SOUND_SIM2:Ljava/lang/String; = "notification_sim2"

.field public static final blacklist OPLUS_SMS_NOTIFICATION_SOUND:Ljava/lang/String; = "oplus_customize_sms_notification_sound"

.field public static final blacklist RINGTONE_CACHE_PATH:Ljava/lang/String; = "ringtone_cache_path"

.field public static final blacklist RINGTONE_CACHE_PATH_SIM2:Ljava/lang/String; = "ringtone_cache_path_sim2"

.field public static final blacklist RINGTONE_CACHE_SIM2:Ljava/lang/String; = "ringtone_cache_sim2"

.field public static final blacklist RINGTONE_CACHE_TITLE:Ljava/lang/String; = "ringtone_cache_title"

.field public static final blacklist RINGTONE_CACHE_TITLE_SIM2:Ljava/lang/String; = "ringtone_cache_title_sim2"

.field public static final blacklist RINGTONE_SIM2:Ljava/lang/String; = "ringtone_sim2"

.field public static final blacklist TYPE_ALARM:I = 0x4

.field public static final blacklist TYPE_NOTIFICATION:I = 0x2

.field public static final blacklist TYPE_NOTIFICATION_CALENDAR:I = 0x20

.field public static final blacklist TYPE_NOTIFICATION_SIM2:I = 0x10

.field public static final blacklist TYPE_NOTIFICATION_SMS:I = 0x8

.field public static final blacklist TYPE_RINGTONE:I = 0x1

.field public static final blacklist TYPE_RINGTONE_SIM2:I = 0x40


# virtual methods
.method public blacklist clearDefaultRingtonesHistory(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    return-void
.end method

.method public abstract blacklist getRingtoneTitlePath(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist hookforMediaProviderCustomized(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    return-void
.end method

.method public blacklist isComponentVersionChange(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCustomDefaultRingtoneNeeded(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist putSettingRingCacheTitleAndPath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist setOplusDefaultRingtoneUriIfNotSet(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "whichAudio"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public blacklist setRingtoneUriAgainIfNeeded(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "baseuri"    # Landroid/net/Uri;
    .param p4, "type"    # I

    .line 63
    return-void
.end method

.method public blacklist setRingtonesUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .line 60
    return-void
.end method

.method public blacklist updateRingtoneUriIfNeeded(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "setting"    # Ljava/lang/String;

    .line 68
    return-void
.end method
