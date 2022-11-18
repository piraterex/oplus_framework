.class public final Landroid/telephony/CarrierConfigManager$Ims;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ims"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$Ims$MediaInactivityReason;,
        Landroid/telephony/CarrierConfigManager$Ims$NetworkType;,
        Landroid/telephony/CarrierConfigManager$Ims$GeolocationPidfAllowedType;,
        Landroid/telephony/CarrierConfigManager$Ims$IpsecEncryptionAlgorithmType;,
        Landroid/telephony/CarrierConfigManager$Ims$IpsecAuthenticationAlgorithmType;,
        Landroid/telephony/CarrierConfigManager$Ims$PreferredTransportType;,
        Landroid/telephony/CarrierConfigManager$Ims$RequestUriFormatType;
    }
.end annotation


# static fields
.field public static final whitelist E911_RTCP_INACTIVITY_ON_CONNECTED:I = 0x3

.field public static final whitelist E911_RTP_INACTIVITY_ON_CONNECTED:I = 0x4

.field public static final whitelist GEOLOCATION_PIDF_FOR_EMERGENCY_ON_CELLULAR:I = 0x4

.field public static final whitelist GEOLOCATION_PIDF_FOR_EMERGENCY_ON_WIFI:I = 0x2

.field public static final whitelist GEOLOCATION_PIDF_FOR_NON_EMERGENCY_ON_CELLULAR:I = 0x3

.field public static final whitelist GEOLOCATION_PIDF_FOR_NON_EMERGENCY_ON_WIFI:I = 0x1

.field public static final whitelist IPSEC_AUTHENTICATION_ALGORITHM_HMAC_MD5:I = 0x0

.field public static final whitelist IPSEC_AUTHENTICATION_ALGORITHM_HMAC_SHA1:I = 0x1

.field public static final whitelist IPSEC_ENCRYPTION_ALGORITHM_AES_CBC:I = 0x2

.field public static final whitelist IPSEC_ENCRYPTION_ALGORITHM_DES_EDE3_CBC:I = 0x1

.field public static final whitelist IPSEC_ENCRYPTION_ALGORITHM_NULL:I = 0x0

.field public static final whitelist KEY_CAPABILITY_TYPE_CALL_COMPOSER_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_call_composer_int_array"

.field public static final whitelist KEY_CAPABILITY_TYPE_OPTIONS_UCE_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_options_uce_int_array"

.field public static final whitelist KEY_CAPABILITY_TYPE_PRESENCE_UCE_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_presence_uce_int_array"

.field public static final whitelist KEY_CAPABILITY_TYPE_SMS_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_sms_int_array"

.field public static final whitelist KEY_CAPABILITY_TYPE_UT_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_ut_int_array"

.field public static final whitelist KEY_CAPABILITY_TYPE_VIDEO_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_video_int_array"

.field public static final whitelist KEY_CAPABILITY_TYPE_VOICE_INT_ARRAY:Ljava/lang/String; = "ims.capability_type_voice_int_array"

.field public static final whitelist KEY_ENABLE_PRESENCE_CAPABILITY_EXCHANGE_BOOL:Ljava/lang/String; = "ims.enable_presence_capability_exchange_bool"

.field public static final whitelist KEY_ENABLE_PRESENCE_GROUP_SUBSCRIBE_BOOL:Ljava/lang/String; = "ims.enable_presence_group_subscribe_bool"

.field public static final whitelist KEY_ENABLE_PRESENCE_PUBLISH_BOOL:Ljava/lang/String; = "ims.enable_presence_publish_bool"

.field public static final whitelist KEY_GEOLOCATION_PIDF_IN_SIP_INVITE_SUPPORT_INT_ARRAY:Ljava/lang/String; = "ims.geolocation_pidf_in_sip_invite_support_int_array"

.field public static final whitelist KEY_GEOLOCATION_PIDF_IN_SIP_REGISTER_SUPPORT_INT_ARRAY:Ljava/lang/String; = "ims.geolocation_pidf_in_sip_register_support_int_array"

.field public static final whitelist KEY_GRUU_ENABLED_BOOL:Ljava/lang/String; = "ims.gruu_enabled_bool"

.field public static final whitelist KEY_IMS_PDN_ENABLED_IN_NO_VOPS_SUPPORT_INT_ARRAY:Ljava/lang/String; = "ims.ims_pdn_enabled_in_no_vops_support_int_array"

.field public static final whitelist KEY_IMS_SINGLE_REGISTRATION_REQUIRED_BOOL:Ljava/lang/String; = "ims.ims_single_registration_required_bool"

.field public static final whitelist KEY_IMS_USER_AGENT_STRING:Ljava/lang/String; = "ims.ims_user_agent_string"

.field public static final whitelist KEY_IPSEC_AUTHENTICATION_ALGORITHMS_INT_ARRAY:Ljava/lang/String; = "ims.ipsec_authentication_algorithms_int_array"

.field public static final whitelist KEY_IPSEC_ENCRYPTION_ALGORITHMS_INT_ARRAY:Ljava/lang/String; = "ims.ipsec_encryption_algorithms_int_array"

.field public static final whitelist KEY_IPV4_SIP_MTU_SIZE_CELLULAR_INT:Ljava/lang/String; = "ims.ipv4_sip_mtu_size_cellular_int"

.field public static final whitelist KEY_IPV6_SIP_MTU_SIZE_CELLULAR_INT:Ljava/lang/String; = "ims.ipv6_sip_mtu_size_cellular_int"

.field public static final whitelist KEY_KEEP_PDN_UP_IN_NO_VOPS_BOOL:Ljava/lang/String; = "ims.keep_pdn_up_in_no_vops_bool"

.field public static final whitelist KEY_MMTEL_REQUIRES_PROVISIONING_BUNDLE:Ljava/lang/String; = "ims.mmtel_requires_provisioning_bundle"

.field public static final whitelist KEY_NON_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC_INT:Ljava/lang/String; = "ims.non_rcs_capabilities_cache_expiration_sec_int"

.field public static final whitelist KEY_PHONE_CONTEXT_DOMAIN_NAME_STRING:Ljava/lang/String; = "ims.phone_context_domain_name_string"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "ims."

.field public static final blacklist KEY_PUBLISH_SERVICE_DESC_FEATURE_TAG_MAP_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "ims.publish_service_desc_feature_tag_map_override_string_array"

.field public static final whitelist KEY_RCS_BULK_CAPABILITY_EXCHANGE_BOOL:Ljava/lang/String; = "ims.rcs_bulk_capability_exchange_bool"

.field public static final whitelist KEY_RCS_FEATURE_TAG_ALLOWED_STRING_ARRAY:Ljava/lang/String; = "ims.rcs_feature_tag_allowed_string_array"

.field public static final blacklist KEY_RCS_REQUEST_FORBIDDEN_BY_SIP_489_BOOL:Ljava/lang/String; = "ims.rcs_request_forbidden_by_sip_489_bool"

.field public static final blacklist KEY_RCS_REQUEST_RETRY_INTERVAL_MILLIS_LONG:Ljava/lang/String; = "ims.rcs_request_retry_interval_millis_long"

.field public static final whitelist KEY_RCS_REQUIRES_PROVISIONING_BUNDLE:Ljava/lang/String; = "ims.rcs_requires_provisioning_bundle"

.field public static final whitelist KEY_REGISTRATION_EVENT_PACKAGE_SUPPORTED_BOOL:Ljava/lang/String; = "ims.registration_event_package_supported_bool"

.field public static final whitelist KEY_REGISTRATION_EXPIRY_TIMER_SEC_INT:Ljava/lang/String; = "ims.registration_expiry_timer_sec_int"

.field public static final whitelist KEY_REGISTRATION_RETRY_BASE_TIMER_MILLIS_INT:Ljava/lang/String; = "ims.registration_retry_base_timer_millis_int"

.field public static final whitelist KEY_REGISTRATION_RETRY_MAX_TIMER_MILLIS_INT:Ljava/lang/String; = "ims.registration_retry_max_timer_millis_int"

.field public static final whitelist KEY_REGISTRATION_SUBSCRIBE_EXPIRY_TIMER_SEC_INT:Ljava/lang/String; = "ims.registration_subscribe_expiry_timer_sec_int"

.field public static final whitelist KEY_REQUEST_URI_TYPE_INT:Ljava/lang/String; = "ims.request_uri_type_int"

.field public static final whitelist KEY_SIP_OVER_IPSEC_ENABLED_BOOL:Ljava/lang/String; = "ims.sip_over_ipsec_enabled_bool"

.field public static final whitelist KEY_SIP_PREFERRED_TRANSPORT_INT:Ljava/lang/String; = "ims.sip_preferred_transport_int"

.field public static final whitelist KEY_SIP_SERVER_PORT_NUMBER_INT:Ljava/lang/String; = "ims.sip_server_port_number_int"

.field public static final whitelist KEY_SIP_TIMER_B_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_b_millis_int"

.field public static final whitelist KEY_SIP_TIMER_C_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_c_millis_int"

.field public static final whitelist KEY_SIP_TIMER_D_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_d_millis_int"

.field public static final whitelist KEY_SIP_TIMER_F_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_f_millis_int"

.field public static final whitelist KEY_SIP_TIMER_H_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_h_millis_int"

.field public static final whitelist KEY_SIP_TIMER_J_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_j_millis_int"

.field public static final whitelist KEY_SIP_TIMER_T1_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_t1_millis_int"

.field public static final whitelist KEY_SIP_TIMER_T2_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_t2_millis_int"

.field public static final whitelist KEY_SIP_TIMER_T4_MILLIS_INT:Ljava/lang/String; = "ims.sip_timer_t4_millis_int"

.field public static final whitelist KEY_SUPPORTED_RATS_INT_ARRAY:Ljava/lang/String; = "ims.supported_rats_int_array"

.field public static final whitelist KEY_USE_SIP_URI_FOR_PRESENCE_SUBSCRIBE_BOOL:Ljava/lang/String; = "ims.use_sip_uri_for_presence_subscribe_bool"

.field public static final blacklist KEY_USE_TEL_URI_FOR_PIDF_XML_BOOL:Ljava/lang/String; = "ims.use_tel_uri_for_pidf_xml"

.field public static final whitelist KEY_WIFI_OFF_DEFERRING_TIME_MILLIS_INT:Ljava/lang/String; = "ims.wifi_off_deferring_time_millis_int"

.field public static final whitelist NETWORK_TYPE_HOME:I = 0x0

.field public static final whitelist NETWORK_TYPE_ROAMING:I = 0x1

.field public static final whitelist PREFERRED_TRANSPORT_DYNAMIC_UDP_TCP:I = 0x2

.field public static final whitelist PREFERRED_TRANSPORT_TCP:I = 0x1

.field public static final whitelist PREFERRED_TRANSPORT_TLS:I = 0x3

.field public static final whitelist PREFERRED_TRANSPORT_UDP:I = 0x0

.field public static final whitelist REQUEST_URI_FORMAT_SIP:I = 0x1

.field public static final whitelist REQUEST_URI_FORMAT_TEL:I = 0x0

.field public static final whitelist RTCP_INACTIVITY_ON_CONNECTED:I = 0x1

.field public static final whitelist RTCP_INACTIVITY_ON_HOLD:I = 0x0

.field public static final whitelist RTP_INACTIVITY_ON_CONNECTED:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Ims;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 5670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .locals 24

    .line 5673
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 5674
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "ims.wifi_off_deferring_time_millis_int"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5675
    const-string/jumbo v1, "ims.ims_single_registration_required_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5676
    const-string/jumbo v1, "ims.enable_presence_publish_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5677
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ims.publish_service_desc_feature_tag_map_override_string_array"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5679
    const-string/jumbo v1, "ims.enable_presence_capability_exchange_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5680
    const-string/jumbo v1, "ims.rcs_bulk_capability_exchange_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5681
    const-string/jumbo v1, "ims.enable_presence_group_subscribe_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5682
    const-string/jumbo v1, "ims.use_sip_uri_for_presence_subscribe_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5683
    const-string/jumbo v1, "ims.non_rcs_capabilities_cache_expiration_sec_int"

    const v3, 0x278d00

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5684
    const-string/jumbo v1, "ims.rcs_request_forbidden_by_sip_489_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5685
    const-string/jumbo v1, "ims.rcs_request_retry_interval_millis_long"

    const-wide/32 v3, 0x124f80

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 5686
    const-string v5, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg\""

    const-string v6, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

    const-string v7, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\""

    const-string v8, "+g.gsma.rcs.cpm.pager-large"

    const-string v9, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\""

    const-string v10, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer\""

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    const-string v12, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    const-string v13, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    const-string v14, "+g.gsma.callcomposer"

    const-string v15, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    const-string v16, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    const-string v17, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    const-string v18, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    const-string v19, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    const-string v20, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    const-string v21, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    const-string v22, "+g.gsma.rcs.botversion=\"#=1,#=2\""

    const-string v23, "+g.gsma.rcs.cpimext"

    filled-new-array/range {v5 .. v23}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ims.rcs_feature_tag_allowed_string_array"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5710
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v3, "ims.mmtel_requires_provisioning_bundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 5715
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v3, "ims.rcs_requires_provisioning_bundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 5718
    const-string/jumbo v1, "ims.gruu_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5719
    const-string/jumbo v1, "ims.sip_over_ipsec_enabled_bool"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5720
    const-string/jumbo v1, "ims.keep_pdn_up_in_no_vops_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5721
    const-string/jumbo v1, "ims.registration_event_package_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5723
    const-string/jumbo v1, "ims.sip_timer_t1_millis_int"

    const/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5724
    const-string/jumbo v1, "ims.sip_timer_t2_millis_int"

    const/16 v4, 0x3e80

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5725
    const-string/jumbo v1, "ims.sip_timer_t4_millis_int"

    const/16 v4, 0x4268

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5726
    const-string/jumbo v1, "ims.sip_timer_b_millis_int"

    const v4, 0x1f400

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5727
    const-string/jumbo v1, "ims.sip_timer_c_millis_int"

    const v5, 0x33450

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5728
    const-string/jumbo v1, "ims.sip_timer_d_millis_int"

    const v5, 0x1fbd0

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5729
    const-string/jumbo v1, "ims.sip_timer_f_millis_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5730
    const-string/jumbo v1, "ims.sip_timer_h_millis_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5731
    const-string/jumbo v1, "ims.sip_timer_j_millis_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5732
    const-string/jumbo v1, "ims.sip_server_port_number_int"

    const/16 v4, 0x13c4

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5733
    const-string/jumbo v1, "ims.request_uri_type_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5734
    const-string/jumbo v1, "ims.sip_preferred_transport_int"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5735
    const-string/jumbo v1, "ims.ipv4_sip_mtu_size_cellular_int"

    const/16 v5, 0x5dc

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5736
    const-string/jumbo v1, "ims.ipv6_sip_mtu_size_cellular_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5737
    const-string/jumbo v1, "ims.registration_expiry_timer_sec_int"

    const v5, 0x927c0

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5738
    const-string/jumbo v1, "ims.registration_retry_base_timer_millis_int"

    const/16 v6, 0x7530

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5739
    const-string/jumbo v1, "ims.registration_retry_max_timer_millis_int"

    const v6, 0x1b7740

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5740
    const-string/jumbo v1, "ims.registration_subscribe_expiry_timer_sec_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5742
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const-string/jumbo v5, "ims.ipsec_authentication_algorithms_int_array"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5748
    const/4 v1, 0x3

    new-array v5, v1, [I

    fill-array-data v5, :array_1

    const-string/jumbo v6, "ims.ipsec_encryption_algorithms_int_array"

    invoke-virtual {v0, v6, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5755
    new-array v5, v2, [I

    const-string/jumbo v6, "ims.ims_pdn_enabled_in_no_vops_support_int_array"

    invoke-virtual {v0, v6, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5759
    new-array v5, v3, [I

    aput v4, v5, v2

    const-string/jumbo v6, "ims.geolocation_pidf_in_sip_register_support_int_array"

    invoke-virtual {v0, v6, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5764
    new-array v3, v3, [I

    aput v4, v3, v2

    const-string/jumbo v2, "ims.geolocation_pidf_in_sip_invite_support_int_array"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5769
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const-string/jumbo v2, "ims.supported_rats_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5777
    const-string/jumbo v1, "ims.phone_context_domain_name_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5778
    const-string/jumbo v1, "ims.ims_user_agent_string"

    const-string v2, "#MANUFACTURER#_#MODEL#_Android#AV#_#BUILD#"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x3
        0x5
    .end array-data
.end method
