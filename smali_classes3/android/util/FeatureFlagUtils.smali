.class public Landroid/util/FeatureFlagUtils;
.super Ljava/lang/Object;
.source "FeatureFlagUtils.java"


# static fields
.field private static final greylist-max-o DEFAULT_FLAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FFLAG_OVERRIDE_PREFIX:Ljava/lang/String; = "sys.fflag.override."

.field public static final greylist-max-o FFLAG_PREFIX:Ljava/lang/String; = "sys.fflag."

.field public static final blacklist HEARING_AID_SETTINGS:Ljava/lang/String; = "settings_bluetooth_hearing_aid"

.field private static final blacklist PERSISTENT_FLAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PERSIST_PREFIX:Ljava/lang/String; = "persist.sys.fflag.override."

.field public static final blacklist SETTINGS_APP_ALLOW_DARK_THEME_ACTIVATION_AT_BEDTIME:Ljava/lang/String; = "settings_app_allow_dark_theme_activation_at_bedtime"

.field public static final blacklist SETTINGS_APP_LANGUAGE_SELECTION:Ljava/lang/String; = "settings_app_language_selection"

.field public static final blacklist SETTINGS_APP_LOCALE_OPT_IN_ENABLED:Ljava/lang/String; = "settings_app_locale_opt_in_enabled"

.field public static final blacklist SETTINGS_DO_NOT_RESTORE_PRESERVED:Ljava/lang/String; = "settings_do_not_restore_preserved"

.field public static final blacklist SETTINGS_ENABLE_MONITOR_PHANTOM_PROCS:Ljava/lang/String; = "settings_enable_monitor_phantom_procs"

.field public static final blacklist SETTINGS_ENABLE_SECURITY_HUB:Ljava/lang/String; = "settings_enable_security_hub"

.field public static final blacklist SETTINGS_HIDE_SECOND_LAYER_PAGE_NAVIGATE_UP_BUTTON_IN_TWO_PANE:Ljava/lang/String; = "settings_hide_second_layer_page_navigate_up_button_in_two_pane"

.field public static final blacklist SETTINGS_PROVIDER_MODEL:Ljava/lang/String; = "settings_provider_model"

.field public static final blacklist SETTINGS_SUPPORT_LARGE_SCREEN:Ljava/lang/String; = "settings_support_large_screen"

.field public static final blacklist SETTINGS_USE_NEW_BACKUP_ELIGIBILITY_RULES:Ljava/lang/String; = "settings_use_new_backup_eligibility_rules"

.field public static final blacklist SETTINGS_WIFITRACKER2:Ljava/lang/String; = "settings_wifitracker2"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    .line 92
    const-string/jumbo v1, "settings_audio_switcher"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "settings_systemui_theme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "settings_bluetooth_hearing_aid"

    const-string v3, "false"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "settings_wifi_details_datausage_header"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "settings_skip_direction_mutable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "settings_wifitracker2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "settings_controller_loading_enhancement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v1, "settings_conditionals"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "settings_do_not_restore_preserved"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v1, "settings_tether_all_in_one"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "settings_contextual_home"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "settings_provider_model"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v3, "settings_use_new_backup_eligibility_rules"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v3, "settings_enable_security_hub"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v3, "settings_support_large_screen"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v4, "settings_search_always_expand"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v4, "settings_app_language_selection"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v5, "settings_app_locale_opt_in_enabled"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v6, "settings_enable_monitor_phantom_procs"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v7, "settings_app_allow_dark_theme_activation_at_bedtime"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v8, "settings_hide_second_layer_page_navigate_up_button_in_two_pane"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/FeatureFlagUtils;->PERSISTENT_FLAGS:Ljava/util/Set;

    .line 121
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getAllFeatureFlags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    return-object v0
.end method

.method private static blacklist getSystemPropertyPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;

    .line 176
    sget-object v0, Landroid/util/FeatureFlagUtils;->PERSISTENT_FLAGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.fflag.override."

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sys.fflag.override."

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .line 142
    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 151
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/FeatureFlagUtils;->getSystemPropertyPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 156
    :cond_1
    invoke-static {}, Landroid/util/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/FeatureFlagUtils;->getSystemPropertyPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz p2, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    .line 164
    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
