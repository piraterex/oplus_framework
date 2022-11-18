.class public final Landroid/provider/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DeviceConfig$Properties;,
        Landroid/provider/DeviceConfig$BadConfigException;,
        Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist NAMESPACE_ACTIVITY_MANAGER:Ljava/lang/String; = "activity_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ACTIVITY_MANAGER_COMPONENT_ALIAS:Ljava/lang/String; = "activity_manager_ca"

.field public static final whitelist NAMESPACE_ACTIVITY_MANAGER_NATIVE_BOOT:Ljava/lang/String; = "activity_manager_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ADSERVICES:Ljava/lang/String; = "adservices"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ALARM_MANAGER:Ljava/lang/String; = "alarm_manager"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_AMBIENT_CONTEXT_MANAGER_SERVICE:Ljava/lang/String; = "ambient_context_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ANDROID:Ljava/lang/String; = "android"

.field public static final whitelist NAMESPACE_APPSEARCH:Ljava/lang/String; = "appsearch"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_APP_COMPAT:Ljava/lang/String; = "app_compat"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_APP_COMPAT_OVERRIDES:Ljava/lang/String; = "app_compat_overrides"

.field public static final whitelist NAMESPACE_APP_HIBERNATION:Ljava/lang/String; = "app_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_APP_STANDBY:Ljava/lang/String; = "app_standby"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ATTENTION_MANAGER_SERVICE:Ljava/lang/String; = "attention_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_AUTOFILL:Ljava/lang/String; = "autofill"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BIOMETRICS:Ljava/lang/String; = "biometrics"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BLOBSTORE:Ljava/lang/String; = "blobstore"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CAPTIVEPORTALLOGIN:Ljava/lang/String; = "captive_portal_login"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CLIPBOARD:Ljava/lang/String; = "clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"

.field public static final whitelist NAMESPACE_CONNECTIVITY:Ljava/lang/String; = "connectivity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_CONNECTIVITY_THERMAL_POWER_MANAGER:Ljava/lang/String; = "connectivity_thermal_power_manager"

.field public static final blacklist NAMESPACE_CONSTRAIN_DISPLAY_APIS:Ljava/lang/String; = "constrain_display_apis"

.field public static final blacklist NAMESPACE_CONTACTS_PROVIDER:Ljava/lang/String; = "contacts_provider"

.field public static final whitelist NAMESPACE_CONTENT_CAPTURE:Ljava/lang/String; = "content_capture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_DEVICE_IDLE:Ljava/lang/String; = "device_idle"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_DEVICE_POLICY_MANAGER:Ljava/lang/String; = "device_policy_manager"

.field public static final whitelist NAMESPACE_DEX_BOOT:Ljava/lang/String; = "dex_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_DISPLAY_MANAGER:Ljava/lang/String; = "display_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_GAME_DRIVER:Ljava/lang/String; = "game_driver"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_GAME_OVERLAY:Ljava/lang/String; = "game_overlay"

.field public static final whitelist NAMESPACE_INPUT_NATIVE_BOOT:Ljava/lang/String; = "input_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_INTELLIGENCE_ATTENTION:Ljava/lang/String; = "intelligence_attention"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_INTELLIGENCE_CONTENT_SUGGESTIONS:Ljava/lang/String; = "intelligence_content_suggestions"

.field public static final blacklist NAMESPACE_INTERACTION_JANK_MONITOR:Ljava/lang/String; = "interaction_jank_monitor"

.field public static final blacklist NAMESPACE_JOB_SCHEDULER:Ljava/lang/String; = "jobscheduler"

.field public static final blacklist NAMESPACE_LATENCY_TRACKER:Ljava/lang/String; = "latency_tracker"

.field public static final whitelist NAMESPACE_LMKD_NATIVE:Ljava/lang/String; = "lmkd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_LOCATION:Ljava/lang/String; = "location"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_MEDIA:Ljava/lang/String; = "media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_MEDIA_NATIVE:Ljava/lang/String; = "media_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_MGLRU_NATIVE:Ljava/lang/String; = "mglru_native"

.field public static final whitelist NAMESPACE_NETD_NATIVE:Ljava/lang/String; = "netd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_NNAPI_NATIVE:Ljava/lang/String; = "nnapi_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ON_DEVICE_PERSONALIZATION:Ljava/lang/String; = "on_device_personalization"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_OTA:Ljava/lang/String; = "ota"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PACKAGE_MANAGER_SERVICE:Ljava/lang/String; = "package_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PERMISSIONS:Ljava/lang/String; = "permissions"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PRIVACY:Ljava/lang/String; = "privacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PROFCOLLECT_NATIVE_BOOT:Ljava/lang/String; = "profcollect_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_REBOOT_READINESS:Ljava/lang/String; = "reboot_readiness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ROLLBACK:Ljava/lang/String; = "rollback"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ROLLBACK_BOOT:Ljava/lang/String; = "rollback_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ROTATION_RESOLVER:Ljava/lang/String; = "rotation_resolver"

.field public static final whitelist NAMESPACE_RUNTIME:Ljava/lang/String; = "runtime"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_RUNTIME_NATIVE:Ljava/lang/String; = "runtime_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_RUNTIME_NATIVE_BOOT:Ljava/lang/String; = "runtime_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SCHEDULER:Ljava/lang/String; = "scheduler"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SDK_SANDBOX:Ljava/lang/String; = "sdk_sandbox"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_SELECTION_TOOLBAR:Ljava/lang/String; = "selection_toolbar"

.field public static final blacklist NAMESPACE_SETTINGS_STATS:Ljava/lang/String; = "settings_stats"

.field public static final blacklist NAMESPACE_SETTINGS_UI:Ljava/lang/String; = "settings_ui"

.field public static final whitelist NAMESPACE_STATSD_JAVA:Ljava/lang/String; = "statsd_java"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_JAVA_BOOT:Ljava/lang/String; = "statsd_java_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_NATIVE:Ljava/lang/String; = "statsd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_NATIVE_BOOT:Ljava/lang/String; = "statsd_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STORAGE:Ljava/lang/String; = "storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STORAGE_NATIVE_BOOT:Ljava/lang/String; = "storage_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SURFACE_FLINGER_NATIVE_BOOT:Ljava/lang/String; = "surface_flinger_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SWCODEC_NATIVE:Ljava/lang/String; = "swcodec_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SYSTEMUI:Ljava/lang/String; = "systemui"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SYSTEM_TIME:Ljava/lang/String; = "system_time"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_TARE:Ljava/lang/String; = "tare"

.field public static final whitelist NAMESPACE_TELEPHONY:Ljava/lang/String; = "telephony"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_TETHERING:Ljava/lang/String; = "tethering"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_TEXTCLASSIFIER:Ljava/lang/String; = "textclassifier"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_UWB:Ljava/lang/String; = "uwb"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_VENDOR_SYSTEM_NATIVE:Ljava/lang/String; = "vendor_system_native"

.field public static final blacklist NAMESPACE_VIRTUALIZATION_FRAMEWORK_NATIVE:Ljava/lang/String; = "virtualization_framework_native"

.field public static final blacklist NAMESPACE_VOICE_INTERACTION:Ljava/lang/String; = "voice_interaction"

.field public static final blacklist NAMESPACE_WIDGET:Ljava/lang/String; = "widget"

.field public static final blacklist NAMESPACE_WINDOW_MANAGER:Ljava/lang/String; = "window_manager"

.field public static final whitelist NAMESPACE_WINDOW_MANAGER_NATIVE_BOOT:Ljava/lang/String; = "window_manager_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist PUBLIC_NAMESPACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceConfig"

.field private static blacklist sListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/DeviceConfig$OnPropertiesChangedListener;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sNamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/database/ContentObserver;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleChange(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Landroid/provider/DeviceConfig;->handleChange(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 65
    const-string v0, "content://settings/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    .line 630
    const-string/jumbo v1, "textclassifier"

    const-string/jumbo v2, "runtime"

    const-string/jumbo v3, "statsd_java"

    const-string/jumbo v4, "statsd_java_boot"

    const-string/jumbo v5, "selection_toolbar"

    const-string v6, "autofill"

    const-string v7, "device_policy_manager"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    .line 757
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    .line 759
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    return-void
.end method

.method public static whitelist addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onPropertiesChangedListener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1075
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1077
    sget-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_0
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1079
    .local v1, "oldNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/Executor;>;"
    if-nez v1, :cond_0

    .line 1081
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    invoke-static {p0}, Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1088
    :cond_1
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/DeviceConfig;->decrementNamespace(Ljava/lang/String;)V

    .line 1089
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-static {p0}, Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V

    .line 1092
    .end local v1    # "oldNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/Executor;>;"
    :goto_0
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;

    .line 1116
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decrementNamespace(Ljava/lang/String;)V
    .locals 6
    .param p0, "namespace"    # Ljava/lang/String;

    .line 1158
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1160
    .local v0, "namespaceCount":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/database/ContentObserver;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 1162
    return-void

    .line 1163
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1164
    sget-object v1, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/database/ContentObserver;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1167
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/database/ContentObserver;

    .line 1168
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1169
    sget-object v1, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :goto_0
    return-void
.end method

.method public static whitelist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 989
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 990
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->deleteString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/String;

    .line 1209
    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    sget-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: reading from settings requires:android.permission.READ_DEVICE_CONFIG"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 846
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static whitelist getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 914
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 916
    return p2

    .line 919
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing float failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return p2
.end method

.method public static whitelist getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 863
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 865
    return p2

    .line 868
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing integer failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return p2
.end method

.method public static whitelist getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 888
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 890
    return-wide p2

    .line 893
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing long failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-wide p2
.end method

.method public static varargs whitelist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .locals 3
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "names"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 809
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 810
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/provider/DeviceConfig$Properties;

    .line 811
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p0, v2}, Landroid/provider/Settings$Config;->getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 810
    return-object v1
.end method

.method public static whitelist getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 783
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPublicNamespaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1223
    sget-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    return-object v0
.end method

.method public static whitelist getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 828
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public static blacklist getSyncDisabledMode()I
    .locals 2

    .line 1051
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1052
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Settings$Config;->getSyncDisabledMode(Landroid/content/ContentResolver;)I

    move-result v1

    return v1
.end method

.method private static blacklist handleChange(Landroid/net/Uri;)V
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1174
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1177
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1178
    .local v1, "namespace":Ljava/lang/String;
    new-instance v2, Landroid/provider/DeviceConfig$Properties$Builder;

    invoke-direct {v2, v1}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v2, "propBuilder":Landroid/provider/DeviceConfig$Properties$Builder;
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    .line 1181
    .local v3, "allProperties":Landroid/provider/DeviceConfig$Properties;
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1182
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1183
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties$Builder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    nop

    .end local v5    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1189
    .end local v3    # "allProperties":Landroid/provider/DeviceConfig$Properties;
    .end local v4    # "i":I
    :cond_0
    nop

    .line 1190
    invoke-virtual {v2}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    .line 1192
    .local v3, "properties":Landroid/provider/DeviceConfig$Properties;
    sget-object v4, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1193
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_1
    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1194
    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1195
    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1196
    .local v6, "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    sget-object v7, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6, v3}, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;-><init>(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1193
    .end local v6    # "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1201
    .end local v5    # "i":I
    :cond_2
    monitor-exit v4

    .line 1202
    return-void

    .line 1201
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1185
    .end local v3    # "properties":Landroid/provider/DeviceConfig$Properties;
    :catch_0
    move-exception v3

    .line 1187
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "DeviceConfig"

    const-string v5, "OnPropertyChangedListener update failed: permission violation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void
.end method

.method private static blacklist incrementNamespace(Ljava/lang/String;)V
    .locals 6
    .param p0, "namespace"    # Ljava/lang/String;

    .line 1129
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1131
    .local v0, "namespaceCount":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/database/ContentObserver;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1132
    sget-object v2, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/database/ContentObserver;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1135
    :cond_0
    new-instance v2, Landroid/provider/DeviceConfig$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/provider/DeviceConfig$1;-><init>(Landroid/os/Handler;)V

    .line 1143
    .local v2, "contentObserver":Landroid/database/ContentObserver;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1144
    invoke-static {p0}, Landroid/provider/DeviceConfig;->createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1145
    sget-object v3, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .end local v2    # "contentObserver":Landroid/database/ContentObserver;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$handleChange$0(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p0, "listener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1197
    invoke-interface {p0, p1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1198
    return-void
.end method

.method public static whitelist removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 2
    .param p0, "onPropertiesChangedListener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1106
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/DeviceConfig;->decrementNamespace(Ljava/lang/String;)V

    .line 1110
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    :cond_0
    monitor-exit v0

    .line 1113
    return-void

    .line 1112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist resetToDefaults(ILjava/lang/String;)V
    .locals 1
    .param p0, "resetMode"    # I
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1021
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1022
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->resetToDefaults(Landroid/content/ContentResolver;ILjava/lang/String;)V

    .line 1023
    return-void
.end method

.method public static whitelist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .locals 3
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 972
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 973
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/provider/DeviceConfig$Properties;->-$$Nest$fgetmMap(Landroid/provider/DeviceConfig$Properties;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Config;->setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method public static whitelist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDefault"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 950
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 951
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/provider/Settings$Config;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static blacklist setSyncDisabledMode(I)V
    .locals 1
    .param p0, "syncDisabledMode"    # I

    .line 1039
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1040
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0}, Landroid/provider/Settings$Config;->setSyncDisabledMode(Landroid/content/ContentResolver;I)V

    .line 1041
    return-void
.end method
