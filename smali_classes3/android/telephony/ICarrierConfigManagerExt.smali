.class public interface abstract Landroid/telephony/ICarrierConfigManagerExt;
.super Ljava/lang/Object;
.source "ICarrierConfigManagerExt.java"


# static fields
.field public static final whitelist KEY_CALL_PRESENTATION_MAPPING_STRING_ARRAY:Ljava/lang/String; = "call_presentation_mapping_string_array"

.field public static final whitelist KEY_CARRIER_CUSTOMIZED_ESM_CONFIG:Ljava/lang/String; = "carrier_oplus_esm_reject"

.field public static final whitelist KEY_CARRIER_CUSTOMIZED_NRICON_CONFIG:Ljava/lang/String; = "carrier_customized_nricon_config"

.field public static final whitelist KEY_CARRIER_SHOW_IMS_CONFERENCE_LIST_WITHOUT_CEP_CONFIG:Ljava/lang/String; = "carrier_show_ims_conference_list_without_cep_config"

.field public static final whitelist KEY_CARRIER_SUPPORT_BWP:Ljava/lang/String; = "carrier_support_bwp"

.field public static final whitelist KEY_CARRIER_SUPPORT_NRCA:Ljava/lang/String; = "carrier_support_nrca"

.field public static final whitelist KEY_DPM_FD_DELAY_IDLE_TIME:Ljava/lang/String; = "dpmFdDelayIdleTime"

.field public static final whitelist KEY_DPM_FD_SCREEN_OFF_IDLE_TIME:Ljava/lang/String; = "dpmFdmScreenOffIdleTime"

.field public static final whitelist KEY_DPM_FD_SCREEN_ON_IDLE_TIME:Ljava/lang/String; = "dpmFdScreenOnIdleTime"

.field public static final whitelist KEY_DPM_FD_TETHERING_IDLE_TIME:Ljava/lang/String; = "dpmFdTetheringIdleTime"

.field public static final whitelist KEY_ERLVT_MT_OFF:Ljava/lang/String; = "config_oplus_erlvt_mt_off_bool"

.field public static final whitelist KEY_FORCE_BUILD_MMS_OVER_WIFI_APNS:Ljava/lang/String; = "force_build_mms_over_wifi_apns"

.field public static final whitelist KEY_FR1_SIG_INT_ARRAY:Ljava/lang/String; = "carrier_volte_fr1_int_array"

.field public static final whitelist KEY_FR1_SWITCH_BOOL:Ljava/lang/String; = "carrier_volte_fr1_bool"

.field public static final whitelist KEY_SUPPORT_1X_INCALL_MMI:Ljava/lang/String; = "support_1x_incall_mmi"

.field public static final whitelist KEY_WFC_DISABLE_NRSA_CONFIG:Ljava/lang/String; = "wfc_disable_nrsa_config"

.field public static final whitelist OPLUS_DUAL_LTE_AVAILABLE:Ljava/lang/String; = "config_oplus_dual_lte_available_bool"


# virtual methods
.method public whitelist putDefault(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "defaults"    # Landroid/os/PersistableBundle;

    .line 61
    return-void
.end method
