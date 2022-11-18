.class public Landroid/telephony/CarrierConfigManager$OpportunisticNetwork;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpportunisticNetwork"
.end annotation


# static fields
.field public static final blacklist KEY_5G_BACKOFF_TIME_LONG:Ljava/lang/String; = "opportunistic.5g_backoff_time_long"

.field public static final blacklist KEY_5G_DATA_SWITCH_EXIT_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic.5g_data_switch_exit_hysteresis_time_long"

.field public static final blacklist KEY_5G_DATA_SWITCH_EXIT_HYSTERESIS_TIME_LONG_BUNDLE:Ljava/lang/String; = "opportunistic.5g_data_switch_exit_hysteresis_time_long_bundle"

.field public static final blacklist KEY_5G_DATA_SWITCH_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic.5g_data_switch_hysteresis_time_long"

.field public static final blacklist KEY_5G_DATA_SWITCH_HYSTERESIS_TIME_LONG_BUNDLE:Ljava/lang/String; = "opportunistic.5g_data_switch_hysteresis_time_long_bundle"

.field public static final blacklist KEY_5G_MAX_BACKOFF_TIME_LONG:Ljava/lang/String; = "opportunistic.5g_max_backoff_time_long"

.field public static final blacklist KEY_5G_PING_PONG_TIME_LONG:Ljava/lang/String; = "opportunistic.5g_ping_pong_time_long"

.field public static final blacklist KEY_ENTRY_THRESHOLD_SS_RSRP_INT:Ljava/lang/String; = "opportunistic.entry_threshold_ss_rsrp_int"

.field public static final blacklist KEY_ENTRY_THRESHOLD_SS_RSRP_INT_BUNDLE:Ljava/lang/String; = "opportunistic.entry_threshold_ss_rsrp_int_bundle"

.field public static final blacklist KEY_ENTRY_THRESHOLD_SS_RSRQ_DOUBLE:Ljava/lang/String; = "opportunistic.entry_threshold_ss_rsrq_double"

.field public static final blacklist KEY_ENTRY_THRESHOLD_SS_RSRQ_DOUBLE_BUNDLE:Ljava/lang/String; = "opportunistic.entry_threshold_ss_rsrq_double_bundle"

.field public static final blacklist KEY_EXIT_THRESHOLD_SS_RSRP_INT:Ljava/lang/String; = "opportunistic.exit_threshold_ss_rsrp_int"

.field public static final blacklist KEY_EXIT_THRESHOLD_SS_RSRP_INT_BUNDLE:Ljava/lang/String; = "opportunistic.exit_threshold_ss_rsrp_int_bundle"

.field public static final blacklist KEY_EXIT_THRESHOLD_SS_RSRQ_DOUBLE:Ljava/lang/String; = "opportunistic.exit_threshold_ss_rsrq_double"

.field public static final blacklist KEY_EXIT_THRESHOLD_SS_RSRQ_DOUBLE_BUNDLE:Ljava/lang/String; = "opportunistic.exit_threshold_ss_rsrq_double_bundle"

.field public static final blacklist PREFIX:Ljava/lang/String; = "opportunistic."


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$OpportunisticNetwork;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 4103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .locals 6

    .line 4305
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 4307
    .local v0, "defaults":Landroid/os/PersistableBundle;
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.entry_threshold_ss_rsrp_int"

    const/16 v3, -0x6f

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 4308
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string/jumbo v3, "opportunistic.entry_threshold_ss_rsrp_int_bundle"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4311
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.entry_threshold_ss_rsrq_double"

    const-wide v3, -0x3fcd800000000000L    # -18.5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 4312
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string/jumbo v5, "opportunistic.entry_threshold_ss_rsrq_double_bundle"

    invoke-virtual {v1, v5, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4316
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.exit_threshold_ss_rsrp_int"

    const/16 v5, -0x78

    invoke-virtual {v1, v2, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 4317
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string/jumbo v5, "opportunistic.exit_threshold_ss_rsrp_int_bundle"

    invoke-virtual {v1, v5, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4320
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.exit_threshold_ss_rsrq_double"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 4321
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string/jumbo v3, "opportunistic.exit_threshold_ss_rsrq_double_bundle"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4325
    const-string/jumbo v1, "opportunistic.5g_data_switch_hysteresis_time_long"

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 4326
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string/jumbo v4, "opportunistic.5g_data_switch_hysteresis_time_long_bundle"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4330
    const-string/jumbo v1, "opportunistic.5g_data_switch_exit_hysteresis_time_long"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 4331
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string/jumbo v2, "opportunistic.5g_data_switch_exit_hysteresis_time_long_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4335
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.5g_backoff_time_long"

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 4337
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.5g_max_backoff_time_long"

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 4339
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "opportunistic.5g_ping_pong_time_long"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 4340
    return-object v0
.end method
