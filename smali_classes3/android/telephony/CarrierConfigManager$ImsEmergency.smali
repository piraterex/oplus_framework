.class public final Landroid/telephony/CarrierConfigManager$ImsEmergency;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsEmergency"
.end annotation


# static fields
.field public static final whitelist KEY_EMERGENCY_CALLBACK_MODE_SUPPORTED_BOOL:Ljava/lang/String; = "imsemergency.emergency_callback_mode_supported_bool"

.field public static final whitelist KEY_EMERGENCY_OVER_IMS_SUPPORTED_RATS_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_over_ims_supported_rats_int_array"

.field public static final whitelist KEY_EMERGENCY_QOS_PRECONDITION_SUPPORTED_BOOL:Ljava/lang/String; = "imsemergency.emergency_qos_precondition_supported_bool"

.field public static final whitelist KEY_EMERGENCY_REGISTRATION_TIMER_MILLIS_INT:Ljava/lang/String; = "imsemergency.emergency_registration_timer_millis_int"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imsemergency."

.field public static final whitelist KEY_REFRESH_GEOLOCATION_TIMEOUT_MILLIS_INT:Ljava/lang/String; = "imsemergency.refresh_geolocation_timeout_millis_int"

.field public static final whitelist KEY_RETRY_EMERGENCY_ON_IMS_PDN_BOOL:Ljava/lang/String; = "imsemergency.retry_emergency_on_ims_pdn_bool"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsEmergency;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 7068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .locals 3

    .line 7134
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 7135
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imsemergency.retry_emergency_on_ims_pdn_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7136
    const-string/jumbo v1, "imsemergency.emergency_callback_mode_supported_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7137
    const-string/jumbo v1, "imsemergency.emergency_qos_precondition_supported_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7139
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string/jumbo v2, "imsemergency.emergency_over_ims_supported_rats_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 7146
    const-string/jumbo v1, "imsemergency.emergency_registration_timer_millis_int"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7147
    const-string/jumbo v1, "imsemergency.refresh_geolocation_timeout_millis_int"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7149
    return-object v0

    :array_0
    .array-data 4
        0x3
        0x5
    .end array-data
.end method
