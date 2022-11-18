.class public final Landroid/hardware/hdmi/HdmiControlManager;
.super Ljava/lang/Object;
.source "HdmiControlManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;,
        Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;,
        Landroid/hardware/hdmi/HdmiControlManager$CecSettingSad;,
        Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;,
        Landroid/hardware/hdmi/HdmiControlManager$SadPresenceInQuery;,
        Landroid/hardware/hdmi/HdmiControlManager$RcProfileSourceHandlesMenu;,
        Landroid/hardware/hdmi/HdmiControlManager$RcProfileTv;,
        Landroid/hardware/hdmi/HdmiControlManager$SetMenuLanguage;,
        Landroid/hardware/hdmi/HdmiControlManager$TvSendStandbyOnSleep;,
        Landroid/hardware/hdmi/HdmiControlManager$TvWakeOnOneTouchPlay;,
        Landroid/hardware/hdmi/HdmiControlManager$VolumeControl;,
        Landroid/hardware/hdmi/HdmiControlManager$SystemAudioModeMuting;,
        Landroid/hardware/hdmi/HdmiControlManager$SystemAudioControl;,
        Landroid/hardware/hdmi/HdmiControlManager$ActiveSourceLostBehavior;,
        Landroid/hardware/hdmi/HdmiControlManager$PowerControlMode;,
        Landroid/hardware/hdmi/HdmiControlManager$RoutingControl;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVersion;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiCecControl;,
        Landroid/hardware/hdmi/HdmiControlManager$ControlCallbackResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_OSD_MESSAGE:Ljava/lang/String; = "android.hardware.hdmi.action.OSD_MESSAGE"

.field public static final whitelist AVR_VOLUME_MUTED:I = 0x65

.field public static final whitelist CEC_SETTING_NAME_HDMI_CEC_ENABLED:Ljava/lang/String; = "hdmi_cec_enabled"

.field public static final whitelist CEC_SETTING_NAME_HDMI_CEC_VERSION:Ljava/lang/String; = "hdmi_cec_version"

.field public static final whitelist CEC_SETTING_NAME_POWER_CONTROL_MODE:Ljava/lang/String; = "power_control_mode"

.field public static final whitelist CEC_SETTING_NAME_POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST:Ljava/lang/String; = "power_state_change_on_active_source_lost"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_AAC:Ljava/lang/String; = "query_sad_aac"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_ATRAC:Ljava/lang/String; = "query_sad_atrac"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DD:Ljava/lang/String; = "query_sad_dd"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DDP:Ljava/lang/String; = "query_sad_ddp"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DST:Ljava/lang/String; = "query_sad_dst"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DTS:Ljava/lang/String; = "query_sad_dts"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DTSHD:Ljava/lang/String; = "query_sad_dtshd"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_LPCM:Ljava/lang/String; = "query_sad_lpcm"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MAX:Ljava/lang/String; = "query_sad_max"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MP3:Ljava/lang/String; = "query_sad_mp3"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MPEG1:Ljava/lang/String; = "query_sad_mpeg1"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MPEG2:Ljava/lang/String; = "query_sad_mpeg2"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_ONEBITAUDIO:Ljava/lang/String; = "query_sad_onebitaudio"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_TRUEHD:Ljava/lang/String; = "query_sad_truehd"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_WMAPRO:Ljava/lang/String; = "query_sad_wmapro"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_CONTENTS_MENU:Ljava/lang/String; = "rc_profile_source_handles_contents_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_MEDIA_CONTEXT_SENSITIVE_MENU:Ljava/lang/String; = "rc_profile_source_handles_media_context_sensitive_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_ROOT_MENU:Ljava/lang/String; = "rc_profile_source_handles_root_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_SETUP_MENU:Ljava/lang/String; = "rc_profile_source_handles_setup_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_TOP_MENU:Ljava/lang/String; = "rc_profile_source_handles_top_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_TV:Ljava/lang/String; = "rc_profile_tv"

.field public static final whitelist CEC_SETTING_NAME_ROUTING_CONTROL:Ljava/lang/String; = "routing_control"

.field public static final blacklist CEC_SETTING_NAME_SET_MENU_LANGUAGE:Ljava/lang/String; = "set_menu_language"

.field public static final whitelist CEC_SETTING_NAME_SYSTEM_AUDIO_CONTROL:Ljava/lang/String; = "system_audio_control"

.field public static final whitelist CEC_SETTING_NAME_SYSTEM_AUDIO_MODE_MUTING:Ljava/lang/String; = "system_audio_mode_muting"

.field public static final whitelist CEC_SETTING_NAME_TV_SEND_STANDBY_ON_SLEEP:Ljava/lang/String; = "tv_send_standby_on_sleep"

.field public static final whitelist CEC_SETTING_NAME_TV_WAKE_ON_ONE_TOUCH_PLAY:Ljava/lang/String; = "tv_wake_on_one_touch_play"

.field public static final whitelist CEC_SETTING_NAME_VOLUME_CONTROL_MODE:Ljava/lang/String; = "volume_control_enabled"

.field public static final whitelist CLEAR_TIMER_STATUS_CEC_DISABLE:I = 0xa2

.field public static final whitelist CLEAR_TIMER_STATUS_CHECK_RECORDER_CONNECTION:I = 0xa0

.field public static final whitelist CLEAR_TIMER_STATUS_FAIL_TO_CLEAR_SELECTED_SOURCE:I = 0xa1

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_CLEARED:I = 0x80

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_INFO_AVAILABLE:I = 0x2

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_MATCHING:I = 0x1

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_RECORDING:I = 0x0

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_SETTING:I = 0x1

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_STANDBY:I = 0x3

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_START:I = 0x0

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_WAKEUP:I = 0x2

.field public static final whitelist DEVICE_EVENT_ADD_DEVICE:I = 0x1

.field public static final whitelist DEVICE_EVENT_REMOVE_DEVICE:I = 0x2

.field public static final whitelist DEVICE_EVENT_UPDATE_DEVICE:I = 0x3

.field public static final blacklist EXTRA_LOCALE:Ljava/lang/String; = "android.hardware.hdmi.extra.LOCALE"

.field public static final whitelist EXTRA_MESSAGE_EXTRA_PARAM1:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

.field public static final whitelist EXTRA_MESSAGE_ID:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_ID"

.field public static final whitelist HDMI_CEC_CONTROL_DISABLED:I = 0x0

.field public static final whitelist HDMI_CEC_CONTROL_ENABLED:I = 0x1

.field public static final whitelist HDMI_CEC_VERSION_1_4_B:I = 0x5

.field public static final whitelist HDMI_CEC_VERSION_2_0:I = 0x6

.field private static final blacklist INVALID_PHYSICAL_ADDRESS:I = 0xffff

.field public static final whitelist ONE_TOUCH_RECORD_ALREADY_RECORDING:I = 0x12

.field public static final whitelist ONE_TOUCH_RECORD_CEC_DISABLED:I = 0x33

.field public static final whitelist ONE_TOUCH_RECORD_CHECK_RECORDER_CONNECTION:I = 0x31

.field public static final whitelist ONE_TOUCH_RECORD_DISALLOW_TO_COPY:I = 0xd

.field public static final whitelist ONE_TOUCH_RECORD_DISALLOW_TO_FUTHER_COPIES:I = 0xe

.field public static final whitelist ONE_TOUCH_RECORD_FAIL_TO_RECORD_DISPLAYED_SCREEN:I = 0x32

.field public static final whitelist ONE_TOUCH_RECORD_INVALID_EXTERNAL_PHYSICAL_ADDRESS:I = 0xa

.field public static final whitelist ONE_TOUCH_RECORD_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x9

.field public static final whitelist ONE_TOUCH_RECORD_MEDIA_PROBLEM:I = 0x15

.field public static final whitelist ONE_TOUCH_RECORD_MEDIA_PROTECTED:I = 0x13

.field public static final whitelist ONE_TOUCH_RECORD_NOT_ENOUGH_SPACE:I = 0x16

.field public static final whitelist ONE_TOUCH_RECORD_NO_MEDIA:I = 0x10

.field public static final whitelist ONE_TOUCH_RECORD_NO_OR_INSUFFICIENT_CA_ENTITLEMENTS:I = 0xc

.field public static final whitelist ONE_TOUCH_RECORD_NO_SOURCE_SIGNAL:I = 0x14

.field public static final whitelist ONE_TOUCH_RECORD_OTHER_REASON:I = 0x1f

.field public static final whitelist ONE_TOUCH_RECORD_PARENT_LOCK_ON:I = 0x17

.field public static final whitelist ONE_TOUCH_RECORD_PLAYING:I = 0x11

.field public static final whitelist ONE_TOUCH_RECORD_PREVIOUS_RECORDING_IN_PROGRESS:I = 0x30

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_ALREADY_TERMINATED:I = 0x1b

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_ANALOGUE_SERVICE:I = 0x3

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_CURRENTLY_SELECTED_SOURCE:I = 0x1

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_DIGITAL_SERVICE:I = 0x2

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_EXTERNAL_INPUT:I = 0x4

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_TERMINATED_NORMALLY:I = 0x1a

.field public static final whitelist ONE_TOUCH_RECORD_UNABLE_ANALOGUE_SERVICE:I = 0x6

.field public static final whitelist ONE_TOUCH_RECORD_UNABLE_DIGITAL_SERVICE:I = 0x5

.field public static final whitelist ONE_TOUCH_RECORD_UNABLE_SELECTED_SERVICE:I = 0x7

.field public static final whitelist ONE_TOUCH_RECORD_UNSUPPORTED_CA:I = 0xb

.field public static final whitelist OSD_MESSAGE_ARC_CONNECTED_INVALID_PORT:I = 0x1

.field public static final whitelist OSD_MESSAGE_AVR_VOLUME_CHANGED:I = 0x2

.field public static final whitelist POWER_CONTROL_MODE_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final whitelist POWER_CONTROL_MODE_NONE:Ljava/lang/String; = "none"

.field public static final whitelist POWER_CONTROL_MODE_TV:Ljava/lang/String; = "to_tv"

.field public static final whitelist POWER_CONTROL_MODE_TV_AND_AUDIO_SYSTEM:Ljava/lang/String; = "to_tv_and_audio_system"

.field public static final whitelist POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST_NONE:Ljava/lang/String; = "none"

.field public static final whitelist POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST_STANDBY_NOW:Ljava/lang/String; = "standby_now"

.field public static final whitelist POWER_STATUS_ON:I = 0x0

.field public static final whitelist POWER_STATUS_STANDBY:I = 0x1

.field public static final whitelist POWER_STATUS_TRANSIENT_TO_ON:I = 0x2

.field public static final whitelist POWER_STATUS_TRANSIENT_TO_STANDBY:I = 0x3

.field public static final whitelist POWER_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist QUERY_SAD_DISABLED:I = 0x0

.field public static final whitelist QUERY_SAD_ENABLED:I = 0x1

.field public static final blacklist RC_PROFILE_SOURCE_MENU_HANDLED:I = 0x1

.field public static final blacklist RC_PROFILE_SOURCE_MENU_NOT_HANDLED:I = 0x0

.field public static final blacklist RC_PROFILE_TV_FOUR:I = 0xe

.field public static final blacklist RC_PROFILE_TV_NONE:I = 0x0

.field public static final blacklist RC_PROFILE_TV_ONE:I = 0x2

.field public static final blacklist RC_PROFILE_TV_THREE:I = 0xa

.field public static final blacklist RC_PROFILE_TV_TWO:I = 0x6

.field public static final whitelist RESULT_ALREADY_IN_PROGRESS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_COMMUNICATION_FAILED:I = 0x7

.field public static final whitelist RESULT_EXCEPTION:I = 0x5

.field public static final whitelist RESULT_INCORRECT_MODE:I = 0x6

.field public static final whitelist RESULT_SOURCE_NOT_AVAILABLE:I = 0x2

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field public static final whitelist RESULT_TARGET_NOT_AVAILABLE:I = 0x3

.field public static final whitelist RESULT_TIMEOUT:I = 0x1

.field public static final whitelist ROUTING_CONTROL_DISABLED:I = 0x0

.field public static final whitelist ROUTING_CONTROL_ENABLED:I = 0x1

.field public static final blacklist SET_MENU_LANGUAGE_DISABLED:I = 0x0

.field public static final blacklist SET_MENU_LANGUAGE_ENABLED:I = 0x1

.field public static final whitelist SYSTEM_AUDIO_CONTROL_DISABLED:I = 0x0

.field public static final whitelist SYSTEM_AUDIO_CONTROL_ENABLED:I = 0x1

.field public static final whitelist SYSTEM_AUDIO_MODE_MUTING_DISABLED:I = 0x0

.field public static final whitelist SYSTEM_AUDIO_MODE_MUTING_ENABLED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiControlManager"

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_CEC_DISABLED:I = 0x3

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_CHECK_RECORDER_CONNECTION:I = 0x1

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_FAIL_TO_RECORD_SELECTED_SOURCE:I = 0x2

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_NO_ERROR:I = 0x0

.field public static final whitelist TIMER_RECORDING_TYPE_ANALOGUE:I = 0x2

.field public static final whitelist TIMER_RECORDING_TYPE_DIGITAL:I = 0x1

.field public static final whitelist TIMER_RECORDING_TYPE_EXTERNAL:I = 0x3

.field public static final whitelist TIMER_STATUS_MEDIA_INFO_NOT_PRESENT:I = 0x2

.field public static final whitelist TIMER_STATUS_MEDIA_INFO_PRESENT_NOT_PROTECTED:I = 0x0

.field public static final whitelist TIMER_STATUS_MEDIA_INFO_PRESENT_PROTECTED:I = 0x1

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_CA_NOT_SUPPORTED:I = 0x6

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_CLOCK_FAILURE:I = 0xa

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_DATE_OUT_OF_RANGE:I = 0x2

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_DUPLICATED:I = 0xe

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PHYSICAL_NUMBER:I = 0x5

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x4

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_INVALID_SEQUENCE:I = 0x3

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_NO_CA_ENTITLEMENTS:I = 0x7

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_NO_FREE_TIME:I = 0x1

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_PARENTAL_LOCK_ON:I = 0x9

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_UNSUPPORTED_RESOLUTION:I = 0x8

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_ENOUGH_SPACE:I = 0x8

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_MIGHT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_NOT_ENOUGH_SPACE:I = 0x9

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_NO_MEDIA_INFO:I = 0xa

.field public static final whitelist TV_SEND_STANDBY_ON_SLEEP_DISABLED:I = 0x0

.field public static final whitelist TV_SEND_STANDBY_ON_SLEEP_ENABLED:I = 0x1

.field public static final whitelist TV_WAKE_ON_ONE_TOUCH_PLAY_DISABLED:I = 0x0

.field public static final whitelist TV_WAKE_ON_ONE_TOUCH_PLAY_ENABLED:I = 0x1

.field public static final whitelist VOLUME_CONTROL_DISABLED:I = 0x0

.field public static final whitelist VOLUME_CONTROL_ENABLED:I = 0x1


# instance fields
.field private final blacklist mCecSettingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;",
            "Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHasAudioSystemDevice:Z

.field private final greylist-max-o mHasPlaybackDevice:Z

.field private final blacklist mHasSwitchDevice:Z

.field private final greylist-max-o mHasTvDevice:Z

.field private final blacklist mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;",
            "Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;",
            "Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHotplugEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;",
            "Landroid/hardware/hdmi/IHdmiHotplugEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsSwitchDevice:Z

.field private final greylist-max-o mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 3
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    .line 1547
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    .line 1564
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    .line 1873
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    .line 1083
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "types":[I
    if-eqz p1, :cond_0

    .line 1087
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getSupportedTypes()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1090
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1092
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    .line 1093
    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    .line 1094
    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasAudioSystemDevice:Z

    .line 1095
    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasSwitchDevice:Z

    .line 1096
    invoke-static {}, Landroid/sysprop/HdmiProperties;->is_switch()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mIsSwitchDevice:Z

    .line 1097
    return-void
.end method

.method private blacklist addCecSettingChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    .line 1881
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1882
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return-void

    .line 1885
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    .line 1886
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    const-string v0, "listener is already registered"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return-void

    .line 1890
    :cond_1
    nop

    .line 1891
    invoke-direct {p0, p2, p3}, Landroid/hardware/hdmi/HdmiControlManager;->getCecSettingChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v0

    .line 1892
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1893
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    :cond_2
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    nop

    .line 1901
    return-void

    .line 1898
    :catch_0
    move-exception v1

    .line 1899
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist createHdmiCecVolumeControlFeatureListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    .line 1848
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$3;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V

    return-object v0
.end method

.method private blacklist getCecSettingChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    .line 1926
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$4;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    return-object v0
.end method

.method private blacklist getHdmiControlStatusChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;

    .line 1771
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$2;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V

    return-object v0
.end method

.method private blacklist getHotplugEventListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .line 1675
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    return-object v0
.end method

.method private static greylist-max-o hasDeviceType([II)Z
    .locals 4
    .param p0, "types"    # [I
    .param p1, "type"    # I

    .line 1100
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1101
    return v0

    .line 1103
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 1104
    .local v3, "t":I
    if-ne v3, p1, :cond_1

    .line 1105
    const/4 v0, 0x1

    return v0

    .line 1103
    .end local v3    # "t":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    :cond_2
    return v0
.end method

.method private blacklist removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    .line 1906
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1907
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    return-void

    .line 1911
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    :goto_0
    nop

    .line 1913
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    if-nez v0, :cond_2

    .line 1914
    const-string/jumbo v2, "tried to remove not-registered listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    return-void

    .line 1918
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    nop

    .line 1922
    return-void

    .line 1919
    :catch_0
    move-exception v1

    .line 1920
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public whitelist addHdmiCecEnabledChangeListener(Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    .line 2058
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiCecEnabledChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    .line 2059
    return-void
.end method

.method public whitelist addHdmiCecEnabledChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    .line 2071
    const-string v0, "hdmi_cec_enabled"

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->addCecSettingChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    .line 2072
    return-void
.end method

.method public blacklist addHdmiCecVolumeControlFeatureListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    .line 1801
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1802
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    const-string v0, "listener is already registered"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    return-void

    .line 1809
    :cond_1
    nop

    .line 1810
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->createHdmiCecVolumeControlFeatureListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v0

    .line 1811
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    nop

    .line 1817
    return-void

    .line 1814
    :catch_0
    move-exception v1

    .line 1815
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;

    .line 1707
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiControlStatusChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V

    .line 1708
    return-void
.end method

.method public blacklist addHdmiControlStatusChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;

    .line 1725
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1726
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return-void

    .line 1729
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    const-string v0, "listener is already registered"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return-void

    .line 1733
    :cond_1
    nop

    .line 1734
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->getHdmiControlStatusChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v0

    .line 1735
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    nop

    .line 1741
    return-void

    .line 1738
    :catch_0
    move-exception v1

    .line 1739
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist addHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .line 1617
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHotplugEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    .line 1618
    return-void
.end method

.method public whitelist addHotplugEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .line 1632
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1633
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    const-string v0, "listener is already registered"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return-void

    .line 1640
    :cond_1
    nop

    .line 1641
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v0

    .line 1642
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    nop

    .line 1648
    return-void

    .line 1645
    :catch_0
    move-exception v1

    .line 1646
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAllowedCecSettingIntValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1995
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2000
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object v0

    .line 2001
    .local v0, "allowedValues":[I
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2002
    .end local v0    # "allowedValues":[I
    :catch_0
    move-exception v0

    .line 2003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1996
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1972
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 1977
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;
    .locals 1

    .line 1185
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiAudioSystemClient;

    return-object v0
.end method

.method public whitelist getClient(I)Landroid/hardware/hdmi/HdmiClient;
    .locals 3
    .param p1, "type"    # I

    .line 1123
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1124
    return-object v1

    .line 1126
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1137
    :pswitch_0
    return-object v1

    .line 1134
    :pswitch_1
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasSwitchDevice:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mIsSwitchDevice:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1135
    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Landroid/hardware/hdmi/HdmiSwitchClient;

    invoke-direct {v1, v0}, Landroid/hardware/hdmi/HdmiSwitchClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 1134
    :goto_1
    return-object v1

    .line 1132
    :pswitch_2
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasAudioSystemDevice:Z

    if-eqz v2, :cond_3

    new-instance v1, Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-direct {v1, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    :cond_3
    return-object v1

    .line 1130
    :pswitch_3
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    if-eqz v2, :cond_4

    new-instance v1, Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-direct {v1, v0}, Landroid/hardware/hdmi/HdmiPlaybackClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    :cond_4
    return-object v1

    .line 1128
    :pswitch_4
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    if-eqz v2, :cond_5

    new-instance v1, Landroid/hardware/hdmi/HdmiTvClient;

    invoke-direct {v1, v0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    :cond_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1215
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getConnectedDevicesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1228
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHdmiCecEnabled()I
    .locals 2

    .line 2034
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2039
    :try_start_0
    const-string v1, "hdmi_cec_enabled"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2035
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHdmiCecVersion()I
    .locals 2

    .line 2114
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2119
    :try_start_0
    const-string v1, "hdmi_cec_version"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHdmiCecVolumeControlEnabled()I
    .locals 2

    .line 1440
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string/jumbo v1, "volume_control_enabled"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPhysicalAddress()I
    .locals 2

    .line 1468
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getPhysicalAddress()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "e":Landroid/os/RemoteException;
    const v1, 0xffff

    return v1
.end method

.method public whitelist getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;
    .locals 1

    .line 1153
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    return-object v0
.end method

.method public whitelist getPowerControlMode()Ljava/lang/String;
    .locals 2

    .line 2206
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2211
    :try_start_0
    const-string v1, "power_control_mode"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPowerStateChangeOnActiveSourceLost()Ljava/lang/String;
    .locals 2

    .line 2250
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2255
    :try_start_0
    const-string v1, "power_state_change_on_active_source_lost"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2251
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRoutingControl()I
    .locals 2

    .line 2162
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2167
    :try_start_0
    const-string v1, "routing_control"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSadPresenceInQuery(Ljava/lang/String;)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .line 2529
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2534
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2535
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2530
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSwitchClient()Landroid/hardware/hdmi/HdmiSwitchClient;
    .locals 1

    .line 1200
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiSwitchClient;

    return-object v0
.end method

.method public whitelist getSystemAudioControl()I
    .locals 2

    .line 2301
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2306
    :try_start_0
    const-string v1, "system_audio_control"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2307
    :catch_0
    move-exception v0

    .line 2308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSystemAudioMode()Z
    .locals 2

    .line 1453
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getSystemAudioMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemAudioModeMuting()I
    .locals 2

    .line 2343
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2348
    :try_start_0
    const-string v1, "system_audio_mode_muting"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2344
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTvClient()Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1

    .line 1168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method public whitelist getTvSendStandbyOnSleep()I
    .locals 2

    .line 2431
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2436
    :try_start_0
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2437
    :catch_0
    move-exception v0

    .line 2438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTvWakeOnOneTouchPlay()I
    .locals 2

    .line 2387
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2392
    :try_start_0
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2388
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUserCecSettings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1949
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 1954
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getUserCecSettings()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1955
    :catch_0
    move-exception v0

    .line 1956
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1950
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isDeviceConnected(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .locals 5
    .param p1, "targetDevice"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1484
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiControlManager;->getPhysicalAddress()I

    move-result v0

    .line 1486
    .local v0, "physicalAddress":I
    const v1, 0xffff

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1487
    return v2

    .line 1489
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    .line 1490
    .local v3, "targetPhysicalAddress":I
    if-ne v3, v1, :cond_1

    .line 1491
    return v2

    .line 1493
    :cond_1
    invoke-static {v3, v0}, Landroid/hardware/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public greylist isRemoteDeviceConnected(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .locals 5
    .param p1, "targetDevice"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiControlManager;->getPhysicalAddress()I

    move-result v0

    .line 1505
    .local v0, "physicalAddress":I
    const v1, 0xffff

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1506
    return v2

    .line 1508
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    .line 1509
    .local v3, "targetPhysicalAddress":I
    if-ne v3, v1, :cond_1

    .line 1510
    return v2

    .line 1512
    :cond_1
    invoke-static {v3, v0}, Landroid/hardware/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public whitelist powerOffDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1243
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1246
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    .line 1245
    invoke-interface {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->powerOffRemoteDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    nop

    .line 1250
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist powerOffRemoteDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1261
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    .line 1260
    invoke-interface {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->powerOffRemoteDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    nop

    .line 1265
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist powerOnDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1281
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    .line 1280
    invoke-interface {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->powerOnRemoteDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    nop

    .line 1285
    return-void

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist powerOnRemoteDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1296
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    .line 1295
    invoke-interface {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->powerOnRemoteDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    nop

    .line 1300
    return-void

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeHdmiCecEnabledChangeListener(Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    .line 2080
    const-string v0, "hdmi_cec_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    .line 2081
    return-void
.end method

.method public blacklist removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    .line 1829
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1830
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    return-void

    .line 1833
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    .line 1834
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    .line 1835
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    if-nez v0, :cond_1

    .line 1836
    const-string/jumbo v2, "tried to remove not-registered listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    return-void

    .line 1840
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    nop

    .line 1844
    return-void

    .line 1841
    :catch_0
    move-exception v1

    .line 1842
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;

    .line 1752
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1753
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return-void

    .line 1756
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    .line 1757
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 1758
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    if-nez v0, :cond_1

    .line 1759
    const-string/jumbo v2, "tried to remove not-registered listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return-void

    .line 1763
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    nop

    .line 1767
    return-void

    .line 1764
    :catch_0
    move-exception v1

    .line 1765
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .line 1657
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_0

    .line 1658
    const-string v0, "HdmiControlService is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-void

    .line 1661
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1662
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    if-nez v0, :cond_1

    .line 1663
    const-string/jumbo v2, "tried to remove not-registered listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-void

    .line 1667
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    nop

    .line 1671
    return-void

    .line 1668
    :catch_0
    move-exception v1

    .line 1669
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist requestRemoteDeviceToBecomeActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->askRemoteDeviceToBecomeActiveSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    nop

    .line 1334
    return-void

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1314
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->askRemoteDeviceToBecomeActiveSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    nop

    .line 1320
    return-void

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setHdmiCecEnabled(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2014
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2019
    :try_start_0
    const-string v1, "hdmi_cec_enabled"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    nop

    .line 2023
    return-void

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2015
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHdmiCecVersion(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2092
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2097
    :try_start_0
    const-string v1, "hdmi_cec_version"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    nop

    .line 2101
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2093
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHdmiCecVolumeControlEnabled(I)V
    .locals 2
    .param p1, "hdmiCecVolumeControlEnabled"    # I

    .line 1424
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string/jumbo v1, "volume_control_enabled"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    nop

    .line 1429
    return-void

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPowerControlMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2183
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2188
    :try_start_0
    const-string v1, "power_control_mode"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    nop

    .line 2192
    return-void

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPowerStateChangeOnActiveSourceLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2227
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2232
    :try_start_0
    const-string v1, "power_state_change_on_active_source_lost"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    nop

    .line 2237
    return-void

    .line 2234
    :catch_0
    move-exception v0

    .line 2235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2228
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRoutingControl(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2137
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2142
    :try_start_0
    const-string v1, "routing_control"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    nop

    .line 2146
    return-void

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSadPresenceInQuery(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 2463
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2468
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2471
    nop

    .line 2472
    return-void

    .line 2469
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2464
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSadsPresenceInQuery(Ljava/util/List;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2497
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_1

    .line 2502
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2503
    .local v1, "sad":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    .end local v1    # "sad":Ljava/lang/String;
    goto :goto_0

    .line 2507
    :cond_0
    nop

    .line 2508
    return-void

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2498
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStandbyMode(Z)V
    .locals 2
    .param p1, "isStandbyModeOn"    # Z

    .line 1345
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setStandbyMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    nop

    .line 1349
    return-void

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSystemAudioControl(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2275
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2280
    :try_start_0
    const-string v1, "system_audio_control"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    nop

    .line 2284
    return-void

    .line 2281
    :catch_0
    move-exception v0

    .line 2282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2276
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSystemAudioModeMuting(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2321
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2326
    :try_start_0
    const-string v1, "system_audio_mode_muting"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2329
    nop

    .line 2330
    return-void

    .line 2327
    :catch_0
    move-exception v0

    .line 2328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTvSendStandbyOnSleep(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2408
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2413
    :try_start_0
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    nop

    .line 2417
    return-void

    .line 2414
    :catch_0
    move-exception v0

    .line 2415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2409
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTvWakeOnOneTouchPlay(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2364
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_0

    .line 2369
    :try_start_0
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2372
    nop

    .line 2373
    return-void

    .line 2370
    :catch_0
    move-exception v0

    .line 2371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2365
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "HdmiControlManager"

    const-string v1, "HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist shouldHandleTvPowerKey()Z
    .locals 2

    .line 1375
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->shouldHandleTvPowerKey()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist toggleAndFollowTvPower()V
    .locals 2

    .line 1361
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->toggleAndFollowTvPower()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    nop

    .line 1365
    return-void

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
